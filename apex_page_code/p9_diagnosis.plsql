declare
  l_txt   varchar2(4000) := :P9_CUSTOMER_COMPLAINT;
  l_norm  varchar2(4000);
  l_q     varchar2(4000);
  l_qv    vector;
  l_model sw_vehicles.model%type;
  l_html  clob;
  l_n     pls_integer := 0;
  l_match number;
  w       varchar2(200);
  i       pls_integer := 1;
begin
  l_html := '<style>
.sw-sug{border:1px solid rgba(128,128,128,.3);border-left:4px solid #1565c0;border-radius:8px;padding:10px 12px;margin-bottom:10px}
.sw-sug h4{margin:0 0 6px;font-size:14px}
.sw-sug .m{float:right;font-weight:700;color:#1565c0}
.sw-sug p{margin:2px 0;font-size:13px}
.sw-sug small,.sw-why{opacity:.75;font-size:12px}
.sw-chip{display:inline-block;padding:1px 8px;margin:2px;border-radius:10px;background:rgba(21,101,192,.15);font-size:12px}
.sw-new{display:inline-block;padding:0 6px;border-radius:6px;background:#2e7d32;color:#fff;font-size:11px;margin-left:6px}
</style>';

  if trim(l_txt) is null then
    return l_html || '<p>Type the customer complaint. The assistant reads it, maps it to standard symptoms '
                  || 'and finds the most similar repairs this workshop already solved, using Oracle AI Vector Search '
                  || 'combined with Oracle Text.</p>';
  end if;

  l_norm := sw_pkg.normalize_text(l_txt);
  l_q    := nvl(sw_pkg.to_text_query(l_txt), '{zzqqxx}');
  l_qv   := sw_pkg.embed(l_txt);
  select max(model) into l_model from sw_vehicles where vehicle_id = :P9_VEHICLE_ID;

  l_html := l_html || '<p class="sw-why">Detected symptoms: ';
  loop
    w := regexp_substr(l_norm, '[^ ]+', 1, i);
    exit when w is null;
    l_html := l_html || '<span class="sw-chip">' || apex_escape.html(w) || '</span>';
    i := i + 1;
  end loop;
  l_html := l_html || '</p>';

  if l_qv is not null then
    for r in (
      select k.*,
             cast(round(100 * (1 - vector_distance(k.complaint_vec, l_qv, cosine))) as number) vec_pct,
             least(nvl(t.txt_score, 0), 100) txt_pct
      from   sw_repair_kb k
      left join (select kb_id, score(1) txt_score
                 from   sw_repair_kb
                 where  contains(complaint, l_q, 1) > 0) t
             on t.kb_id = k.kb_id
      order by 0.75 * (1 - vector_distance(k.complaint_vec, l_qv, cosine))
             + 0.25 * least(nvl(t.txt_score, 0), 100) / 100
             + case when k.model = l_model then 0.05 else 0 end desc,
             k.times_seen desc
      fetch first 3 rows only)
    loop
      l_match := least(99, round(0.75 * r.vec_pct + 0.25 * r.txt_pct
                                 + case when r.model = l_model then 5 else 0 end));
      exit when l_match < 30;
      l_n := l_n + 1;
      l_html := l_html || '<div class="sw-sug"><span class="m">' || l_match || '% match</span>'
        || '<h4>' || l_n || '. ' || apex_escape.html(r.root_cause)
        || case when r.source_job = 'Y' then '<span class="sw-new">learned from a job</span>' end || '</h4>'
        || '<p><b>Similar complaint:</b> ' || apex_escape.html(r.complaint) || ' <small>(' || apex_escape.html(r.model) || ')</small></p>'
        || '<p><b>Recommended fix:</b> ' || apex_escape.html(r.fix_action) || '</p>'
        || '<p><b>Parts:</b> ' || nvl(apex_escape.html(r.parts), '-')
        || ' &nbsp; <b>Labor:</b> ' || nvl(to_char(r.labor_hours), '-') || ' h'
        || ' &nbsp; <small>Seen ' || r.times_seen || ' times &middot; vector ' || r.vec_pct
        || '% &middot; keyword ' || round(r.txt_pct) || '%</small></p></div>';
    end loop;
  end if;

  if l_n = 0 then
    l_html := l_html || '<p>No similar past repair yet. When this job is delivered with a diagnosis and the work done, '
                     || 'the workshop knowledge base learns it automatically.</p>';
  end if;

  return l_html;
end;

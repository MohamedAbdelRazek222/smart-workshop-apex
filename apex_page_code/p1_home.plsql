declare
  l_html  clob;
  l_url   varchar2(4000);
  l_now   date := sw_pkg.local_now;
  l_hello varchar2(30);
  l_kb    number;
  l_auto  number;
  procedure kpi (p_val in varchar2, p_label in varchar2, p_icon in varchar2, p_grad in varchar2, p_num in number default null) is
  begin
    l_html := l_html || '<div class="swk" style="--c:' || p_grad || '"><span class="fa ' || p_icon || ' swk-i"></span>'
      || '<b' || case when p_num is not null then ' data-count="' || p_num || '"' end || '>' || p_val || '</b>'
      || '<span>' || p_label || '</span></div>';
  end;
  function initials (p_name in varchar2) return varchar2 is
  begin
    return upper(substr(p_name, 1, 1) || substr(regexp_substr(p_name, ' (\S)', 1, 1, null, 1), 1, 1));
  end;
begin
  l_hello := case when to_number(to_char(l_now, 'HH24')) < 12 then 'Good morning'
                  when to_number(to_char(l_now, 'HH24')) < 17 then 'Good afternoon' else 'Good evening' end;
  select count(*), count(case when source_job = 'Y' then 1 end) into l_kb, l_auto from sw_repair_kb;

  l_html := '<style>
.swh{display:flex;justify-content:space-between;align-items:flex-end;flex-wrap:wrap;gap:12px;padding:20px 22px;border-radius:10px;color:#fff;
  background:var(--sw-ink);border-left:6px solid var(--sw-accent);margin-bottom:16px;animation:swFadeUp .35s both}
.swh h1{margin:0;font-size:22px;font-weight:700}.swh p{margin:4px 0 0;color:#c9c4bb;font-size:13px}
.swh .ai{border:1px dashed #6b6f76;color:#e9e3d9;padding:7px 12px;border-radius:6px;font-size:12px}
.swh .ai .fa{color:var(--sw-accent)}
.swks{display:grid;grid-template-columns:repeat(auto-fit,minmax(160px,1fr));gap:12px;margin-bottom:16px}
.swk{position:relative;background:var(--sw-card);border:1px solid var(--sw-line);border-top:3px solid var(--c);border-radius:8px;padding:14px 16px;
  min-height:92px;transition:box-shadow .2s,transform .2s;animation:swFadeUp .35s both}
.swk:hover{box-shadow:var(--sw-shadow-hover);transform:translateY(-2px)}
.swk b{display:block;font-size:30px;font-weight:700;line-height:1.1;color:var(--sw-ink);font-family:"IBM Plex Mono",monospace}
.swk span{font-size:13px;color:var(--sw-muted)}
.swk .swk-i{position:absolute;right:12px;top:12px;width:30px;height:30px;border-radius:6px;display:flex;align-items:center;justify-content:center;
  font-size:14px;color:var(--c);background:color-mix(in srgb,var(--c) 12%,#fff)}
.swk:nth-child(2){animation-delay:.04s}.swk:nth-child(3){animation-delay:.08s}.swk:nth-child(4){animation-delay:.12s}.swk:nth-child(5){animation-delay:.16s}.swk:nth-child(6){animation-delay:.2s}
.swg{display:grid;grid-template-columns:2fr 1fr;gap:16px}@media(max-width:1000px){.swg{grid-template-columns:1fr}}
.swc{background:var(--sw-card);border:1px solid var(--sw-line);border-radius:10px;padding:16px;animation:swFadeUp .4s both}
.swc h3{margin:0 0 10px;font-size:15px;font-weight:600;display:flex;justify-content:space-between;align-items:baseline;border-bottom:1px solid var(--sw-line);padding-bottom:10px}
.swc h3 small{font-weight:400;color:var(--sw-muted);font-size:12px}
.swt{width:100%;border-collapse:collapse}.swt th{font-size:11px;text-transform:uppercase;letter-spacing:.06em;color:var(--sw-muted);text-align:left;padding:8px;font-weight:600}
.swt td{padding:10px 8px;border-top:1px dashed var(--sw-line);font-size:13px;vertical-align:middle}.swt tr:hover td{background:var(--sw-accent-soft)}
.swt a.job{font-weight:600;color:var(--sw-ink);text-decoration:none;font-family:"IBM Plex Mono",monospace;border-bottom:2px solid var(--sw-accent)}
.swt .who{display:flex;align-items:center}.swt small{color:var(--sw-muted)}
.late{color:var(--sw-red);font-weight:600}.late:before{content:"\25CF ";}
.swr{display:flex;align-items:center;justify-content:space-between;gap:8px;padding:10px 0;border-top:1px dashed var(--sw-line);font-size:13px}
.swr:first-of-type{border-top:0}.swr small{color:var(--sw-muted);display:block}
.swr .wa{color:#25803f;font-size:18px;text-decoration:none}.swr .wa:hover{color:#1c5e2e}
.due-OVERDUE{background:#f8e1de;color:var(--sw-red)}.due-DUE{background:#fbefd9;color:var(--sw-amber)}
.swm{margin-top:12px;padding:12px 14px;border-radius:8px;background:var(--sw-accent-soft);border:1px solid #f6d3bd;font-size:13px}
.swm b{font-size:20px;color:var(--sw-accent-dark);font-family:"IBM Plex Mono",monospace}
</style>';

  l_html := l_html || '<div class="swh"><div><h1>' || l_hello || ', ' || apex_escape.html(initcap(regexp_substr(:APP_USER, '^[^@.]+')))
    || '</h1><p>' || to_char(l_now, 'fmDay, DD Month YYYY') || ' &middot; here is the workshop right now</p></div>'
    || '<div class="ai"><span class="fa fa-magic"></span> AI diagnosis on &middot; ' || l_kb || ' solved repairs in memory</div></div>';

  l_html := l_html || '<div class="swks">';
  for r in (select count(case when status <> 'DELIVERED' then 1 end) open_jobs,
                   count(case when status = 'READY' then 1 end) ready_jobs,
                   count(case when status = 'WAITING_PARTS' then 1 end) parts_jobs,
                   count(case when late_yn = 'Y' then 1 end) late_jobs,
                   count(case when delivered_today_yn = 'Y' then 1 end) delivered_today
            from sw_job_cards_v)
  loop
    kpi(r.open_jobs, 'Cars in workshop', 'fa-car', '#2f5d8a', r.open_jobs);
    kpi(r.ready_jobs, 'Ready for pickup', 'fa-check-circle', '#2f7d4f', r.ready_jobs);
    kpi(r.parts_jobs, 'Waiting for parts', 'fa-cubes', '#a86a12', r.parts_jobs);
    kpi(r.late_jobs, 'Past promised time', 'fa-clock-o', '#b8352a', r.late_jobs);
    kpi(r.delivered_today, 'Delivered today', 'fa-flag-checkered', '#1c1f23', r.delivered_today);
  end loop;
  for f in (select round(avg(rating), 1) avg_r, count(*) n from sw_feedback) loop
    kpi(nvl(to_char(f.avg_r, 'FM0.0'), '-') || ' &#9733;', 'Customer rating (' || f.n || ')', 'fa-star', '#d9480f');
  end loop;
  l_html := l_html || '</div><div class="swg"><div class="swc"><h3>Live jobs <small>sorted by urgency</small></h3>'
    || '<table class="swt"><tr><th>Job</th><th>Vehicle</th><th>Technician</th><th>Status</th><th>Promised</th></tr>';

  for j in (select * from sw_job_cards_v where status <> 'DELIVERED' order by late_yn desc, promised_at) loop
    l_url := apex_page.get_url(p_page => 9, p_items => 'P9_JOB_CARD_ID', p_values => j.job_card_id);
    l_html := l_html || '<tr><td><a class="job" href="' || l_url || '">' || apex_escape.html(j.job_no) || '</a><br><small>'
      || apex_escape.html(j.customer_name) || '</small></td>'
      || '<td>' || apex_escape.html(j.model || ' ' || j.model_year) || '<br><span class="sw-plate">' || apex_escape.html(j.plate_no) || '</span></td>'
      || '<td><div class="who">' || case when j.technician_name is not null
           then '<span class="sw-avatar">' || initials(j.technician_name) || '</span>' || apex_escape.html(j.technician_name)
           else '<em>Unassigned</em>' end || '</div></td>'
      || '<td><span class="sw-pill sw-s-' || j.status || '">' || apex_escape.html(j.status_label) || '</span>'
      || '<div class="sw-bar" style="margin-top:6px"><i style="width:' || j.status_pct || '%"></i></div></td>'
      || '<td' || case when j.late_yn = 'Y' then ' class="late"' end || '>' || to_char(j.promised_at, 'DD-Mon HH:MI AM') || '</td></tr>';
  end loop;

  l_html := l_html || '</table></div><div class="swc"><h3>Service reminders <small>10,000 km / 6 months</small></h3>';
  for s in (select * from sw_service_due_v where due_status <> 'OK' order by due_status desc, next_due_km - mileage_km) loop
    l_html := l_html || '<div class="swr"><div><b>' || apex_escape.html(s.model || ' ' || s.model_year) || '</b> &middot; '
      || apex_escape.html(s.plate_no) || '<small>' || apex_escape.html(s.customer_name) || ' &middot; '
      || to_char(s.mileage_km, 'FM999G999') || ' / ' || to_char(s.next_due_km, 'FM999G999') || ' km</small></div>'
      || '<div><span class="sw-pill due-' || regexp_substr(s.due_status, '^\S+') || '">' || initcap(s.due_status) || '</span> '
      || '<a class="wa" target="_blank" title="Remind on WhatsApp" href="https://wa.me/2' || s.phone || '?text='
      || apex_util.url_encode('Hello ' || regexp_substr(s.customer_name, '^\S+') || ', your ' || s.model
         || ' (' || s.plate_no || ') is due for its periodic service. Reply to book a slot.')
      || '"><span class="fa fa-whatsapp"></span></a></div></div>';
  end loop;
  l_html := l_html || '<div class="swm"><b>' || l_kb || '</b> solved repairs in workshop memory<br>'
    || l_auto || ' learned automatically from delivered jobs</div></div></div>';

  l_html := l_html || '<script>
document.querySelectorAll(".swk b[data-count]").forEach(function(el){
  var t=+el.dataset.count,s=null;
  function step(ts){if(!s)s=ts;var p=Math.min((ts-s)/900,1);el.textContent=Math.round(t*(1-Math.pow(1-p,3)));if(p<1)requestAnimationFrame(step);}
  el.textContent="0";requestAnimationFrame(step);
});
</script>';
  return l_html;
end;

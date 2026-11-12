declare
  l_html clob;
  l_url  varchar2(4000);
  l_cnt  number;
begin
  l_html := '<style>
.kb{display:grid;grid-template-columns:repeat(7,minmax(210px,1fr));gap:12px;overflow-x:auto;padding-bottom:8px}
.kb-col{background:#efebe4;border-radius:8px;padding:10px;min-height:420px;transition:background .2s,box-shadow .2s;animation:swFadeUp .5s both}
.kb-col.over{background:var(--sw-accent-soft);box-shadow:inset 0 0 0 2px var(--sw-accent)}
.kb-h{display:flex;justify-content:space-between;align-items:center;font-weight:700;font-size:13px;margin:2px 4px 10px}
.kb-h .n{background:#fff;border-radius:99px;padding:1px 9px;font-size:12px;color:#334155}
.kb-card{background:var(--sw-card);border-radius:6px;padding:10px 12px;margin-bottom:10px;cursor:grab;border:1px solid rgba(15,23,42,.06);
  box-shadow:0 2px 6px rgba(15,23,42,.06);transition:transform .18s,box-shadow .18s;border-left:4px solid var(--c,#2f5d8a)}
.kb-card:hover{transform:translateY(-2px);box-shadow:0 6px 14px rgba(28,31,35,.10)}
.kb-card.drag{opacity:.45;transform:scale(.97)}
.kb-card a{font-weight:600;color:var(--sw-ink);text-decoration:none;font-size:12px;font-family:"IBM Plex Mono",monospace;border-bottom:2px solid var(--sw-accent)}
.kb-card p{margin:4px 0;font-size:12px;color:#475569;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden}
.kb-card .f{display:flex;justify-content:space-between;align-items:center;font-size:11px;color:#64748b;margin-top:6px}
.kb-card .lt{color:var(--sw-red);font-weight:700}
.kb-flash{animation:kbFlash .9s}
.kb-legend{display:flex;gap:14px;font-size:12px;color:var(--sw-muted);margin:0 0 12px}.kb-legend i{display:inline-block;width:10px;height:10px;border-radius:2px;margin-right:5px}
@keyframes kbFlash{0%{box-shadow:0 0 0 0 rgba(47,125,79,.55)}100%{box-shadow:0 0 0 14px rgba(47,125,79,0)}}
</style><div class="kb-legend">Drag a card to move the car to the next step &middot;
<span><i style="background:#2f5d8a"></i>Repair</span><span><i style="background:#2f7d4f"></i>Periodic</span>
<span><i style="background:#5e3d8a"></i>Warranty</span><span><i style="background:#d9480f"></i>Body</span></div><div class="kb">';

  for s in (select column_value st, rownum rn
            from table(sys.odcivarchar2list('RECEIVED','DIAGNOSING','WAITING_PARTS','IN_PROGRESS','QUALITY_CHECK','READY','DELIVERED')))
  loop
    select count(*) into l_cnt from sw_job_cards
    where status = s.st and (s.st <> 'DELIVERED' or delivered_at >= sw_pkg.local_now - 3);
    l_html := l_html || '<div class="kb-col" data-status="' || s.st || '" style="animation-delay:' || to_char(s.rn * 0.05, 'FM0.00') || 's">'
      || '<div class="kb-h"><span class="sw-pill sw-s-' || s.st || '">' || sw_pkg.status_label(s.st) || '</span><span class="n">'
      || l_cnt || '</span></div>';
    for j in (select * from sw_job_cards_v
              where status = s.st and (s.st <> 'DELIVERED' or delivered_at >= sw_pkg.local_now - 3)
              order by late_yn desc, promised_at)
    loop
      l_url := apex_page.get_url(p_page => 9, p_items => 'P9_JOB_CARD_ID', p_values => j.job_card_id);
      l_html := l_html || '<div class="kb-card" draggable="true" data-id="' || j.job_card_id || '" style="--c:'
        || case j.service_type when 'PERIODIC' then '#2f7d4f' when 'WARRANTY' then '#5e3d8a' when 'BODY' then '#d9480f' else '#2f5d8a' end || '">'
        || '<a href="' || l_url || '">' || apex_escape.html(j.job_no) || '</a> &middot; <b style="font-size:12px">'
        || apex_escape.html(j.model) || '</b><p>' || apex_escape.html(j.customer_complaint) || '</p>'
        || '<div class="f"><span>' || case when j.technician_name is not null
             then '<span class="sw-avatar" style="width:22px;height:22px;font-size:9px;margin-right:4px">'
                  || upper(substr(j.technician_name, 1, 1)) || '</span>' || apex_escape.html(regexp_substr(j.technician_name, '^\S+'))
             else 'Unassigned' end || '</span><span' || case when j.late_yn = 'Y' then ' class="lt"' end || '>'
        || to_char(j.promised_at, 'DD-Mon HH:MI') || '</span></div></div>';
    end loop;
    l_html := l_html || '</div>';
  end loop;

  l_html := l_html || '</div><script>
(function(){
  var dragged=null;
  document.querySelectorAll(".kb-card").forEach(function(c){
    c.addEventListener("dragstart",function(e){dragged=c;c.classList.add("drag");e.dataTransfer.effectAllowed="move";});
    c.addEventListener("dragend",function(){c.classList.remove("drag");});
  });
  function recount(){document.querySelectorAll(".kb-col").forEach(function(col){col.querySelector(".n").textContent=col.querySelectorAll(".kb-card").length;});}
  document.querySelectorAll(".kb-col").forEach(function(col){
    col.addEventListener("dragover",function(e){e.preventDefault();col.classList.add("over");});
    col.addEventListener("dragleave",function(){col.classList.remove("over");});
    col.addEventListener("drop",function(e){
      e.preventDefault();col.classList.remove("over");
      if(!dragged||dragged.parentNode===col)return;
      var from=dragged.parentNode,card=dragged,st=col.dataset.status;
      col.insertBefore(card,col.children[1]||null);recount();
      apex.server.process("SET_STATUS",{x01:card.dataset.id,x02:st}).then(function(){
        card.classList.add("kb-flash");
        apex.message.showPageSuccess(card.querySelector("a").textContent+" moved to "+col.querySelector(".sw-pill").textContent);
      },function(){
        from.appendChild(card);recount();
        apex.message.alert("Could not update the status. Please try again.");
      });
    });
  });
})();
</script>';
  return l_html;
end;

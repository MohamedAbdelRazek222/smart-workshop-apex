declare
  l_html   clob;
  l_found  boolean := false;
  l_done   boolean;
  l_cur    boolean;
  l_rating number;
begin
  l_html := '<style>
body .t-Body-content,.t-Body-main{background-color:var(--sw-bg) !important;
  background-image:linear-gradient(rgba(28,31,35,.04) 1px,transparent 1px),linear-gradient(90deg,rgba(28,31,35,.04) 1px,transparent 1px) !important;background-size:24px 24px !important}
.trk{max-width:540px;margin:24px auto;padding:24px;border-radius:10px;background:var(--sw-card);border:1px solid var(--sw-line);
  border-top:4px solid var(--sw-accent);box-shadow:0 10px 30px rgba(28,31,35,.08);animation:swFadeUp .4s both;font-size:15px}
.trk h2{margin:0;font-size:24px;font-weight:700}
.trk .sub{color:var(--sw-muted);margin:4px 0 16px}
.trk .car{display:flex;align-items:center;gap:12px;padding:12px 14px;border-radius:8px;color:#fff;background:var(--sw-ink);margin-bottom:16px}
.trk .car .fa{font-size:26px;color:var(--sw-accent)}.trk .car small{color:#c9c4bb;display:block;font-family:"IBM Plex Mono",monospace;letter-spacing:.05em}
.trk .st{font-size:19px;font-weight:700;margin:6px 0 8px}
.trk .bar{height:8px;border-radius:4px;background:#ece7df;overflow:hidden}
.trk .bar i{display:block;height:100%;border-radius:4px;background:var(--sw-green);animation:swGrow .9s ease-out both}
.trk .meta{display:grid;grid-template-columns:1fr 1fr;gap:10px;margin:16px 0}
.trk .meta div{border:1px dashed var(--sw-line);border-radius:8px;padding:10px 12px}
.trk .meta small{color:var(--sw-muted);display:block;font-size:12px}
.trk .meta b{font-family:"IBM Plex Mono",monospace;font-weight:600}
.trk ol{list-style:none;padding:0;margin:18px 0 8px}
.trk li{padding:8px 0 12px 28px;position:relative;border-left:2px solid #e4ded4;margin-left:8px;color:#a39e95}
.trk li:before{content:"";position:absolute;left:-8px;top:10px;width:14px;height:14px;border-radius:50%;background:#e4ded4;border:2px solid var(--sw-card)}
.trk li.done{color:var(--sw-ink);border-left-color:var(--sw-green)}.trk li.done:before{background:var(--sw-green)}
.trk li.cur:before{background:var(--sw-accent);animation:swPulse 1.8s infinite}.trk li.cur{font-weight:600;color:var(--sw-accent-dark)}
.trk li small{display:block;color:var(--sw-muted);font-weight:400;font-family:"IBM Plex Mono",monospace;font-size:11px}
.trk .ready{background:#e5f2ea;color:#1f5c38;padding:12px 14px;border-radius:8px;font-weight:600;border:1px solid #c9e3d3}
.rate{margin-top:16px;padding:16px;border-radius:8px;border:1px dashed var(--sw-line);text-align:center}
.stars{font-size:32px;letter-spacing:4px;cursor:pointer;user-select:none}
.stars span{color:#ddd6cb;transition:color .15s,transform .15s;display:inline-block}
.stars span.on{color:#e0a100}.stars span:hover{transform:scale(1.15)}
.rate textarea{width:100%;margin-top:10px;border-radius:6px;border:1px solid var(--sw-line);padding:10px;font:inherit;min-height:60px;background:#fff}
.rate button{margin-top:10px;border:0;border-radius:6px;padding:10px 22px;color:#fff;font-weight:600;cursor:pointer;background:var(--sw-accent)}
.rate button:hover{background:var(--sw-accent-dark)}
.trk .foot{color:#a39e95;font-size:12px;text-align:center;margin-top:14px}
</style><div class="trk">';

  for j in (select * from sw_job_cards_v where tracking_token = :P100_T) loop
    l_found := true;
    select max(rating) into l_rating from sw_feedback where job_card_id = j.job_card_id;

    l_html := l_html
      || '<h2>Hello ' || apex_escape.html(regexp_substr(j.customer_name, '^\S+')) || ' &#128075;</h2>'
      || '<div class="sub">Here is your car, live from the workshop.</div>'
      || '<div class="car"><span class="fa fa-car"></span><div><b>' || apex_escape.html(j.make || ' ' || j.model || ' ' || j.model_year)
      || '</b><small>' || apex_escape.html(j.plate_no) || ' &middot; JOB ' || apex_escape.html(j.job_no) || '</small></div></div>'
      || '<div class="st">' || apex_escape.html(j.status_label) || '</div>'
      || '<div class="bar"><i style="width:' || j.status_pct || '%"></i></div>';

    if j.status = 'READY' then
      l_html := l_html || '<p class="ready">&#9989; Your car is ready. You can pick it up any time during working hours.</p>';
    end if;

    l_html := l_html || '<div class="meta"><div><small>Expected ready</small><b>'
      || nvl(to_char(j.promised_at, 'Dy DD-Mon HH:MI AM'), '-') || '</b></div><div><small>Estimated cost</small><b>'
      || case when j.service_type = 'WARRANTY' then 'Covered by warranty' when j.estimated_cost is null then '-' else to_char(j.estimated_cost, 'FM999G999G990') || ' EGP' end || '</b></div></div><ol>';

    for s in (select column_value st,
                     (select max(l.changed_at) from sw_job_status_log l
                      where l.job_card_id = j.job_card_id and l.status = column_value) at_time
              from table(sys.odcivarchar2list('RECEIVED','DIAGNOSING','IN_PROGRESS','QUALITY_CHECK','READY','DELIVERED')))
    loop
      l_cur  := (s.st = j.status and j.status <> 'DELIVERED') or (j.status = 'WAITING_PARTS' and s.st = 'IN_PROGRESS');
      l_done := not l_cur and sw_pkg.status_pct(s.st) <= j.status_pct and not (s.st = 'DELIVERED' and j.status <> 'DELIVERED');
      l_html := l_html || '<li class="' || case when l_cur then 'cur' when l_done then 'done' end || '">'
        || apex_escape.html(case when l_cur and j.status = 'WAITING_PARTS' then 'Waiting for parts' else sw_pkg.status_label(s.st) end)
        || case when s.at_time is not null then '<small>' || to_char(s.at_time, 'DD-Mon HH:MI AM') || '</small>' end || '</li>';
    end loop;
    l_html := l_html || '</ol>';

    if j.status in ('READY', 'DELIVERED') then
      l_html := l_html || '<div class="rate" id="rate"><b>' || case when l_rating is null then 'How was your service?' else 'Thanks for rating us!' end
        || '</b><div class="stars" data-v="' || nvl(l_rating, 0) || '">';
      for k in 1 .. 5 loop
        l_html := l_html || '<span data-k="' || k || '"' || case when k <= nvl(l_rating, 0) then ' class="on"' end || '>&#9733;</span>';
      end loop;
      l_html := l_html || '</div><textarea id="rateTxt" placeholder="Anything we can do better? (optional)"></textarea>'
        || '<button type="button" id="rateBtn">Send rating</button></div>'
        || '<script>(function(){var box=document.querySelector(".stars"),v=+box.dataset.v;
function paint(n){box.querySelectorAll("span").forEach(function(s){s.classList.toggle("on",+s.dataset.k<=n);});}
box.querySelectorAll("span").forEach(function(s){s.onmouseenter=function(){paint(+s.dataset.k);};s.onclick=function(){v=+s.dataset.k;paint(v);};});
box.onmouseleave=function(){paint(v);};
document.getElementById("rateBtn").onclick=function(){if(!v){apex.message.alert("Please choose 1 to 5 stars.");return;}
apex.server.process("SAVE_FEEDBACK",{x01:' || apex_escape.js_literal(:P100_T, '"') || ',x02:v,x03:document.getElementById("rateTxt").value})
.then(function(){document.getElementById("rate").innerHTML="<b>Thank you! &#127881;</b><div class=\"stars\">"+"<span class=\"on\">&#9733;</span>".repeat(v)+"</div>";},
function(){apex.message.alert("Sorry, the rating could not be saved.");});};})();</script>';
    end if;
    l_html := l_html || '<div class="foot">Refreshes automatically every minute &middot; Last update '
      || to_char(sw_pkg.local_now, 'HH:MI AM') || '</div>';
  end loop;

  if not l_found then
    l_html := l_html || '<h2>Link not valid</h2><p class="sub">Please check the link sent by your service advisor.</p>';
  end if;

  return l_html || '</div>';
end;

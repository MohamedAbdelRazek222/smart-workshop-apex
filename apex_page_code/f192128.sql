prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.1'
,p_default_workspace_id=>13094955719442043966
,p_default_application_id=>192128
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TRAININGWORKSPACE22'
);
end;
/
 
prompt APPLICATION 192128 - Smart Workshop
--
-- Application Export:
--   Application:     192128
--   Name:            Smart Workshop
--   Date and Time:   00:40 Thursday November 12, 2026
--   Exported By:     MO878015@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     17
--       Items:                   49
--       Processes:               24
--       Regions:                 35
--       Buttons:                 31
--       Dynamic Actions:          7
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:              8
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   5
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.2.1
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_TRAININGWORKSPACE22')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Smart Workshop')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SMART-WORKSHOP')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'B2A7BD38093D3DD6C083834ABA5B3F97BC969F30ACF2796E9D14FB318EAE5403'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(13096229151970495580)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Smart Workshop'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Smart Workshop'
,p_created_on=>wwv_flow_imp.dz('20261111231317Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261112001532Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461356231318
,p_version_scn=>'15856418764341'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_short_name=>'Workshop'
,p_pwa_manifest_description=>'Smart Workshop - AI-assisted car service management built with Oracle APEX and Oracle AI Database.'
,p_pwa_manifest_display=>'fullscreen'
,p_pwa_manifest_orientation=>'any'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(13096230029315495582)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2471166859590295591
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(13096230832855495588)
,p_nav_bar_list_template_id=>2850970698196720012
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096224787115495571)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20261111231317Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231317Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096225012797495573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20261111231317Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231317Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096225373342495573)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20261111231317Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231317Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096225644640495574)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20261111231317Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096225951737495574)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096226141342495575)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096226483425495576)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096226766643495576)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096227005372495576)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096227330309495577)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096227685082495577)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG',
  'auto_ir_reset_button', 'Y')).to_clob
,p_version_scn=>'SH256:TC1mqO_n1hWvorH6XHVejgQzJq9VjDsWoq0rKaIQUNo'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096228084484495578)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096228395260495578)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(13096228681405495579)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(13096230832855495588)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:URZGA7zqhF71cSEwfoiWVXz_3M6DvhLFPTZZhYqDUDg'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111234010Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13102251920633656817)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Install App'
,p_static_id=>'action-a-pwa-install'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
,p_created_on=>wwv_flow_imp.dz('20261111234010Z')
,p_updated_on=>wwv_flow_imp.dz('20261111234010Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096464764898498488)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096465364703498489)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(13096464764898498488)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096465809262498490)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(13096464764898498488)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(13096230029315495582)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:97GOgaHdYrxYxZC0JCG6uyQiz0CKE-8_HsxywjdyjLg'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261112000012Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096248076998495634)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Customers'
,p_static_id=>'customers'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096246559285495630)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096328594164496919)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Job Cards'
,p_static_id=>'job-cards'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096355594982497408)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Job Status Log'
,p_static_id=>'job-status-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096371002111497904)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Repair Kb'
,p_static_id=>'repair-kb'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096281272458496448)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Technicians'
,p_static_id=>'technicians'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096262675250495930)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Vehicles'
,p_static_id=>'vehicles'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231321Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13107089144826776987)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Workshop Board'
,p_static_id=>'workshop-board'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-columns'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
,p_created_on=>wwv_flow_imp.dz('20261112000012Z')
,p_updated_on=>wwv_flow_imp.dz('20261112000012Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(13096459977881498479)
,p_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_version_scn=>'SH256:EIPtS4eWHHw4_xpj2Lj5psj8kJFmDwJLxFbSG6TrUuM'
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096460461170498481)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Customers'
,p_static_id=>'customers'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096461985158498482)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Job Cards'
,p_static_id=>'job-cards'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096462427029498483)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Job Status Log'
,p_static_id=>'job-status-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096462996137498483)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Repair Kb'
,p_static_id=>'repair-kb'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096461415784498482)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Technicians'
,p_static_id=>'technicians'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13096460915956498481)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Vehicles'
,p_static_id=>'vehicles'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000C9D494441547801EC9D6B6C14D715C7CF9DDDF58B8031E161084D78786D1E1198982440A22445E4D1AA45492B45F950D536288A88AA36915A456A3F34ADDA8FB4';
wwv_flow_imp.g_varchar2_table(2) := 'F0A13444019B4A559452A54D502251680581402010DB34018C4D31E165529B37F8B5BB37E7CC7A83DF78E7DE999DB97B4673667666E7DE73CEFFFCF6CECEEC7A6D014FAC8082020C908278DC148001620A9414608094E4E3C60C1033A0A40003A4241F37';
wwv_flow_imp.g_varchar2_table(3) := '6680980125051C03A4E4951B1BA30003644C29339308039419DD8DF1CA001953CACC24C20065467763BC3240C694323389304099D1DD18AFDE03340AE9CA361D1FFB60CDA9E28ADAA6D98B36352E2CDFDCBCACBCE6C4930B6A9ABE9F0D46B952CE943B69';
wwv_flow_imp.g_varchar2_table(4) := '405A9026A390CEF343320B9094A2A2A6710E8A55595EDBB4A1BCA6E9105A77BE15BAD603B10B7109CDD2B2EA41C88F01C4BF2C80F7B3C12857CA9972270D480BD284B441238DFE449A9176801A420627AC8777DE176D6E9AB4A8B669258AF0FBF2DAE61D';
wwv_flow_imp.g_varchar2_table(5) := '6897E3601D43B16A41C21A8CA4022D82C6F3D00A9036A4D1CBA41969471AA2ED28DF7CE277343ACF7FEB8B0943377567AF7700E12B45022C93125EC3547E89AF9C15B82E44E3594D81425B4B217E85C57C2D6C4596E1B650EB72F4ADD1E7E80F767264C5';
wwv_flow_imp.g_varchar2_table(6) := 'C64391F29AE617F155721C04FC131022349EDD51E01121C4367C3B700C47FAD5A4BD3B6E6EF7EA2A400BB734DE13CF29DC0F20DF4497A5683C7BA28028C391FEAD786EE13E7ADBE0A64BD700C2C0E78984750083A77336AE78F65C01098BA580FD0B6B9B';
wwv_flow_imp.g_varchar2_table(7) := 'E6BBE5DB1580166E3AF92806BE0F83BE074DD3CCDD385460B690F031BEA01F77D87EC466DA01C240E7092BB11DBDF21B6414C1277321BEA03F746324D20A50C5C6F30518E85614AD008D677F29508023D13B54239D616905289E73630306370F8D677F2A';
wwv_flow_imp.g_varchar2_table(8) := '30BFB746DAA2D3065079CD892A0051093CF95C015199AC959E30B500B4F46F67F201C41F80A7802820D6EA3A956901A8F366078D3C4501518FC3049890C8B9F1631D42A80324A5C08F285ED1118C4B7D70B743288065FBA98E8F3C94017AA0F6E4D300A2';
wwv_flow_imp.g_varchar2_table(9) := '0C780A960202E6266BA716B6324012248F3E6A35C8586B1DB55302E8899A537912E0C98C29C08E9514A0DA252F809C77A304D015882D41D74A7D607B9E33A780D571B3F36115F74AC5170004908A7F6E9B6105546BA804100E810C5086015075AF5A43E7';
wwv_flow_imp.g_varchar2_table(10) := '00E1752006FF289AB1739624A634083806E8C1DA962928F0DD683C075B81290F6D39EBB88E8E01EA1631C74E83ADB779D177C98E62A759390648C8047F65C3A9EA3E6BA7524B05802C06C86720380D4748E7B5740E9010F94E03E6763E53C0B2C24E2372';
wwv_flow_imp.g_varchar2_table(11) := '0C501CF814E65474BFB51352469CC6E4182021423C020DA77AC0F6AB0C068E0102056A03A6AFF1E1AA0C068E019252C68C579613BCA3028E01BA63CF2E1D10EFB8019D17FE071D5F1E855B2D9FFBCA3ACE364277DB399089B84BD9FBAFDB400194E8BC09';
wwv_flow_imp.g_varchar2_table(12) := '5D175B20D1750BA68DBF0B2A664DF58D3D80B1E40A09B11B97A1ABB505B2650A1440B1EB97ECBABCFA9D0A78BB7A29FCF1B905BEB17518CBFB2F2F87B9D32741A2BB03129DB7EC584D5F040AA044ACDBAEC7737327DA6BBF2DF2C20256CC9B6E87958AD5';
wwv_flow_imp.g_varchar2_table(13) := 'DE3078112880400208C0C95EE0DA87737E4E2819954C24D7692D837770B0000A9EBEC647CC00195F6277136480DCD5D7F8DE1920E34BEC6E820C90BBFA1ADF3B03647C89DD4D900172575FAF7ACF981F062863D29BE1980132A38E19CB8201CA98F46638';
wwv_flow_imp.g_varchar2_table(14) := '6680CCA863C6B20816403EFE0CEC76059341C6AEB54357EBA9D1D957A7A1E7F24590F1E07D472F5800DDAE92EF1F257ABA20DE79737476EB3AF45CFD3F749E6F0619EBF17D6E7D036480FAAAA1F1F192FBCBE0472B968CCA7EF8D862983D7D2AD008D473';
wwv_flow_imp.g_varchar2_table(15) := 'AD4D631477EE4AF508064855410DEDF373C2B07076F27B44B2BB53438FDE75112C80A477C238F7940A32B51E5D4F0591E4F78864C0BE47142C8046570B3ECA430518200FC536D115036462553DCC8901F2506C135D050A206159F4BD7AB8D2E9DF3FDC6B';
wwv_flow_imp.g_varchar2_table(16) := 'BBD16573120E25DF14DB1B262E7A730A1640915C3BEC8DFB4FC3A50EFF4154D77A133E6C3865C758589067AF4D5F040AA0F0B809763D3EF8AC099EDDB0131E5BBBBD9F3DFBE61EB8D933FCE5F39FF79FE977FCC0F6AADB3FFBEB5E68BD7C03264F2882A2';
wwv_flow_imp.g_varchar2_table(17) := '3149D8ED800D5E040A202B920779D34A20523811420563219437E61B13A1305CBA7E0BCE5F4FFEF1E1C09AADDB7B1ADEDE7714C6E4E741F1C422578CEE263F342F0ACBCB4B07BA37763B50005115AC9C3C88141543EEE4FB20B778E637162A18474F0F69';
wwv_flow_imp.g_varchar2_table(18) := 'EBF6B4C0BB078EC3F87163E1BB0F2F8015E565AED8D239F741E9B4BB216C253F501D3218C376060EA074F5B7E139D868379B73EF54C80D1B9FB29DAB570BA3D5A4D3D6BB088F10A934B3676460801415B0471E3C6D5939F91099E0F8679015A330BF79EA';
wwv_flow_imp.g_varchar2_table(19) := 'A539FA4C0370A40D0F8E3C16BE5FCA2D9ED12762D9E7313FD4A18071006DDCDB0C74DA4AC23313848537F444EFA92BB5D6A11CF7612B601C40079BCE423F78284DD93BF2A4D6B48F4D8B02C60164E1DDEA5CBCBCB7471E2D1271272329600C4021BAA988';
wwv_flow_imp.g_varchar2_table(20) := '37178786A7F71406A9F54892F073E928600E40630AED9B8B74477AB000BDA730FBA3D8C1CFF21EE70A1803907309B8A58A021E02A41226B7F5AB02D90150EFE57B2CEEDF1FBE8C2592A75911B0F76959019015CEB15FC05FB6B641BCB750F60E1F2D9A2F';
wwv_flow_imp.g_varchar2_table(21) := 'B4DBD1884832567B23008BEC0008AFD04438025F5DBE025B771F829D758DB0B35EBFFDBBBE09CE5DBA3E6CD909DEBD474F0DF2FDDEBE2370E858B3DD2E841703F683802CB20220AA45EEA46F0141148BC7A1B5FD32B4B6E9B70B6DEDB0ABEE0B38D37695';
wwv_flow_imp.g_varchar2_table(22) := '5C0EB2AB1D5DD072FEE220DFD76F257FD53E327E3284F2C70E6AE7E71D590390955B00F9D3CBA060C6FDAE59DED45900F8C9FF470DC7868508700A8F9D30640C1104089F0ED49C3500795115823477CA4C2088F61C390E67DAAF81E95310000A540DACDC';
wwv_flow_imp.g_varchar2_table(23) := '7C2088245E4DEDC19168A4F744814A6C986019A0618451D9DD17A2DDF547477C63ADE2C70F6D192097AA902D1031402E0144DDF68588AECECEB65DA1DD461903E472395310015870A4C9BCFF64C800B90C10756F43543C03045EE2D3B649C60079544DFB';
wwv_flow_imp.g_varchar2_table(24) := '129F20B22C20A03C72EBBA1BA301725DBD341D1044F9F7CE83F05D4569B6F4EFE10C907F6B1388C89C032464F2039C40A4C9418EA48094F18E919E1FE939C70085C0628046523640CFA9D4D2729AA794D231B54E7D723B771450A9A573804482472077EA';
wwv_flow_imp.g_varchar2_table(25) := 'E979AF52A1960A00F129CCF34ABBE4500AE7B5740C502261F029CCA542F9B55B955A3A06284F44F814E65722D28C4BA5968E014A74B7B74B8060FD63873485CD86C3A986544BA7B93A06E8F04B8B7B04C001A78EB99D3F14A01A522D9D46E318A05E87BB';
wwv_flow_imp.g_varchar2_table(26) := '7AD7BC0AAE024A356480825B785D91670EA0F110FE84CEA1BA32E17EBC55806A473554F1AA3402EDAA9ED9891DBCA71280596D83950DD58E6AA81235F6A1D21C00DF84AD039E02A9808EDA2903F45975F413548FAFC6508480CD077A6BA714B63240E45D';
wwv_flow_imp.g_varchar2_table(27) := '80E05188840890094D35D30250E1E9337FC773D9D900E997EDA19EB36BA641052D00ED7AFDDB3148C04F34C4C35D78A04002608D5D330DBEB4004471D4AF8AE2D598584F8FD9FCAC80587FA43ABA4D5784DA00A28042DD577E01203FA5C76C6929E0D5C1';
wwv_flow_imp.g_varchar2_table(28) := 'BB9235D2E74E2B40C9CF54E2CF6378E6FD09262615F0F9622C167A2159237D99680588C2AAAF9EDB222D580E205A8027BF28705A24124F7FFEE2AC8BBA03D20E1005D85019ADCBB17A1683103B699B2D730A0880FFE458B18ABAD5650D6E44E10A4014E8';
wwv_flow_imp.g_varchar2_table(29) := 'C1CAB9EDD182D9CF48106FD0369BF70A48096B4BC6943C45B570CBBB6B0051C05B9F17F186EA923502E41ADC1EFA9F99E2133C6B57A0434AF142C3AAE8CFA906DA7BEFD3A1AB00A5FCD45597BE21ADC42C21E0D738A49E49EDE7B5660504D0CDDCD751EB';
wwv_flow_imp.g_varchar2_table(30) := '68C3AA927734F73E64779E00449E1B2ACBCED555457F8B43EA4C69891F2048DB71BF44E35941016C1A472DB78190DF8B1694CCA8AF8EFE86B4C6FD9ECC9E0194CA8686D486CA927FD455479F09755B4542C8C7F1DED12B685B5088FF828058EA585E0F50';
wwv_flow_imp.g_varchar2_table(31) := '00B5B13592F0177CE65521E1898E44BC08B55C595F55FA01698BFB3D9D3D07A86F76875F9A7DB5AEAAF4A3FAEAD2F5685528C482FAAA680445191781F0D4908012BCFC2C07291E01904FE12DF895D960942BE54CB99306A4056942DAD81AAD8A56E248B3';
wwv_flow_imp.g_varchar2_table(32) := 'AE6E557477E3EA39C3FFB2795FB15D7A9C518086CB8944F9B47A66EBE1AAE849BAFCAC5F55B20F01DB41B7E0B3C12857CA9972270D480BD26438BD32B9DF9700655210F69D9E020C507A7AF1D1031460800608C29BE929C000A5A79739476BCA8401D224';
wwv_flow_imp.g_varchar2_table(33) := '64B676C300656BE535E5CD006912325BBB6180B2B5F29AF26680340999ADDD3040D95A794D7933409A84CC9E6EFA67CA00F5D783B7D25480014A53303EBCBF025F030000FFFFC5A594F500000006494441540300F1FA257B1FCF94F90000000049454E44';
wwv_flow_imp.g_varchar2_table(34) := 'AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(13096232299527495593)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700000AB4494441547801EC9DDF6F1C5715808F63AFED4D1CC78E13374993C6402A4715A47D6809522B90500A82072224DEE03F4088075E41E281571E90488504088110';
wwv_flow_imp.g_varchar2_table(2) := '425511EA23342A0915059A363469080925767E356992424CEAD8BBB6D7EEDE753DBBDD783D77ED3BB3F7DCFB5519EFECCE9D33E77CE77EDE71B3B9DEF4C42FDE5E628341AC736093F01F042226800011379FD2451080591035010488BAFD141FB100341F';
wwv_flow_imp.g_varchar2_table(3) := '02DC0231072227C03B40E41320F6F21120F6191079FD0810F90488BD7C0488710650734200011214ECC448000162EC3A352704102041C14E8C041020C6AE53734200011214ECC440A0B946046826C2F3A808204054EDA6D8660208D04C84E751114080A8';
wwv_flow_imp.g_varchar2_table(4) := 'DA4DB1CD0410A09908CFA32210910051F595622D09208025288685490001C2EC2B55591240004B500C0B93000284D957AAB224800096A0540F23F9960410A0251A0EC440000162E83235B62480002DD17020060208104397A9B125010468898603211048';
wwv_flow_imp.g_varchar2_table(5) := 'AB0101D208713C68020810747B292E8D0002A411E278D0041020E8F6525C1A01044823C4F1A009042C40D07DA338470410C01148C2E82480003AFB46D68E082080239084D149000174F68DAC1D1140004720BD0A4332D60410C01A150343248000217695';
wwv_flow_imp.g_varchar2_table(6) := '9AAC092080352A068648000142EC2A35591340006B540CD440A0DD1C11A05D628C0F8A000204D54E8A69970002B44B8CF14111084A80CAF494946F5F95D96B1765E6F2B9A83653B3A9BD727F2AA8099A75314108B0545990F2BB97A5FCDE75A9CCDC93A5';
wwv_flow_imp.g_varchar2_table(7) := 'CA7CD6DCBC8B6F6A36B597EF5C97F2ADCB55060BDEE5E8634241083077E7AA544AD33EF2ED484E95D96999AB7E33E8C8C5955D54BD000BD377A5529AA9611FD9BA59BE77F4B0BCF8CD23F2E7EF7C31AACDD4FCDDA39F96ED03C51A0B23C1C234B7433518';
wwv_flow_imp.g_varchar2_table(8) := '6B7C512F40E5FEBDA4BC6F3F7B489E3D3024C3FDDDC96BB1EC989ABF706058BE75E45052B2B9254A9EB0B32A01F5022C9697BFFB9BEA0EEF1D340F516F4F3630589C9B8D9A854DF1EA05585AAC2475160B5DC97EAC3BDBFAEA2D5D5A88EF7F06B4DBF73A';
wwv_flow_imp.g_varchar2_table(9) := 'AD76CF64BC3F04C864DD041060DDE83831040208104217A961DD041060DDE83831040208104217A961DD041060DDE838D107021BCD0101364A90F355134000D5ED23F98D1240808D12E47CD504104075FB487EA3041060A304395F3501C502A8E64EF29E';
wwv_flow_imp.g_varchar2_table(10) := '1040004F1A411A9D2180009DE1CE553D2180009E3482343A4300013AC39DAB7A4200013C69445B6930D8190104708692401A092080C6AE91B3330208E00C2581341240008D5D6B23E719474B4486BAF42202B43199621EEACBD28BAE7B8000AE894610CF';
wwv_flow_imp.g_varchar2_table(11) := 'AC3A17CAD28B0810F884FDC691CF888BED6B9F7B4A9E3E7450FAFB7A6BC48C04212CBD8800B576F2258D407FA15B3E363A244F1EFC44323484A517112069273B3604760F6F4D8685B0F4220224ED64C786405F4F7DCA84B0F462BD1A9BEA3B3A868B43C0';
wwv_flow_imp.g_varchar2_table(12) := '3D010470CF94888A082080A26691AA7B0208E09E29111511400045CD2255F70410C03D53F7118998190104C80C2D81351040000D5D22C7CC08A817A0ABBB278173AFBC98ECC7BAF3FF0606C5FEBE583158D7AD5E804DBDCBBF17D7547CFAC6FBE621EAED';
wwv_flow_imp.g_varchar2_table(13) := 'D4F5FAAF8D1DD956FFD842D450D6285EBD003D5B8793F27EF4D2597979624AA64AF1BD13DC2D55E48FFFB92B3F3E7E36E131BE6F57B2AF7527EBBCD50BD0BD7950BA8BCBDFE9FEFBFE8C7CFFF77F97AF1C7B493EFBC33FB4DCBE7CEC4FF2BB7377DA66FB';
wwv_flow_imp.g_varchar2_table(14) := '9B33EFCA978EBDDC32EE5AD7CCFAD8D163C7E5072FBE26FF9B9EADD5B56FD7A8EC1E1AA8EDF3A53501F50298D27A773C5C95C0BED9D3A539F9E989B7CCA9D6DB73AF5E939F1C3F23F74BF3D6E7746AE09ED111393CBEBF53975775DD2004303F08F73D34';
wwv_flow_imp.g_varchar2_table(15) := '267D3BF78A7947E8EA2EA43661A66C3F91CDE4FFED5FCFA7C6ECE4802DC57E19DB332ACF3C7E503E7FE851E92F7477321D35D70E428015DADD5B86A46FF41129EE1B97CD639F5C755B196BFBF8DCAB57A571F28FEF7F58BEEEE85F59B9F8975A2B31BEFA';
wwv_flow_imp.g_varchar2_table(16) := 'F413F2CC631F97B19D43B6A531AE4A202801AAF538FDB33CF9FF95C4FCD481FDF2D4A3FBA42B79851DED043C16A0B3689B27BFC9E6F1B1DDE6812D200208B04A33579BFCAB0CE3A50008204053137FF6DA3BD57BFEFA6D4FD3619E064600011A1A6A26FF';
wwv_flow_imp.g_varchar2_table(17) := 'AF5E3997BC52181A4DF6D9099300027CD8D70726FFB69D82001FC209F80101AACD5D75F20F3F543DD2A13F5C363702D10BC0E4CF6DAE7979A1A805F8E51B37E523F7FCE6B687EFFC5E4ED4AC928A5A809F9FA87F72B2C0E4CF6A8E791D376A01563A5318';
wwv_flow_imp.g_varchar2_table(18) := '1C9102DFF9577044F518BD00B5C9BF9DBFE1F565D6E79D4774027475D54B2E0CEE9002933FEF39E7D5F5EAB3C1ABB4B24BA6A77ABB632430B73C85EDBBB2BB10915510884E0033F18BFB1F13F343AF8A0E9164A604A21320539A0457470001D4B58C845D';
wwv_flow_imp.g_varchar2_table(19) := '12F048009765110B02760410C08E13A302258000813696B2EC0820400AA7AE86A517CB0B8B29A3C33FDCC8A0918DD6CA1120A5738D4B2FDE9A62E9C59B77EB0C36F51553E8F97F1801527AD4B8F4E2A90B1372E5CE9494162A2967B57958C1F0D27C4526';
wwv_flow_imp.g_varchar2_table(20) := '6F4FC9EB172E25D9F66CDD9EEC6BDD418094CE9985B656965E9C2D95E5953317E48513A7E4D7C7FFE6DDF6FCC937E4FCF5DB29153D78F8E28DF7E4F993AFAF59CF0B274FC95FCE5E905279AE16A0914BED05A55F10C0A271ED2EBD681132932173F3F372';
wwv_flow_imp.g_varchar2_table(21) := 'BAFA2E75FAD28DB6E2BFF9EF49999B5FB03EA7BB3820BD237BACC7FB3C10012CBA637ED86B77E9458BB0990D393F7955DA9160DEE296AEABA7203D5B066BCB4F1A1686496605E4181801DA806DB3F462AB2519F378BD676038A9A626C1447BEF04E6E456';
wwv_flow_imp.g_varchar2_table(22) := '7916F78E4BEFCE47C43030E342D91020944E56EB30B76A3D03F5B541CF4F98778277AA47FCFDD3E9CC10A0D31D707CFDDE1D7BE523124C5EABDE0E21412BCC08D08A8CE2D75793E0CDC99B8A2BCA2E7504C88E6D4723374B70EED2154182075B82000F32';
wwv_flow_imp.g_varchar2_table(23) := '09E61524486F2502A433523D0209D66E5F0705583B318EBA238004AD5922406B36411DA949D0F0D91DF333C15B576E0555E37A8A4180F550537A8EF9F842E307D8CEBC3D29FFBCD6FE67879496BF6ADA08B02A96705F6C96E01F1727C22DD6A23204B080';
wwv_flow_imp.g_varchar2_table(24) := '14DA90660942ABAF9D7A10A01D5AAEC67A100709969B8000CB1CA2FCDA2C8159312F361008105BC79BEA3512985F0565267FCFB61D4D47C37F8A00E1F738B54223406DB9C8087F292002A44E0F06844C000142EEAE87B5F9961202F8D611F2C9950002E4';
wwv_flow_imp.g_varchar2_table(25) := '8A9B8BF94600017CEB08F9E44A000172C5CDC57C238000BE75847C722590A300B9D6C5C52060450001AC303128540208106A67A9CB8A000258616250A8041020D4CE5297150104B0C2B4C1419CEE2D0104F0B6352496070104C88332D7F096000278DB1A';
wwv_flow_imp.g_varchar2_table(26) := '12CB830002E441996B784B0001BC6D4D1889F95E0502F8DE21F2CB940002648A97E0BE134000DF3B447E991240804CF112DC770208E07B87C82F5302190A9069DE048780130208E0042341B4124000AD9D236F270410C0094682682580005A3B47DE4E08';
wwv_flow_imp.g_varchar2_table(27) := '2080138C4D4178AA860002A869158966410001B2A04A4C350410404DAB48340B020890055562AA2180006A5AA523516D592280B68E91AF530208E01427C1B41140006D1D235FA70410C0294E8269238000DA3A46BE4E093814C0695E0483402E04102017';
wwv_flow_imp.g_varchar2_table(28) := 'CC5CC4570208E06B67C82B170208900B662EE22B0104F0B533E4950B0104708199186A092080DAD691B80B0208E0822231D4124000B5AD2371170410C0054562A82580006A5BE747E2DAB3F8000000FFFFE3E8AB45000000064944415403007C089F8C8B';
wwv_flow_imp.g_varchar2_table(29) := '4F7C2C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(13096232580632495593)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D09941CC579C7BFEAD9D95D6925A18343F7C1EEACB005D2AC44C0DCF09C284E9C67C0716CE785A05D411E2FB65FC28BC9C321406483139E';
wwv_flow_imp.g_varchar2_table(2) := '8F173B8763BF071A81E3F8E48A7162881D14AED8A0D51E4244ECAE4E84A408C93A577B4E97BF9ADD1DCDCECEAE7A66A7ABABBBFEF3AAA6AFEAAAEFFB7D55FFE9EE99E976082F1000016B094000AC0D3D1C07012208007A0108584C00026071F0E1BADD04';
wwv_flow_imp.g_varchar2_table(3) := '94F71000450119042C250001B034F0701B0414010880A2800C0296128000581A78B86D378111EF210023243005010B0940002C0C3A5C06811102108011129882808504200016061D2EDB4D20D77B08402E0DCC83806504200096051CEE82402E0108402E';
wwv_flow_imp.g_varchar2_table(4) := '0DCC83806504200096051CEEDA4D20DF7B08403E112C83804504200016051BAE82403E0108403E112C83804504200016051BAEDA4DA090F710804254B00E042C210001B024D07013040A11800014A282752060090108802581869B761318CF7B08C07864';
wwv_flow_imp.g_varchar2_table(5) := 'B01E042C200001C80B72DD3F74562553BB67AE48ED9EFB1B1BBB16AD7C62CFB2646A67A26163E7FB573FBE63E5CA8D9DAB576FEA5A836C1E834C6C38462A562A662A762A862A962AA62AB679E1B67ED14A0158B3A9B37655AAE3A3AB36767E3E99EA7C86';
wwv_flow_imp.g_varchar2_table(6) := '730BE77739CB69D3A99768F0589C060F0E08B9CF490FEC22723BA4A0EDAE1B6B730435BB526E41368F4126361C23152B15338763A762A862A962AA62AB62CC59C55AC5FC19D507545FB86C63C7C536AA811502904C75241B521D0F24539DFFC3F9745A52';
wwv_flow_imp.g_varchar2_table(7) := '9720F1A410F42007FD66CE49CEF33923D94140C55AC5FC66D507545F8809B153F50DCE9B576DECB8BFE1B1B7574505C5447E44520056FC607B251F02FE6E7253E7371A529DFB88448B24F10522BA9E730D672410284440F58D1B84100F49C7696531D895';
wwv_flow_imp.g_varchar2_table(8) := '4C757DAD61D3CE0FAA3E556887B0AF8B9400AC7EB4AB8E07FDDFC6BB2BD561FB4F48D29F4AA245610F12EC0F8CC03222F9E752BA3F537D8A05E18BAA8F05668D0F0D875E0056FCF3F669AB529DEB939B3A5E7663B29307FD5F31A7059C9140A09C04549F';
wwv_flow_imp.g_varchar2_table(9) := 'BA4FF5B18654D74BC95447A3EA7BE56C2088BA422D00AB1EEFBA353EB5F21782E83192E2DA2000A24DFB084892D7118914F73DBE5ED0F9DB64F0EB5CA685520092A9CE1BF953FF7F852B9F620757704602812008AC11827EAAFAA2EA93411830D9364325';
wwv_flow_imp.g_varchar2_table(10) := '00EA906B55AAE3BBECF48BFCA9FF019E228140E00486FBE28BC94D9DDF567D3470838A3020340290DCD875351F72B509129F2CC23F1405017D0424DDC67DB455FD484C5FA3936B291402D0B0A9EB7612F24576D5CA1F6BB0DF48E12150EB4AF95AA6CF06';
wwv_flow_imp.g_varchar2_table(11) := '6CB397E6CD160029059F5B7D514AF9383B53C9190904C240A052F5591681874C37D65801503FBC68D8B4F3470CF03ECE4820103A022C02F72737763EAEFAB2A9C61B2900376E78B1227EA6F249FEBAE5A3A682835D20E08980A0DBE3A72B7FA8FAB4A7F2';
wwv_flow_imp.g_varchar2_table(12) := '9A0B192900C7972E7A8224FD9E6616680E04FC2120E823C7972E4CF95379E15ABDAE354E001A529D8F90947FE8D5019403815010E06F08327DDB30638D1200BEE077B724BAD73046300704CA4240F56DD5C7CB5259992A314600929BBAAE619FBECA1909';
wwv_flow_imp.g_varchar2_table(13) := '04A24CE02BAB1EDB69CCCFD68D1080CC55D2A1AFFA8CB027CABD0FBE054E2026626E2AD3E77D32A5986A8D187095DD95EABFFAB5C5188EB220105A0292EA86FB7CE02E042E002B1FEDBA94CF8DEE099C040C00018D04549FBF2CB5F3328D4D166C2A7001';
wwv_flow_imp.g_varchar2_table(14) := '7062F261B62CC61909046C22108B911BF82F05031500F5071F8EB8BA271F4F9040C03A023797FB8260B10403150012F2CBC51A8CF220102502C271D51170602E052600C954D72DECF5D59C9140C0660237AC4E757D28280081090091BC3B28A7D12E0898';
wwv_flow_imp.g_varchar2_table(15) := '44C025F9B9A0EC0944001A1EDDB5841D56B7E8E6091208584FE0FA954FEC5836590AA5EC1F8800C858BA898D159C914000048884938EADA3005EFA05404A35F01B03F0154D8280C9046EA7A1B1A1D546ED02B07A53D795ECA13A05E009120880C0308165';
wwv_flow_imp.g_varchar2_table(16) := 'C363637851CF44BB00482275F59FF0020110184DC0252AF9DB80D135795F0A4200B43BE91D074A8240A004B48F0DAD02D0F0D88EF98C77256724100081B104AE58F3AD9DE78D5DEDDF1AAD02201D672DBBA22E02F204090440208F80702BE5EFE4ADF375';
wwv_flow_imp.g_varchar2_table(17) := '51AB000872F0341FC20B04262470E3845B0B6C9CCC2AAD0220492627632CF60581A813D03D46F409C006A9DAC2F97FD47B30FC9B2C81CB6868AC4CB61E4FFBAB41E9A9E0640B259774AAC13F65B2F5607F10883881A96B9674D4EBF2519B00F0953F9CFF';
wwv_flow_imp.g_varchar2_table(18) := 'EB8A2ADA09350197629E4F9527EBA836012072B439355928D81F04822520B58D15479FA372A9BEB6D0120884978024BA4497F5DA04809D9AABCB29B403022127A0EDC3529B00704020000C0109043C10F034563CD473CE227A0460C3068704CD39A73528';
wwv_flow_imp.g_varchar2_table(19) := '000220A008CCD6F555A0A35AF33B2F5FF4C91A9254E1773BA81F04224220BE665E73B50E5FB408C014A72AA6C319B40102512190AE9C53A9C3172D02E0C6D25A9CD1010C6D80800E02E71A33E5B2418B00C445058E00CA1531D46305015D63468B00F40D';
wwv_flow_imp.g_varchar2_table(20) := '0CE2FCDF8A6E0B27CB4540D798D122001562004700E5EA19A8C70A02BAC68C160188E114C08A4E0B27CB4760A23153BE5688B4088074E2B80858CEA8A1AEC81318148E96A3662D0240D41FF980C14110282781587F3A4A02504E34A80B0440A05C04341D';
wwv_flow_imp.g_varchar2_table(21) := '0194CB5CD40302761328B7F7108049124D9F3949FDEFBD43BDEF76D0993D6F5A9D7BF6FD1FF51DDA4303C70F13493949B2D85D07010840A994B983F71F3D407D87F7D160F7097207709D43BA694AF79ECE0840EF812E66D2572A5DECA7890004A044D07D';
wwv_flow_imp.g_varchar2_table(22) := 'EFF1C03FF5AB12F78EFE6EEE401FF51DDC49323D187D6743EC2104A084E0A5F9133F7DE65476CFB52B2FA6FB6FBE82FEE9B6EBACCE5FFEC435D474C3A53473DAD01FD9A4EB52FF91FD594E98991C013FF68600944075E0C491EC5E77DEB492EEFFAD04AD';
wwv_flow_imp.g_varchar2_table(23) := 'AD9B452B2F9A6A75BE72E1346ABA7C017DEB8FAEA6786CA86BA57B4EF3A9406F961766CC22301425B36C32DB1A3EF777FBCF76E8B5F517986D6F00D6CD9B16A7954B2ECAB6ECF6F564E731631601084091F150E7B67C893BBBD7DC69F89F531646CECCDC';
wwv_flow_imp.g_varchar2_table(24) := '99D3B24B324730B32B316304010840D161C0D75B5E90C563225B4CF251537601332511F06B2708805F64512F0884800004200441828920E0170108805F64512F088480000420044182897613F0D37B08809F74513708184E0002607880601E08F8490002';
wwv_flow_imp.g_varchar2_table(25) := 'E0275DD40D0286138000181E2098673701BFBD8700F84D18F58380C1042000060707A68180DF0420007E1346FD206030010880C1C181697613D0E13D04400765B4010286128000181A189805023A0840007450461B206028010880A18181597613D0E53D';
wwv_flow_imp.g_varchar2_table(26) := '04401769B4030206128000181814980402BA0840007491463B206020010880814181497613D0E93D0440276D4BDB92E901727BBBCB96E5E080A524CBEF3604A0FC4C51631E01F514A5DE43BBA95CB967FFDBD4F3CE0E1A387628AF252C164B0002502C31';
wwv_flow_imp.g_varchar2_table(27) := '943782807AE6A07A42937A08A91CC483594B0D0A04A05472D8CF0802EA294DEA09CD51791CB96EA81000DDC42D6C2FB17801DDF69B1F285BBEF5BA3574E58A7AAA8AC7333495080C9C782F338FB7E20840008AE385D20610A8A98A5362DE6CBAFC7DB559';
wwv_flow_imp.g_varchar2_table(28) := '6B064F1ECDCE63C63B01088077562859220171F6296125D65078B7B9B3A6673748374DEABA407605663C11800078C284429321E0D7A301A7C463A3CC0ABB008C7246D302044013689B9BF1EB08602C53397615D64C48000230211E6C048168138000443B';
wwv_flow_imp.g_varchar2_table(29) := 'BEF00E042624000198100F3682801E0241B50201088A3CDA0501030840000C08024C0081A008400082228F7641C00002100003820013EC2610A4F7108020E947B86D3790AFE47DFAC96184E304012832B84EBC6AD41EC77AD3A396B13044E0E8E99EA119';
wwv_flow_imp.g_varchar2_table(30) := '7E9F31B59ADF75A44054478763BEB501012816AD70C8A9A8CCEED572E074761E3343047A06246DDF7F646881DF674FAFE1771D094700C5528600144B8CCB57CC98CDEF43E9EF5F68A5E7DE3E4A87BB07875658FCDE3B2869EBC16EFADC8FB7D1F1E12380';
wwv_flow_imp.g_varchar2_table(31) := '9933A6D30533A65A4C6562D783DE0A012821021533CE27A772E8B0F644772F7DE9B92DF4B16FFE9CAEFFEAF313E64F6C7C8D9A0F7417DDE2C93E97EEFFCF1D13D67DAEB6756C5FFBF517E8EE7F7B855A761FCCFA78CD8A5AD2F7B98C53802C788F331000';
wwv_flow_imp.g_varchar2_table(32) := '8FA0F28B555DB8382B02F9DBC65B3E78EC14FDEBEBBBC6DB5C70BD1AFC9FF9C1167AE9ADBD05B79BBA32E608BAEAB2E534AB664828F5D8A94F6AF4F8E37F2B108012190BBE0E503DBF8EE27C342062159E6B39D3E7FD8EB6EA02E3A7BFFF06ED397CCC73';
wwv_flow_imp.g_varchar2_table(33) := 'FD26149C77FE6CFAF0550D547BD12C13CC810D131080004C00C7CBA6F8ECB93465D1253465E172AA9EBBAC608E9F77BE97AA46955183FF53DF7B83F6BE773CBB3EB1783EADBD62A5B1F9C3572533B7FDFA60B29E664C397BA134EB006646113061010250';
wwv_flow_imp.g_varchar2_table(34) := 'A628888A3839D53505B33A5A28A699CCE0FFEEEBF4EED113D9DD6A17CEA32BEA17D3857C41CDD4ACF7703F8B266706D7007260789A753C9542216D0432839F3FF9DFFDD5C96C9B0B2E9C43575DB244E3C5B46CD39889380108804101CE0CFEBC4F7E655E';
wwv_flow_imp.g_varchar2_table(35) := 'CD149D17D2548BC8B61080001812E9ECE0CFF9E437C43498E1030153AA84006889C4C45F4F6506FFF7F89C3F67F00B81D0141F9A8939175F5FF4F7402FD312E3F12F4E65067FE6B0FFEC397F45CD79149B36538B65D16A647CCED1F2B37CDE4000CAC7B2';
wwv_flow_imp.g_varchar2_table(36) := 'E89AB2833FE7935F0DFECA0B16155D17760081520840004AA156867D0A0E7EFED4C7E02F035CC3AB30C93C084000D11877F09FBF30006BD0A4CD0420003AA29FF3648C533D7DF499EF6FA1DCEFF92BA6CFA24A0CFE32440217018B85080128965829E573';
wwv_flow_imp.g_varchar2_table(37) := '9E8DB5FFE8497AE7C8D99FF756A8C3FE390B4AA915FB8C21808B8063909C630504E01C80FCDC5C317D363EF9FD046C60DDA699040108282299C13F677E40ADA359101822000118E2E0EF7BDE8F7A30F8FDC58DDABD13800078675572C958750DA97F0BAA';
wwv_flow_imp.g_varchar2_table(38) := '0AD4FD032AF1C9AF50F8907111B058A81080628995505E0D7E75BF80290BEB49DD3FA0842AB04B040898E802044063548ABD2F8046D322D214BE0528369010806289A13C08448800042042C1842B20502C010840B1C4501E044A2060EA2E1000532303BB';
wwv_flow_imp.g_varchar2_table(39) := '40400301088006C8253591F3FF0137E7A7C425D565CB4E39CC6C7179B27E4200264BD0A7FD731F42DAD3DBE7532BE1AEF674CE33168410E45454115EC511800014C74B5BE991478FA9060F1D394667FAF1EC41C52237EF3A7434BB28E2D5442C0264E0CB';
wwv_flow_imp.g_varchar2_table(40) := '649320008646C7A99A4AB1EAA919EBD2AE4BFFF1CB766ADF7B880E1C3B45874F9E3136BFC7B6658C2EF1AD9B3FD5CFE5DFAEC3C7E895B776537BE79E6C2BF1F3E664E731E39D0004C03B2BED252BCF5FC41F6A4321EAEDEBCF74F8FF6EDE4E2FBCDE6E6C';
wwv_flow_imp.g_varchar2_table(41) := '7E9E6D7BF2E5163A72AAA7685E1D078FD0D32F379FD3B7D7DADFA63D07FE3F5BBFBA8D5AAC06F750CC02296266A87715B1038AEA23A07E425C35EF623EB70DD763B67AFAFAE8E7CD6F162D027B730EE9BD52CEFCB10A3753F18A6B4C3908C0182466AD50';
wwv_flow_imp.g_varchar2_table(42) := 'D702AA17D4517CE6857C4A308D841333CBC071AC19184C6744E0E869EF470283E9F438B58D56CBF784000008F8494441545EEDC42B497DEA575DB484327FAC12E6FE0968B4E5E62D4100CC8BC9588B84931180AAB94B69CAE2F7D1D4A5971A9BAB2E5848';
wwv_flow_imp.g_varchar2_table(43) := '232F25023FDBF22615230223FB56CE5930AE8FD50BEAA9F28245149B327DA438A62512800094080EBB1526A0CEC5AB78708E6C3D2B02BD23ABC69F8EFA2FCFA885F1F7C196491180004C0A1F762E442056731E8D15816D7C24E041040A558875BE118000';
wwv_flow_imp.g_varchar2_table(44) := 'F886D6EE8A21024461E8011080304429A4368E2702A57C45185204C69B0D01303E44E136B0B008BC59F45784E1A660AEF5100073631319CBF245407DDDA7BE1DC09140F0218600041F032B2CB04D04C212540840582215013B2102E6051102605E4C226D';
wwv_flow_imp.g_varchar2_table(45) := '1144C0ACF04200CC8A8715D6141201F5DF81EEDEDCDF09E0E7BD3A3A0304400765B431864046042E5C4C420C0D74F58B41F58FC7B305C3FB4BC0B33E983F0701303F4691B530367546E637FD420C8940641D35D8310880C1C1B1C1348840B051860004CB';
wwv_flow_imp.g_varchar2_table(46) := '1FAD33818C08E4FFA75FA06B321ADF1328FB8E180D782130724DC0A98893CAB1EA1A2FBB1957266C064100C216B108DBAB8E04AA172E2795D5DD9022ECAA31AE41008C09050C0101FD042000FA99A3451030860004C09850C090B01308A3FD5A04202D63';
wwv_flow_imp.g_varchar2_table(47) := 'DEEEF6184682B019047C2020E2A2DF876AC754A945002AA40B0118831E2B40607C026939A865CC6811005DCE8C8F135B40205C0406653C3A02A0CB99708518D6468940B97DA98A570C96BBCE42F5693902D0E54C2107B10E04C248602052A70083D2FBE3';
wwv_flow_imp.g_varchar2_table(48) := '61C2182DD80C026526E0A463D1B908385073E64C99F9A03A108834015D6346CB29C0F68FAF506AD617E988C1396B09F8E078DFF098F1A1EAD1556A1180E1260F0D4F31010110989880B6B10201983810D80A024110D8A3AB5108802ED26807043C121044';
wwv_flow_imp.g_varchar2_table(49) := 'D13B0260A77678F41FC5402034047C32348A4700A2D52758A81604224640DF58D1760AE0501A0210B16E0A77FC21A073AC681380E6BDF51D8CCBE58C040220303E8133C36365FC1265DCA24D006883E0C12F3B092F108808019FDCD84699B1425A5EFA04';
wwv_flow_imp.g_varchar2_table(50) := '80DD1124701AC01C9040603C0242F318D12A004472F3788E633D08808022E06AFD90D42A00E941F11CBB2839238100088C2520C975FF7DEC6AFFD6681580F63F49EC6757DA39238140A809F8647C7BCB1D971CF0A9EE82D56A1500658120FAA99A228300';
wwv_flow_imp.g_varchar2_table(51) := '088C2610C4D8D02E007CFC0F01181D772C814086000BC03399198D6FDA0520D67FE255F66F2F6724100081B304F6CDD8BB7FCBD9453D73DA05A0F9AECB07D8B54D9C91402094047C323AB579C34D5AEE03986BBF7601508D8B742CC5533E1BE0772410B0';
wwv_flow_imp.g_varchar2_table(52) := '9D80A0C198E36C0C02432002D072E7C57BF97CE785201C469B20601C01493F695E57BB2F08BB021100E5287FFC3FA2A6C8200002F4350AE8159800B4362536F351C0F301F98D6641A02402E5DE498D013516CA5DAFD7FA0213808C81AE7B6F668A3710B0';
wwv_flow_imp.g_varchar2_table(53) := '94C020397F19A4EB810A40CB1DCBDBD8F967392381808D049EDDD654BB2D48C7031500E5B89316F790A0D36A1E19042C22D01D13F4D9A0FD0D5C00B6DE59D745921E081A04DA0781731128E77641F29EE6C6C4CE72D6594A5D810B80323A5153F78F24E4';
wwv_flow_imp.g_varchar2_table(54) := '2B6A1E19042C20F06A4B53FD374DF0D30801F8E1C745DA19749A702A604297800D3E135087FEEB7C6EC373F5460880B2569D0AF0615123CFBB9C9140208A045CE9883F36E1D07F04AE3102A00C6A69AC7F92BF17FD6B358F0C02261128932D9F6D5B57F7';
wwv_flow_imp.g_varchar2_table(55) := '7499EA2A4B35460980F2A8A529F1089F0AA8FF0AA8456410880801F1F5D6A64460BFF81B0FA27102A00C8DF59DB88BA7FFC5190904C24F40CAA75BF7D6FE85898E182900EA2FC3B1FE9A5B0489A74C84069B40A00802CFC606A6DD461A6FF54D45BC8C14';
wwv_flow_imp.g_varchar2_table(56) := '00657FF35DF3CFB434D67E4C08F1B05A460681A00894DCAEA0BF6B6DACBB55F5E592EBF07947630520E3B710B2A5B1EE011601F5B5493AB30E6F20603E817EBE8E755B6B63E23EE23E6CB2B9660BC030391681275C29AF21926F0FAFC204048C242088B6';
wwv_flow_imp.g_varchar2_table(57) := '09D7B98607FF778C3430CFA8500880B2B97D7DFD2F67523CC9F39FE7AC6E2BC61324103086C08024F190D37F624DCB1DB5DAEFED572A85D00880727073D3B25EFE2A6583749C4B59697FACD62183809F043CD4CDE39E7EE4A4C5FBDB9AEA1E5417B03DEC';
wwv_flow_imp.g_varchar2_table(58) := '634C915009C008B5B675B51D2D4D898FF0F9D5B5BC4EDD6598274820A09DC066E9D01A3EDCFF03F54B56EDAD97A1C1500AC088DFAD8D75AFF211C1B5ECC45592E8DBBCBE8F331208F84940F5B1EFA80F1FEE7B37B5AD4BB4F8D998DF75F3D8F1BB09FFEB';
wwv_flow_imp.g_varchar2_table(59) := 'DFDA94F8455B53E2F658BFBB90A4507758D9E97FAB68C13202BB48C87B551FE381CF57F8EB2271E419090118E988CD772D3FD2BABEEE2B1CA03A29E943BCFE1B7CADE01D9E228140D104327D47D0BFF0B74F6BB94FD5B636D67F49F5B1A22B3278874809';
wwv_flow_imp.g_varchar2_table(60) := '402EE7B6F589E739689FE66B058B85EB26A594EAA6232F71996ECE4820508880EA1B2F09920FF2A06F507DA7B531F1A9D6A6FAC8FE2C3DB202901B5D75EFC1B6F5F50FB736256EE03C2D2D65AD24F9FB7C94F0052EA7EE49D8CA53AD4F65E5F6908223A0';
wwv_flow_imp.g_varchar2_table(61) := '62AD62FEACEA03AA2FC404D5A9BEC1F98696A6FA8778D0ABEDC159A8A9652B04209FE5B6F5F5BBDA9AEA9FE2A384BF696D4ADCC2B981F302CEE2F429AA26AA98354015F3E2522C7663F18B899C7A216985E3A457B992D638425C8E6C1E834C6C38462A56';
wwv_flow_imp.g_varchar2_table(62) := '2A662A762A862A962AA62AB62AC69C55AC1B787A8BEA036DDC179A0DB83D577E3FD5B1ECE868244C6D74FD59A2AFB569D9F1ED4DCB0EBDB1BEEE9DF6DB97EE6E6DAAED6C599F786BEBBA4BDADBD727B66E6DAC6B46368F4126361C23152B1533153B1543';
wwv_flow_imp.g_varchar2_table(63) := '154B1553155BAF7DD1967210005B220D3F41A0000108400128580502B6108000D81269F80902050840000A40C12ABB09D8E43D04C0A668C35710C8230001C803824510B0890004C0A668C35710C8230001C8038245BB09D8E63D04C0B688C35F10C82100';
wwv_flow_imp.g_varchar2_table(64) := '01C881815910B08D0004C0B688C35F10C8210001C8818159BB09D8E83D04C0C6A8C36710182600011806810908D84800026063D4E133080C1380000C83C0C46E02B67A0F01B035F2F01B049800048021208180AD042000B6461E7E8300138000300424BB';
wwv_flow_imp.g_varchar2_table(65) := '09D8EC3D04C0E6E8C377EB094000ACEF02006033010880CDD187EFD613800058DF05EC0660BBF7BF060000FFFF01324E02000000064944415403002CD69DA62ED8C0E00000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(13096232837394495593)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000166494441547801EC933F4BC34018C61F73542D89982044278383A3A09FC149FC18CE0E0E7E1C7114D7826EEE5D44C4416811A911218598342686FE89DA0B3D07';
wwv_flow_imp.g_varchar2_table(2) := '9BF4EE30A5501278F286BBE7DEF7C79344D93D6F7ECF520A667C950065026502DC0492F8037DBF2DA4240EA57F6A2EC0A155C5CDD19E900EACE5E2010C7551B8E99A849735E526C08CD3AAF307B05D89C0B414B6B9C1159EC08EB50EA64D43FD3F8017F5';
wwv_flow_imp.g_varchar2_table(3) := 'B84D98C1FF14F7B233DC04AE5A31F6CFEE7071EF20EA7DE1A4F688E35A23539DA4C2FA0A572E00A9AEA0A29B88BA039C5E373000F98D9845CDEA86CE8FFC2F1917801DB8BC7DC6535F7E003B9F57850188B9850545D89E376F6C5DBAE38B17E1A1E564CA';
wwv_flow_imp.g_varchar2_table(4) := '768374801BC6E93EF5A60B136ED2005DCD4473F82AB254B703D86E076F4310BA4FBD1366A75BD200E9A99C1BD174D45F0338EF7E8E637CB95000DA9EA8063C45A38F422A1C804E25EA2A2D429A0A80D0E491A904281398FF04461F7B6EF9010000FFFFD8';
wwv_flow_imp.g_varchar2_table(5) := '840EFE00000006494441540300262DF46149CB3B480000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(13096231911073495592)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD598C24F77D1FF05F75F7F4CCDEDC8BE42EB94B893A4849A644CA9605D9B164C74E021F806038B681207989013F05969548766C2476823C';
wwv_flow_imp.g_varchar2_table(2) := '18760EE72D0F019297008E7590361CDB889340B2244BE44AB248EA20C5FB267797C772C9DDB96752D5CBE5EE72A78F99E9EE3AFE9FC5F41C5DD7FFF7F9D54E7FBBBABAA675FB7F7F78DD8D817DC03E601FB00FD807D2DA075AE11F010204081020909840';
wwv_flow_imp.g_varchar2_table(3) := '8400905CCB154C80000102040400FB000102040810484EA028D8118042C18D00010204082426200024D670E51220408040EA0217EA17002E38F84C800001020492121000926AB762091020402075818BF50B0017257C2540800001020909080009355BA9';
wwv_flow_imp.g_varchar2_table(4) := '0408102090BAC0A5FA05804B16BE234080000102C9080800C9B45AA10408102090BAC0E5F50B00976BF89E00010204082422200024D268651220408040EA0257D62F005CE9E12702040810209084800090449B154980000102A90BBCB57E01E0AD227E26';
wwv_flow_imp.g_varchar2_table(5) := '408000010209080800093459890408102090BAC0D5F50B00579BB8870001020408345E4000687C8B154880000102A90B6C54BF00B0918AFB081020408040C3050480863758790408102090BAC0C6F50B001BBBB8970001020408345A400068747B154780';
wwv_flow_imp.g_varchar2_table(6) := '000102A90BF4AB5F00E827E37E0204081020D0600101A0C1CD551A01020408A42ED0BF7E01A0BF8D290408102040A0B1020240635BAB3002040810485D6050FD02C0201DD308102040804043050480863656590408102090BAC0E0FA0580C13EA6122040';
wwv_flow_imp.g_varchar2_table(7) := '800081460A08008D6CABA20810204020758161F50B00C3844C2740800001020D1410001AD854251120408040EA02C3EB1700861B99830001020408344E4000685C4B154480000102A90B8C52BF00308A9279081020408040C30404808635543904081020';
wwv_flow_imp.g_varchar2_table(8) := '90BAC068F50B00A339998B0001020408344A400068543B154380000102A90B8C5ABF0030AA94F908102040804083040480063553290408102090BAC0E8F50B00A35B9993000102040834464000684C2B154280000102A90B6CA67E0160335AE625408000';
wwv_flow_imp.g_varchar2_table(9) := '01020D1110001AD248651020408040EA029BAB5F00D89C97B90910204080402304048046B451110408102090BAC066EB1700362B667E0204081020D0000101A0014D540201020408A42EB0F9FA0580CD9B59820001020408D45E4000A87D0B1540800001';
wwv_flow_imp.g_varchar2_table(10) := '02A90B6CA57E01602B6A96214080000102351710006ADE40C32740800081D405B656BF00B035374B1120408000815A0B0800B56E9FC11320408040EA025BAD5F00D8AA9CE50810204080408D0504801A37CFD009102040207581ADD72F006CDDCE920408';
wwv_flow_imp.g_varchar2_table(11) := '102040A0B60202406D5B67E00408102090BAC076EA1700B6A36759020408102050530101A0A68D336C02040810485D607BF50B00DBF3B3340102040810A8A5800050CBB6193401020408A42EB0DDFA0580ED0A5A9E0001020408D4504000A861D30C9900';
wwv_flow_imp.g_varchar2_table(12) := '0102045217D87EFD02C0F60DAD810001020408D44E4000A85DCB0C980001020452171847FD02C03814AD830001020408D44C4000A859C30C97000102045217184FFD02C0781CAD850001020408D44A4000A855BB0C960001020452171857FD02C0B824AD';
wwv_flow_imp.g_varchar2_table(13) := '870001020408D4484000A851B30C95000102045217185FFD02C0F82CAD890001020408D4464000A84DAB0C940001020452171867FD02C03835AD8B0001020408D4444000A849A30C93000102045217186FFD02C0783DAD8D0001020408D4424000A8459B';
wwv_flow_imp.g_varchar2_table(14) := '0C920001020452171877FD02C0B845AD8F0001020408D4404000A841930C91000102045217187FFD02C0F84DAD910001020408545E4000A87C8B0C900001020452179844FD02C02454AD930001020408545C4000A878830C8F000102045217984CFD02C0';
wwv_flow_imp.g_varchar2_table(15) := '645CAD950001020408545A4000A8747B0C8E0001020452179854FD02C0A464AD97000102040854584000A870730C8D000102045217985CFD02C0E46CAD99000102040854564000A86C6B0C8C0001020452179864FD02C02475AD9B000102040854544000';
wwv_flow_imp.g_varchar2_table(16) := 'A868630C8B000102045217986CFD02C0647DAD9D000102040854524000A8645B0C8A0001020452179874FD02C0A485AD9F000102040854504000A860530C89000102045217987CFD02C0E48D6D810001020408544E4000A85C4B0C880001020452179846';
wwv_flow_imp.g_varchar2_table(17) := 'FD02C034946D830001020408544C4000A858430C87000102045217984EFD02C0749C6D850001020408544A4000A8543B0C860001020452179856FD02C0B4A46D87000102040854484000A850330C85000102045217985EFD02C0F4AC6D89000102040854';
wwv_flow_imp.g_varchar2_table(18) := '464000A84C2B0C840001020452179866FD02C034B56D8B000102040854444000A848230C83000102045217986EFD02C074BD6D8D000102040854424000A8441B0C820001020452179876FD02C0B4C56D8F000102040854404000A840130C810001020452';
wwv_flow_imp.g_varchar2_table(19) := '17987EFD02C0F4CD6D910001020408942E200094DE02032040800081D405CAA85F002843DD36091020408040C9020240C90DB07902040810485DA09CFA058072DC6D950001020408942A200094CA6FE30408102090BA4059F50B0065C9DB2E0102040810';
wwv_flow_imp.g_varchar2_table(20) := '285140002811DFA609102040207581F2EA1700CAB3B7650204081020509A8000501ABD0D1320408040EA0265D62F0094A96FDB0408102040A0240101A024789B2540800081D405CAAD5F0028D7DFD60910204080402902024029EC364A80000102A90B94';
wwv_flow_imp.g_varchar2_table(21) := '5DBF005076076C9F00010204089420200094806E930408102090BA40F9F50B00E5F7C0080810204080C0D4050480A993DB2001020408A42E5085FA05802A74C1180810204080C0940504802983DB1C01020408A42E508DFA05806AF4C1280810204080C0';
wwv_flow_imp.g_varchar2_table(22) := '54050480A972376863EBEB11EB6BF9C76AACAFAEB83198FE3EB0B61AB1B61651EC8B0DFAAFA594E60B54A54201A02A9DA8FA38F25FB4ABF3AFC7F29953B178EAA95878EE91987FFAC1987FEA81E87D2DBE776331C57D60E18D6D15FB62B14F16FBE6EAFC';
wwv_flow_imp.g_varchar2_table(23) := '6BB15E0483AAFF7F323E02151010002AD0842A0FA17876BF7CE664EF017FE9F4D3B1F2EAE9583D7F36D69617F35FB4F9B3AF2A0FDED81A2DB09E3FF35FCF8F4215FB62B14F16FBE6D2E96762F185C763E9A567637D79A9D1F52BAEAE02D519B700509D5E';
wwv_flow_imp.g_varchar2_table(24) := '546E24C5B3A985E71FCD9FF59F8EB595A5FC013F3FDC9FFFD2ADDC400D88402EB09EEF9BC5B3FFB5A5855879ED95FC48D593511CB5CA27F9204060030101600394D4EF5A5F598EE2D9FE527EA8BFF83E750FF5D753602D3F4AB578F289FC68C073BDF313';
wwv_flow_imp.g_varchar2_table(25) := 'EA598551374DA04AF5080055EA4605C6B29E3FD32F0EA1AE9C7B358A67541518922110D896C0CA6B2FE781F699FC65AB856DADC7C2049A26200034ADA3DBA8673D7FE6BF78F2C9DEE1FE6DACC6A2042A27B0BAF07A2F0444AC576E6C06949240B56A1500';
wwv_flow_imp.g_varchar2_table(26) := 'AAD58F5247539CEC571C362D7510364E604202C5B901CB674E4F68ED564BA07E020240FD7A369111AF2D9C8FD5FCB0FFA82BCFB22CAED9391BB7DD7020EE387E30BF1D723BCEE08E291A7CE0C60371D381DDF92E9BE5B7D13E96CF9CCAF7F3B3A3CD6C2E';
wwv_flow_imp.g_varchar2_table(27) := '026316A8DAEA0480AA75A48CF1ACADC5D28BCF8CF49AFF6DC70EC627FFC11DF107BFF891F8BD5FF8707CE2EFBF3F7EE7676F8FFFF40B1F746330D57DE0377EFA03F15B3FF7C1F8F7BFF491F8D59FB82D6E3D7A3046F9B7F4F273D1BB80D028339B874083';
wwv_flow_imp.g_varchar2_table(28) := '050480063777D4D256CE9D19FABAFFDCEC4CFC938FBE3F7EEFE31F8C9FFF816BE3C3C7F6C4FBAEDD11EF3E301B077776A2DDCADC184C751F38B6B71BEF3DBCA3B72FFEE30F1E8DDFFFF93BE2973EF29E9869B763D0BFE2DA16C53E3F681ED3088C5FA07A';
wwv_flow_imp.g_varchar2_table(29) := '6B1400AAD793A98F68D8A1FF76BB13BFF9333F18BFF2434762EF6C6BEAE3B34102A308EC9F6BC73FFB91E3F12B7FF703D1CA5FA21AB4CCCAEB67F2C94E08CC117C242CE0B779C2CD2F4A2FCEFC2F9E1115DFF7BB7DFC43EF8E9FBC795FFE4BB5DF1CEE27';
wwv_flow_imp.g_varchar2_table(30) := '501D817FF4FEC3F1CB3FF29E81035A5F5A88F5FCA5AF81339948608C02555C950050C5AE4C714C6B4BF3032F9272FD817DF14F7FE886298EC8A6086C5FE0976FBF21DE71DDFEBE2B5A5F5F73A9E0BE3A26A4222000A4D2E93E75AE2DE60160C01F4FF9D8';
wwv_flow_imp.g_varchar2_table(31) := '7B8F3BECDFC7CEDDD515D89FBF54F513EF3D3670806BCB2E0C3410C8C4310A547355024035FB32B551154700FA6D6CB6D38A771CDAD56FB2FB095456A03805E0E6833B078E6F7D6971E0741309345D4000687A8787D4B7BEDCFF97E08E6E277EF048F13E';
wwv_flow_imp.g_varchar2_table(32) := 'EB212B3199400505DE7960C7C051157FE06AE00C26121893405557230054B533D31857F1D7D35657FA6EA9DBE9C4EE6EABEF7413085459A0D5CA6276A6D37788EBABCB31E80858DF054D20D010815643EA50C69605FA5F456DA6DD0A3BC896612D58B2C0';
wwv_flow_imp.g_varchar2_table(33) := 'EA5AE4FB6FD677145964E14F03F4E531616C02D55D91DFEFD5EDCD144636E47DD0C50BA95318854D109884C090BD3BD67B27BF0E9B6B1223B34E02D5101000AAD107A3204060CA02C54B0053DEA4CD252850E59205802A77C7D80810989C8027FF93B3B5';
wwv_flow_imp.g_varchar2_table(34) := 'E65A080800B56893411220408040FD04AA3D6201A0DAFD313A0204081020301101016022AC564A80000102A90B54BD7E01A0EA1D323E0204081020300101016002A8564980000102A90B54BF7E01A0FA3D324202040810203076010160ECA45648800001';
wwv_flow_imp.g_varchar2_table(35) := '02A90BD4A17E01A00E5D324602040810203066010160CCA0564780000102A90BD4A37E01A01E7D324A02040810203056010160AC9C564680000102A90BD4A57E01A02E9D324E020408102030460101608C98564580000102A90BD4A77E01A03EBD325202';
wwv_flow_imp.g_varchar2_table(36) := '0408102030360101606C94564480000102A90BD4A97E01A04EDD3256020408102030260101604C90564380000102A90BD4AB7E01A05EFD325A020408102030160101602C8C564280000102A90BD4AD7E01A06E1D335E020408102030060101600C885641';
wwv_flow_imp.g_varchar2_table(37) := '80000102A90BD4AF7E01A07E3D33620204081020B06D010160DB84564080000102A90BD4B17E01A08E5D33660204081020B04D0101609B80162740800081D405EA59BF0050CFBE19350102040810D8968000B02D3E0B1320408040EA0275AD5F00A86BE7';
wwv_flow_imp.g_varchar2_table(38) := '8C9B00010204086C434000D8069E4509102040207581FAD62F00D4B777464E8000010204B62C20006C99CE820408102090BA409DEB1700EADC3D632740800001025B141000B608673102040810485DA0DEF50B00F5EE9FD11320408000812D0908005B62';
wwv_flow_imp.g_varchar2_table(39) := 'B31001020408A42E50F7FA0580BA77D0F80910204080C0160404802DA05984000102045217A87FFD0240FD7BA8020204081020B069010160D364162040800081D4059A50BF00D0842EAA8100010204086C524000D82498D90910204020758166D42F0034';
wwv_flow_imp.g_varchar2_table(40) := 'A38FAA2040800001029B12100036C5656602040810485DA029F50B004DE9A43A0810204080C0260404804D609995000102045217684EFD0240737AA912020408102030B28000303295190910204020758126D52F0034A99B6A214080000102230A080023';
wwv_flow_imp.g_varchar2_table(41) := '42998D0081060A647E0536B0AB132CA959ABB6F737AB9FAA2140606481F57CCEE2967FF1412041010120C1A62B99008188F5F5F5585B9CCFBF59C341602481A6CD240034ADA3EA2140606481E5574EC6E2A9A763E974717B26FF5A975B31DEFCF6D273B1';
wwv_flow_imp.g_varchar2_table(42) := 'FCEAE9589D7FAD1766D65796F340E3A8C6C83B40E2330A0089EF00CA2790B2C0FADA6AEFC10C6183B5000010004944415473E5DCABB172EE4C8D6EC578F3DB6B2F472FC49C7C32169E7FB4775B3CFD545ED3EB29B77542B5376FB50240F37AAA22020412';
wwv_flow_imp.g_varchar2_table(43) := '15585F5D89D5F3AFC5D2A92763F1F9C76275411048745718A96C0160242633112040A03E02C5F90DAB8BE7F320F0742C9F3915B1E63C87ED76AF89CB0B004DECAA9A081020900B142F71140160FEB987636D6921BFC707814B0202C0250BDF112040A091';
wwv_flow_imp.g_varchar2_table(44) := '02C5C981CB2F3D17C5D7461638F1A29AB90101A0997D5515010204AE10285E12288E065C71A71F92161000926EBFE209A42DD0696531DB69D5F6D6CAB24D3570E5F55762F5FCD94D2D63E688A61AB49A5A98BA0810203048A078ECFCE8FB6E8E8FFFE81D';
wwv_flow_imp.g_varchar2_table(45) := 'F1D31FFE40FCF40FDF56ABDBCF7CF8B6F8F8476E8B9FFDE1F7C58FFEC0BBE3FA03FB0695FBE6B4A5979F773EC09B1A697F2300A4DD7FD5134856A0D36AC7CE3D7BA33B3313BB77CCC6EE9D3B6A75DBB56347ECDAB933F6EFDD136FBFFE40FCD8FB6F89DB';
wwv_flow_imp.g_varchar2_table(46) := 'DF793C8A6033A8A9C579002B675F1A348B69570834F78756734B5319010204060BACAE35E7AA79C54B19EF7BDBD1F8D86DEF1C1A02D616CF3B2170F0AE91C454012089362B9200818D059A13008AFAB2FCD30DD71E8AF7DE7434FFAEFF4771C1A02204F4';
wwv_flow_imp.g_varchar2_table(47) := '9FC3948B024DFE2A0034B9BB6A23402039812CAFF85DC78EC45C7726FFAECFC7FA5AAC2D2FF699E8EE54040480543AAD4E02049211D8393B13C78F1CEE5B6F71A5C07501A0AFCFA509CDFE4E0068767F554780408202C52FF6EB0EEC1F58F95AF1970307';
wwv_flow_imp.g_varchar2_table(48) := 'CE6162D3058AFDA4E935AA8F000102C9091CD8BD23B2ACFFAFF8E2DD0011CD3A0762DC4D6EFAFAFAEF1D4DAF5C7D04081068B040F1AE80566BC0AFF8F5358FFF0DEEFF28A50DD83B4659DC3C04081020504581F5C8226B65FD87B6BE9E4F2B6EF9171F1B';
wwv_flow_imp.g_varchar2_table(49) := '0834FF2E01A0F93D56210102040810B84A4000B88AC41D0408102090BA400AF50B002974598D0408102040E02D0202C05B40FC4880000102A90BA451BF0090469F55498000010204AE101000AEE0F00301020408A42E904AFD02402A9D56270102040810';
wwv_flow_imp.g_varchar2_table(50) := 'B84C4000B80CC3B70408102090BA403AF50B00E9F45AA50408102040E04D0101E04D0ADF1020408040EA0229D52F00A4D46DB51220408000813704048037207C2140800081D405D2AA5F0048ABDFAA2540800001023D0101A0C7E01301020408A42E905A';
wwv_flow_imp.g_varchar2_table(51) := 'FD02406A1D572F0102040810C80504801CC10701020408A42E905EFD02407A3D573101020408100801C04E4080000102C90BA4082000A4D875351320408040F2020240F2BB0000020408A42E9066FD02409A7DBFACEAF5CBBEF72D818404DAED848A552A';
wwv_flow_imp.g_varchar2_table(52) := '81AB050480AB4DDCF386C0DAFA5AACC9076F68F85237812C1F70B10FE75F36FC9899E94664C55CE15FE202A9962F00A4DAF95EDDF92FBF56FF67418BCBABF1DAD26A6F4E9F08D44D60354FAF4B2BFDF7DF3D3BBAD11EB0FFD7AD5EE325B059010160B362';
wwv_flow_imp.g_varchar2_table(53) := '4D9A3F7FF6937566FA5634BFB812DF7F69A1EF7413085459E0E4B9A5187400AB380230D7ED54B904639B8A40BA1B1100D2ED7DAFF2D6CC6CEFEB469FE69757E2E1D3AF6F34C97D042A2D903FF98FEF9D1CBCEFCECD7663AE9D1F05AB74250647607202AD';
wwv_flow_imp.g_varchar2_table(54) := 'C9ADDA9AEB20D0EACE0D1CE6FFFEF693716E796DE03C2612A89AC0FCCA7AFC9F7CDF1D34AEDDBB760E9A6C5A220229972900A4DCFDBCF66C662EB276FFC3A0CFBF7426FEDBD79FCDE7F441A01E02EBF971FFFF7AE29978E2F49981033EBC67C7C0E92612';
wwv_flow_imp.g_varchar2_table(55) := '68BA8000D0F40E0FA9AF7809201B7222D4E7EF7E20BEF0D8E05FA64336633281A909FCD5C32FC55F7EF3FB03B7B77B6E36F6CCF63FFF65E0C226364820ED520480B4FB1F596726DABBF60D5458CB9F52FDBB3FFD7AFCE72F3F1EA7CF2DC7C033AB06AEC9';
wwv_flow_imp.g_varchar2_table(56) := '44021312C89FF53FF7DA72FCFEFF7D28FEE02FFE36E697FB9FFD5F8CE0A6A3D7C6DC8C5F7F85855BBA02FE07A4DBFB372BEFECBE265A791078F38E0DBE59595B8B3B4F3C14BFFA3FBE167FF895C7E30B8FBF1A8F9D598AC5FCB5D63C1FC4B86E1B6CBA5A';
wwv_flow_imp.g_varchar2_table(57) := '77E50F34E3AAD57AF22CB94DCFE241FFAF1E3913FFF1AF1F8B4F7EE69EF8F3FB1E8FE5D5C1E7AC746767E31D375C177EF955EBBF5619A3497D9BFE0FA4BE07E4F5679D6ECC1CBA21B22CCB7F1AFCF1D2EBF371571E04FECD9D77C7BFBEF39EF8179F3B11';
wwv_flow_imp.g_varchar2_table(58) := 'FFFC73DF18CBEDD73E73223E79E7B7E2BF7CEDA978E4E5C5C10399E2D467F367967FF89527E35377DD1B9F1C53ADE3324B793D9FC8F7974F7FF6EEF80F7FF18DF8D36F3E1CCF9F393774AFC8B22C6EBFE51DF9E1FFCED079CD40A0E9020240D33B3C627D';
wwv_flow_imp.g_varchar2_table(59) := 'EDB9DDD1DEBD7FC4B9F3676EF99C4FBF723EEE7FF64C7CF3A997C672BBEF9957E29B8F9F8A3FFAEA03F11B9F3F11DF3D359F6FA5DC8FC75F598C4F7EF644DC75CF8371E2B19363A9735C5EA9AFE7DE7C7F29F6C1852187FB2FDF83DE76D3F1B8F9F0DE18';
wwv_flow_imp.g_varchar2_table(60) := '1E752F5FCAF7CD14509500601F7853A0BBFFFA68CFED7AF3E732BF79F1ECF9F8937B9F8C85FC2586B2C6513CF8FFFA1FDF1D2FBC32F8FDE4658DCF763727B06FEFBEB8FD6DD745C7A3FFE6E0CCDD580101A0B1ADDD4261AD56CC5E7B53B477ECDEC2C2E3';
wwv_flow_imp.g_varchar2_table(61) := '5FE49117CFC5AB8B835FCF1DFF562FACF189FC99FF27FEE7D7E29573AE847841A4DE9FE7F61D881FBDED5DB1ABE3575EBD3B39BED15B53380FC64EF016815E08381E33FBAF8B41D70778CB5213F9F185B30BF1DAD2F403C0136716E313F933FF33E7AB73';
wwv_flow_imp.g_varchar2_table(62) := '1EC24480135869D66AC735D71F8B9F7AFF3BE2C00EAFFB27D072256E42401CDE045632B366AD98D97738E6AEBF39DAB3E55E2DAD780B624CF15FF1CCFFD7FEC833FF29924F6C53333BF7C64DEFBA257EE2D6A371CD6C7B62DBB1E23A0A1873212000140A';
wwv_flow_imp.g_varchar2_table(63) := '6E1B0A6433DD983D72731E04DE1E9D3D077A2F0DB43ADDC8B26CC3F9EB7E67F19AFFAFE587FD3DF3AF5F27B33CB416FB6667C79ED879E0BA38FE8E77C54FDE714BFC9D637BF3C3FECDDC5FEBD72523AE9A800050B58E54703CADB95DD13D78B4777E40F7';
wwv_flow_imp.g_varchar2_table(64) := 'F0B1983970243ABBF7472B3F3A90B53BB1A55B7E68B64AA5160FFEBFFE99BB63D407FF56BB159D9919B7120D66BAB331BB7377EC3D7038AEBDE158BCEB9DEF8C1F79FF2DF173B7BF2D3EFAF68371688767FDE1DF8602EEBC2020005C70F07914812C8BD6';
wwv_flow_imp.g_varchar2_table(65) := 'EC8E288E06740FDD1073F9D1811DC76E8D2DDD8EBF27E68EBE33B22C8BB2FF3DF2D2427C327FCDFF95D7879FF0B763762EFEDE876E8B5FFAF11F8E5FFCE80FBA9568F00F7FEC8EF8858FFC40FCDC07DF113F75EB91F8D08D7BE3F89E4E745B59D9BB94ED';
wwv_flow_imp.g_varchar2_table(66) := '13A8858000508B36357390C5095A790228B5B8E25A039FFAEC3DF1F20867FBEF989B8D8FDD716B5CB76F57EFAD64C55F92758B28D3A078AC2F7E8965A5EE45365E2F01A3BD2850FCDFB9F8BDAF04A62AB0BEB672E18A4253DDEAA58D7DEB85F3F1DB779E';
wwv_flow_imp.g_varchar2_table(67) := '18E9C17FB6DB8D8FBEFFDD7168F7DCA515F88E000102351610006ADC3C43DFBA40F1E0FFBB779D18E97DFEB3DD4EFCF8EDB7C6E1BDBBB6BE414B122050090183B82420005CB2F05D2202F79F3C1FC583FF2827FCCDE50FFE1FFB40F1E0BF33111D651220';
wwv_flow_imp.g_varchar2_table(68) := '908A8000904AA7D5D913F8EEA9F9F857779E18F96CFF0FDDF2F6B876DFEEDEB23E1120507701E3BF5C4000B85CC3F78D16F8DEE9F9F8979FBB67E407FF4E2B8BEBAF71D8BFD13B85E208242C200024DCFC944A7F307FF0FF8DCF9D8857E747BFBC6FA7DD';
wwv_flow_imp.g_varchar2_table(69) := '8E56AB9512935A09345A4071570AF8ED76A5879F1A28F0C0E985F8D467EF8EB3E787BFCFBF81E52B890001021B0A08001BB2B8B329020FE4CFFC3FFD99AFC5D9F9A5AD95B4BEB5C52C458040D5048CE7AD0202C05B45FCDC1881E2B0FFA7F3D7FCCF2E6C';
wwv_flow_imp.g_varchar2_table(70) := 'F1C1BF31120A214080C0D50202C0D526EE69804071C2DFA73E7B4F9CF5277D1BD04D2510D8BE80355C2D20005C6DE29E9A0B7CF7D47CFC66F1E0BF8913FE6A5EB2E113204060D30202C0A6C92C506581E2223FBFF5F9CD9DED5FE57A8C8D0081710858C7';
wwv_flow_imp.g_varchar2_table(71) := '460202C0462AEEABA5407179DF0B17F9197EB67F9665D19AE94696F92F10FE112090A480DF7E49B6BD79457FEBF9F3F1BB7FF2F5912EF253FC15C299FDD7477BF7FEC8F210D03C0D15112070B980EF371610003676716F8D04EE7DA178F03F1167CE8DF0';
wwv_flow_imp.g_varchar2_table(72) := 'CCBFD58AEEC1A3D1D97B30DAB33B237304A0469D36540204C62920008C53D3BAA62EF0ED93E7E377EECC1FFC4738DBBF78E6DF3D7C3CDABBF65D1867BB136B2BDE227801C367024D1550573F0101A09F8CFB2B2F50BCD5EFB7EFCC0FFB8F70B67FD66EF7';
wwv_flow_imp.g_varchar2_table(73) := '9EF9B7775CFAC33E59E4FFD6D6F24F3E081020909E8000905ECF1B51717185BFE2AD7EAF8E7079DFAC38EC7FE8D8A567FE6F08AC7BF07F43C21702CD1550597F0101A0BF8D291515281EFC3FFD99BB47FAC33EBD67FEC561FFCB9EF95F2ACB757E2F59F8';
wwv_flow_imp.g_varchar2_table(74) := '8E0081D4040480D43A5EF37A1F7C713E3E5D5CE46784CBFB66AD76740F1C8DCB0FFB877F04082424A0D4410202C0201DD34A1768F75EA8BF308CE299FFA7FEF8EE383BCA6BFEC561FFC3571FF6BFB0269F091020404000B00F5456603DD663D74CBE8BE6';
wwv_flow_imp.g_varchar2_table(75) := '47EA8B13FE3EFDD9FCC17F9467FEED4E748B07FF0D0FFB57B65C03234060CC0256375820FFED3A780653099426B0B61AAF2E2CC73DCF9C8DDFFCDC89FC99FFD2D0A1F40EFB1F2C0EFBEF193AAF1908102090B280009072F72B5E7B7B6D25EEBAF7A9F8B7';
wwv_flow_imp.g_varchar2_table(76) := '7FFAF518ED6CFFF68567FE3BF7867F0408A42EA0FE610202C03021D34B13786D7125FEE2BE27E2F5FCEBB0415C7AE67FE97DFEC396319D000102290B08002977BF21B51797F32D2EEFFBE615FE1A5297320810D8BA8025870B0800C38DCC516181AC77B6';
wwv_flow_imp.g_varchar2_table(77) := 'FF8D575DE4A7C243363402040854424000A8441B0C622B0259AB1D33078E44DB6BFE5BE1B30C81060B286D140101601425F3544E20CBB2E81EBA213ABBF7576E6C06448000813A08B4EA3048632470B940F1CCBF7B283FECEF99FFE52CBE2740E00D015F';
wwv_flow_imp.g_varchar2_table(78) := '46131000467332574504B2FC35FF9903D78713FE2AD210C32040A0B60202406D5B97DEC07B67FBE7CFFC1DF64FAFF72A2630BA803947151000469532DF0404B291D799B5DAF96BFE47C3097FE11F010204C62220008C85D14AB62490E50120FF18B66CEF';
wwv_flow_imp.g_varchar2_table(79) := '99FFC123D1DE75CDB0594D2740207101E58F2E20008C6E65CE310B64ED4E6433B303D79AE5AFF9770FDFE8C17FA09289040810D8BC8000B079334B8C4920CB0FEBB777F4BF6E7F317DC6FBFCC7A46D3504521050E366040480CD689977EC029DDDD7446B';
wwv_flow_imp.g_varchar2_table(80) := '83A300170EFB1FF53EFFB18B5B210102042E080800171C7C2E4920EBCC44F7DAE3D1D97B300F02DD6875E77A0FFA7337BC333FECBFAFA451D92C0102751430E6CD0908009BF332F704048A2300DDFC50FFEC756F8FB92337477185BFACD39DC096AC9200';
wwv_flow_imp.g_varchar2_table(81) := '0102042E0A080017257C2D5DA0381A10995DB2F4461800815A0A18F46605FCB6DDAC98F90910204080400304048006345109040810485D40FD9B171000366F66090204081020507B0101A0F62D5400010204521750FF56040480ADA859860001020408D4';
wwv_flow_imp.g_varchar2_table(82) := '5C4000A879030D9F000102A90BA87F6B0202C0D6DC2C4580000102046A2D2000D4BA7D064F800081D405D4BF55010160AB7296234080000102351610006ADC3C4327408040EA02EADFBA8000B0753B4B122040800081DA0A0800B56D9D818F45A0D51ECB';
wwv_flow_imp.g_varchar2_table(83) := '6AAC84008132046C733B0202C076F42C5B7B815667A6F63528800001025B111000B6A2669966080CF9CB83EBB1A35A3B7E00001000494441549ED759DCF22F3E08D44C205BCFF7DDB5FCD677DCC5B4ACEFD43A4C30C6ED090800DBF3B3748D05B24E3762';
wwv_flow_imp.g_varchar2_table(84) := 'C04B00ABAB6BB1B4B256E30A0D3D658195B5B558CD6F7D0DB2FCD77FD677AA090908E47B4002552A91C0060259AB15D98097008A274FAF2E2C6DB0A4BB08545FE0B5DEBE5B3CCBDF78ACAD99D97C429D13403E7C1FDB12686D6B690B13A8B9406B263F0A';
wwv_flow_imp.g_varchar2_table(85) := 'D0A786B5FC10EAF3AF9CEB33D5DD04AA2B503CEC3FF7F2D958CFF7E17EA3CCBA4500E837D5FD290808002974598D7D05B2DEB3A0BE93E3C9932FC5C24AF1EBB4FF3CA610A89AC0F9A59578E499937D87956559B4BA7351E77FC6BE7D010160FB86D65063';
wwv_flow_imp.g_varchar2_table(86) := '81D6CCE05F82E7CF9F8B7B1F7BA6773A608DCB34F4840456F3BC7AFFE3CFC7E2C27CFFAA5BED18B6EFF75FD894A608B49A52883A086C45A0380760D833A1479E7A369E3EF5B210B01560CB4C55606D7D2D9E7EE1743CF1ECF303B7DB9ADD19ADB95D03E7';
wwv_flow_imp.g_varchar2_table(87) := 'A9F644A31B878000300E45EBA8B54067EFC17CFC834F86FAD2FD0FC5DD0F3C1E0B4B4E0ACCB17C5450A0D8374F3CF844FCCDF71E1D7CF67F3EF6CEAE7DF9671FA90B0800A9EF01EA8FCEEEFDD1DEB97BA8C4A3CF9E8CFFF5B5FBE26BDFFE7EEF59D6D2C2';
wwv_flow_imp.g_varchar2_table(88) := 'F9585B5E74AB8AC1CA52ACE7CF808736B2AC19D6D7632D1FE338F79985FC25AA674E9E8E7BF207FD3FFBEA7DF1C8B3A77283C105160FFEED9D7B07CF54F1A986371E0101603C8ED652738199BD8722CB5F171D56C6C2F26A3C7AF295F8D2771F8D3BBFFA';
wwv_flow_imp.g_varchar2_table(89) := 'EDF8FCDFDC9F7F75BBF3ABE51ADC75F777E2AE130FC69F7FFDC1F8D6132763A142D76F78797E39EE7EE899F8B3AF3F1077DDF340FCC9D71FEA7DBD33DF7FEEDC86DBE7FFE6BE28EAFEEBEF3C1A0F3F773A16575687EDBEBD7D7CE6C091886CF011AFF02F';
wwv_flow_imp.g_varchar2_table(90) := '0901012089362B729840F17A68270F01C3E6BB383D7F32172B6BEBBD5FBA4528705B8D320DE6179763FEFCF93873F66C7CF791C7E32FEFBE374EBE5AFE5B385F38BB105FFCC6FDF1C853CFC4ABF9D8E6E7E7E37CFEAC7D7E6121F75AC96F5B775BCC43CE';
wwv_flow_imp.g_varchar2_table(91) := '6ABE0F16FBE2C5FD72D8D7997D87236B7786CD56F1E986372E0101605C92D6537B81997D87BC35AAF65DBC50C0B985A5F8F2FD0FC5C9575EBB7047499F1F7EEE549CCFC349499BBF62B3C5C9AEEDDDD75C719F1FD2161000D2EEBFEA2F17C8B2E81EBA41';
wwv_flow_imp.g_varchar2_table(92) := '08B8DCA4C6DF2F2C2EC697BFF3709C2AE948C07A6EF7FAB9D7F3CFD5F898D97F5D34E1D97F35349B318A5633CA500581F108B4BA3B62F6FAB74771A2D478D6682D650A2C2C2EC597EE7D205E3E3BFD07E2B5FCF07C15DE3BDAD9754DEC38766BB477EC29';
wwv_flow_imp.g_varchar2_table(93) := 'B315B65D410101A0824D31A472058A9301BB876E8CEEC1A3D12AFE6050B9C3B1F56D0A2C2CAFC4FFBBF7A178F1D5E9BE1C501C01C8B2F24EB62BFED4F5ECE163BDA35ACD79E6BFCD9DC1E2570808005770F881C01B02F92FEECE9E03D1BDF678EF995356';
wwv_flow_imp.g_varchar2_table(94) := 'FCE5B43726F9523F81C5A5A5F8C2BDDF8F17CF967F62E0A4F5B22CCB8F60EDED1DC96A17EFF7CF7F9EF436ADBF9E0202403DFB66D453126875E762F6BA9B62EED82DF9D7B745F7C091DE75038AFBB3ACBC6777532ABF519B59CC8F047CE15B0F4EFD48C0';
wwv_flow_imp.g_varchar2_table(95) := '24118BA355C555FD8A6B59740F5C1F73F9CB577337DE12DDC3C7A3F7E7AE27B9F112D66D93E3151000C6EB696D0D15287ED1B677EC8EE2AA81DD3C04CCE6470666AF7B5BF4BE1EBE3166DD4A323816451F8AD7B947D9F5169797E30BF73D9C1F0998FE39';
wwv_flow_imp.g_varchar2_table(96) := '011B8DAFB3677FCC1DB93936BF1FE575F7F6C19B7AEEDD837930DD7BA877795F87FB379276DF460202C0462AEE233048A0D5EA3DBB2AAE1D505C51ADBDEB9A702BCB605FFE12CDEEFC19EF8D519CB731A86D17A7F55E0EF8DB07F21050EECB01C5CB4A33';
wwv_flow_imp.g_varchar2_table(97) := 'FBAF8FE219FCE6F7A3BCEE9D7B7BCBF69EE927F112D5C50EFA3A2E81D6B856643D0408102853A0B3FB9AE81EBC21B2111E0C8BABE6152F079C3E33DD1303AFF2595DB9EA2E771098968000302D69DB214060E202C521F599FCB5F0513654BC1CF0C5FB1F';
wwv_flow_imp.g_varchar2_table(98) := '8AD3259E1858E9BF5D300AE214E7B1A9F10B0800E337B54602044A1428DEBD519C9331CA10169796E38BDFFA5E9C3C538D73024619B379088C4B40001897A4F51020501981E29C8CEEC1A3918DF272C0F26A7CF9DB0FC50B2F9FADCCF80DE4AD027E9E84';
wwv_flow_imp.g_varchar2_table(99) := '8000300955EB2440A07481E248C0CCC123238DA3B862E057BEF370BC50D26583471AA499088C5940001833A8D51120501D81CEEEFDBD770764D9F06B362CE42F077CE5DE07F297034A3E31B03A7C951989814C464000988CABB51220501181CEEE6B62E6';
wwv_flow_imp.g_varchar2_table(100) := 'C091C8B21142C0F24AFE72C0C371AAEC770754C4CE309A2D200034BBBFAA23402017B8F072C0D1FCBBE11FC5CB017F7DDFF74B7D77C0F051A634875A272520004C4AD67A0910A89440A7F772C088D709C88F047CB1F8DB0153FE034295023398C60B0800';
wwv_flow_imp.g_varchar2_table(101) := '8D6FB1020910B8285084809951AF1350FC01A1FB1E29FD8A8117C79EEA57754F4E4000989CAD351320504181E2E580D9C3378E34B2C5A5C5F842052E1B3CD260CD4460930202C026C1CC4E8040FD057AD70938746364ADE1BF02175756A2F7A784BD1C50';
wwv_flow_imp.g_varchar2_table(102) := '42E36D729202C3F7FE496EDDBA091020509240A7F7EE80D14E0C5CECBD1CF070BCF85AB97F40A8242A9B6DA88000D0D0C62A8B0081E102450828FE146F960D7F8B602F04E42F079C76B1A0E1B0639AC36A262B20004CD6D7DA0910A8B8407BE7DE9819F5';
wwv_flow_imp.g_varchar2_table(103) := 'AF0816EF0EB8FFA138E56F0754BCAB86378A8000308A9279081068B4407124A07BE886916A5C5C5C8C2FDDFFFD3875F6FC48F39B69AB02969BB48000306961EB2740A01602ED5DFB62F6F0B1C846F803420B4BCBF1A57B1F88175C31B016BD35C88D0504';
wwv_flow_imp.g_varchar2_table(104) := '808D5DDC4B80408202450828FE8050960D3F27A008015FF9F6237908F0A78427B1AB58E7E4050480C91BDB0201023512E814570CCC8F048C32E485FCE580AFDCFF609C3CEBDD01A37899A75A020240B5FA613404085440A0383170F6F068D70958585A89';
wwv_flow_imp.g_varchar2_table(105) := '2F177F3BE0ADD709585FAB4025751D82714F4340009886B26D1020503B81E26241330746BB4EC0C2E2527CF1BE87E3C5CB8E04ACACADD7AE66034E4B400048ABDFAA25406013029DDDD7C4ECB5378DB4C4C5EB045C0C014B2B4500286E232D6EA6CB047C';
wwv_flow_imp.g_varchar2_table(106) := '3B1D0101603ACEB64280404D05DA3BF744B7B86CF008EF0EB878D9E0E75F7C39CE2F2EC4CAF24A4DAB36EC1404048014BAAC460204B625501C0928DE1D30CA4A8A23015FFECE63F1F8F32FC6FCC2E2288B98E70A013F4C4B40009896B4ED1020506B81CE';
wwv_flow_imp.g_varchar2_table(107) := 'EEFDBDEB048C52C4D2CA4A3CFAECC9585C591D6576F310284540002885DD460910A8A340719D80EEC1A39165C3AF1350C7FAAA306663989E8000303D6B5B2240A001029D3D077AE70434A01425242E200024BE03289F0081CD0B144702660F8F76D9E0CD';
wwv_flow_imp.g_varchar2_table(108) := 'AF3DE525D43E4D0101609ADAB645804063048A10509C1898655E0E684C53132B440048ACE1CA2540607C02C58981DDDE910021601CAAD6315D010160BADEB6468040C3048ACB06F74240BBD3B0CA94D3740101A0E91D561F01021317E88500EF0ED8A6B3';
wwv_flow_imp.g_varchar2_table(109) := 'C5A72D20004C5BDCF6081068A440110266AF7B5B64235C31B091008AAA9D800050BB9619300102551568CDED8AEEA11B226B8DF0ABB595453E63F87741C0E7E90B8CB0974E7F50B648800081BA0AF4DE1D30C25F11CCDA33F9E37FBBAE651A7703040480';
wwv_flow_imp.g_varchar2_table(110) := '063451090408544BA0D3FB2B82C7073EC0B7667746E6C4C1371AE74B1902024019EAB6498040E3058A73027A2F076CF020DF2E5E2A38707DE30D14586D0101A0DAFD313A02046A2C508480E2C4C0CEAE7D91B52E1CEE2FEE2BDE3698DF51E3CAC63B746B';
wwv_flow_imp.g_varchar2_table(111) := '2B47400028C7DD5609104844A0D59D8BE2017FC7B15B63C7F1F7C4ECB5F94B031B1C1548844399151210002AD40C432140A0C1025916178F0234B8CA2D946691B2040480B2E46D9700010204089428200094886FD3040810485D40FDE5090800E5D9DB32';
wwv_flow_imp.g_varchar2_table(112) := '0102040810284D4000288DDE8609102090BA80FACB141000CAD4B76D0204081020509280005012BCCD122040207501F5972B200094EB6FEB0408102040A0140101A014761B25408040EA02EA2F5B400028BB03B64F80000102044A1010004A40B7490204';
wwv_flow_imp.g_varchar2_table(113) := '08A42EA0FEF2050480F27B6004040810204060EA0202C0D4C96D90000102A90BA8BF0A02024015BA600C040810204060CA0202C094C16D8E000102A90BA8BF1A02024035FA6014040810204060AA0202C054B96D8C000102A90BA8BF2A020240553A611C';
wwv_flow_imp.g_varchar2_table(114) := '0408102040608A0202C014B16D8A000102A90BA8BF3A020240757A61240408102040606A0202C0D4A86D88000102A90BA8BF4A02024095BA612C0408102040604A0202C094A06D86000102A90BA8BF5A020240B5FA61340408102040602A0202C054986D';
wwv_flow_imp.g_varchar2_table(115) := '84000102A90BA8BF6A020240D53A623C0408102040600A0202C014906D82000102A90BA8BF7A020240F57A6244040810204060E20202C0C4896D80000102A90BA8BF8A02024015BB624C040810204060C20202C08481AD9E000102A90BA8BF9A02024035';
wwv_flow_imp.g_varchar2_table(116) := 'FB6254040810204060A20202C04479AD9C000102A90BA8BFAA020240553B635C040810204060820202C00471AD9A000102A90BA8BFBA020240757B6364040810204060620202C0C468AD98000102A90BA8BFCA02024095BB636C040810204060420202C0';
wwv_flow_imp.g_varchar2_table(117) := '8460AD96000102A90BA8BFDA020240B5FB6374040810204060220202C04458AD94000102A90BA8BFEA020240D53B647C040810204060020202C00450AD92000102A90BA8BFFA020240F57B6484040810204060EC0202C0D849AD90000102A90BA8BF0E02';
wwv_flow_imp.g_varchar2_table(118) := '02401DBA648C040810204060CC0202C09841AD8E000102A90BA8BF1E0202403DFA6494040810204060AC0202C05839AD8C000102A90BA8BF2E0202405D3A659C0408102040608C0202C01831AD8A000102A90BA8BF3E0202407D7A65A40408102040606C';
wwv_flow_imp.g_varchar2_table(119) := '0202C0D828AD88000102A90BA8BF4E0202409DBA65AC0408102040604C0202C09820AD86000102A90BA8BF5E020240BDFA65B40408102040602C0202C05818AD84000102A90BA8BF6E020240DD3A66BC0408102040600C0202C01810AD82000102A90BA8';
wwv_flow_imp.g_varchar2_table(120) := 'BF7E020240FD7A66C4040810204060DB0202C0B609AD80000102A90BA8BF8E0202401DBB66CC0408102040609B0202C036012D4E800081D405D45F4F0101A09E7D336A0204081020B02D0101605B7C1626408040EA02EAAFAB800050D7CE193701020408';
wwv_flow_imp.g_varchar2_table(121) := '10D8868000B00D3C8B122040207501F5D7574000A86FEF8C9C00010204086C594000D8329D0509102090BA80FAEB2C2000D4B97BC64E8000010204B62820006C11CE62040810485D40FDF5161000EADD3FA32740800001025B121000B6C46621020408A4';
wwv_flow_imp.g_varchar2_table(122) := '2EA0FEBA0B080075EFA0F11320408000812D0808005B40B3080102045217507FFD050480FAF75005040810204060D30202C0A6C92C40800081D405D4DF040101A0095D54030102040810D8A48000B04930B3132040207501F53743400068461F55418000';
wwv_flow_imp.g_varchar2_table(123) := '010204362520006C8ACBCC040810485D40FD4D1110009AD249751020408000814D0808009BC0322B0102045217507F73040480E6F4522504081020406064010160642A33122040207501F537494000685237D5428000010204461410004684321B010204';
wwv_flow_imp.g_varchar2_table(124) := '5217507FB304048066F5533504081020406024010160242633112040207501F5374D4000685A47D543800001020446101000464032C36CD7C400000270494441540B0102045217507FF3040480E6F55445040810204060A880003094C80C040810485D40';
wwv_flow_imp.g_varchar2_table(125) := 'FD4D1410009AD85535112040800081210202C010209309102090BA80FA9B29200034B3AFAA22408000010203050480813C26122040207501F537554000686A67D54580000102040608080003704C22408040EA02EA6FAE8000D0DCDEAA8C0001020408F4';
wwv_flow_imp.g_varchar2_table(126) := '151000FAD29840800081D405D4DF640101A0C9DD551B0102040810E8232000F48171370102045217507FB305048066F7577504081020406043010160431677122040207501F5375D4000687A87D547800001020436101000364071170102045217507FF3';
wwv_flow_imp.g_varchar2_table(127) := '050480E6F758850408102040E02A0101E02A1277102040207501F5A7202000A4D06535122040800081B70808006F01F1230102045217507F1A0202401A7D56250102040810B8424000B882C30F040810485D40FDA9080800A9745A9D0408102040E03201';
wwv_flow_imp.g_varchar2_table(128) := '01E0320CDF122040207501F5A7232000A4D36B951220408000813705048037297C43800081D405D49F9280009052B7D54A8000010204DE101000DE80F085000102A90BA83F2D010120AD7EAB960001020408F40404801E834F040810485D40FDA9090800';
wwv_flow_imp.g_varchar2_table(129) := 'A9755CBD04081020402017100072041F040810485D40FDE9090800E9F55CC504081020402004003B0101020492170090A280009062D7D54C80000102C90B0800C9EF02000810485D40FD690A080069F65DD50408102090B8800090F80EA07C0204521750';
wwv_flow_imp.g_varchar2_table(130) := '7FAA020240AA9D573701020408242D200024DD7EC5132090BA80FAD3151000D2EDBDCA091020402061010120E1E62B9D0081D405D49FB280009072F7D54E80000102C90A0800C9B65EE10408A42EA0FEB405FE3F000000FFFFAC42C1DC00000006494441';
wwv_flow_imp.g_varchar2_table(131) := '54030054FD6B69FD7678880000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(13096233115439495594)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(13096234450491495598)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(13096463688735498486)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(13096463688735498486)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13096464360573498487)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13096463952198498487)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/sw_customers_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(13096264511825496418)
,p_lov_name=>'SW_CUSTOMERS.FULL_NAME'
,p_static_id=>'sw-customers-full-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'SW_CUSTOMERS'
,p_return_column_name=>'CUSTOMER_ID'
,p_display_column_name=>'FULL_NAME'
,p_default_sort_column_name=>'FULL_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:oa0XRPuwebqlZDryebn08wVTkWb32hs5dKQph_JC-44'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/sw_job_cards_job_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(13096357679983497883)
,p_lov_name=>'SW_JOB_CARDS.JOB_NO'
,p_static_id=>'sw-job-cards-job-no'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'SW_JOB_CARDS'
,p_return_column_name=>'JOB_CARD_ID'
,p_display_column_name=>'JOB_NO'
,p_default_sort_column_name=>'JOB_NO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:Gr5Sbu8o12jttLcvLyGA4niya56WlYVbuOvK2eH8gpc'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/sw_technicians_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(13096332089542497369)
,p_lov_name=>'SW_TECHNICIANS.FULL_NAME'
,p_static_id=>'sw-technicians-full-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'SW_TECHNICIANS'
,p_return_column_name=>'TECHNICIAN_ID'
,p_display_column_name=>'FULL_NAME'
,p_default_sort_column_name=>'FULL_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:hH6kVPAcD6Y8qu4H9SAYL8x3zKbz7WCaVhswTGKDlOA'
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231335Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/sw_vehicles_plate_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(13096331323275497367)
,p_lov_name=>'SW_VEHICLES.PLATE_NO'
,p_static_id=>'sw-vehicles-plate-no'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'SW_VEHICLES'
,p_return_column_name=>'VEHICLE_ID'
,p_display_column_name=>'PLATE_NO'
,p_default_sort_column_name=>'PLATE_NO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:jYcc93jrLScqcpiB3geGOMIvqy1eawqlXI9WIbv_iv0'
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231335Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(13096234763704495600)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(13096229519130495581)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261112000012Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13096261940901495927)
,p_short_name=>'Customers'
,p_static_id=>'customers'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231321Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13096229726071495582)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13096354819949497407)
,p_short_name=>'Job Cards'
,p_static_id=>'job-cards'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13096370334286497903)
,p_short_name=>'Job Status Log'
,p_static_id=>'job-status-log'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13096388267121498374)
,p_short_name=>'Repair Kb'
,p_static_id=>'repair-kb'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20261111231346Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13096327831581496919)
,p_short_name=>'Technicians'
,p_static_id=>'technicians'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13096280581902496447)
,p_short_name=>'Vehicles'
,p_static_id=>'vehicles'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13107090483186777004)
,p_short_name=>'Workshop Board'
,p_static_id=>'workshop-board'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20261112000012Z')
,p_updated_on=>wwv_flow_imp.dz('20261112000012Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(13096230480124495583)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>4194319937007846
,p_default_page_template=>4075783602716660119
,p_default_dialog_template=>2103835248774687739
,p_error_template=>2104585595298951431
,p_printer_friendly_template=>4075783602716660119
,p_login_template=>2104585595298951431
,p_default_button_template=>4075790603270660137
,p_default_region_template=>4075786578761660127
,p_default_chart_template=>4075786578761660127
,p_default_form_template=>4075786578761660127
,p_default_reportr_template=>4075786578761660127
,p_default_wizard_template=>4075786578761660127
,p_default_menur_template=>2534890969069732905
,p_default_listr_template=>4075786578761660127
,p_default_irr_template=>2103954283454391425
,p_default_report_template=>2542081983073888486
,p_default_label_template=>1612549609962752680
,p_default_menu_template=>4075790987805660140
,p_default_list_template=>4075788786379660133
,p_default_top_nav_list_temp=>2530182346535839887
,p_default_side_nav_list_temp=>2471166859590295591
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2129856781885180476
,p_default_dialogr_template=>4504868307683981366
,p_default_option_label=>1612549609962752680
,p_default_required_label=>1612549789555753698
,p_default_navbar_list_template=>2850970698196720012
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4075791579648660165,2000,'universal-theme',8842.262)
,p_version_scn=>'SH256:_ZA2OCAT0oe8zXeYXS4pqku9eJXOHXBko77-CJUyv6E'
,p_version_scn_master=>'SH256:S3Fh7S4ZMPpy-ID1j0RgxJIrTUyM6ZXOJB4KD7haOtc'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(13096228818829495579)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(13096229151970495580)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261112001043Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13098290854093536619)
,p_plug_name=>'Smart Workshop Styles'
,p_static_id=>'smart-workshop-styles'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'@import url(''https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&family=IBM+Plex+Mono:wght@500;600&display=swap'');',
'/* Smart Workshop - "workshop paper" palette: charcoal ink, warm paper, burnt-orange accent */',
':root{',
'  --sw-ink:#1c1f23; --sw-muted:#6b6f76; --sw-line:#e4ded4; --sw-bg:#f7f4ef; --sw-card:#fffdf9;',
'  --sw-accent:#d9480f; --sw-accent-dark:#b03a0b; --sw-accent-soft:#fff0e6;',
'  --sw-blue:#2f5d8a; --sw-green:#2f7d4f; --sw-amber:#a86a12; --sw-red:#b8352a; --sw-violet:#5e3d8a;',
'  --sw-shadow:0 1px 0 rgba(28,31,35,.05); --sw-shadow-hover:0 6px 16px rgba(28,31,35,.08);',
'}',
'body,.t-Body{font-family:''IBM Plex Sans'',system-ui,''Segoe UI'',sans-serif !important;color:var(--sw-ink);}',
'.t-Body-main,.t-Body-content{background:var(--sw-bg);}',
'.t-Header{background:var(--sw-ink) !important;box-shadow:none !important;border-bottom:3px solid var(--sw-accent);}',
'.t-Header-branding,.t-Header-nav,.t-Header-navBar{background:transparent !important;}',
'.t-Header-logo-link,.t-Header .t-Button--header{color:#fff !important;}',
'.t-Body-nav{box-shadow:none;border-right:1px solid var(--sw-line);}',
'.t-TreeNav .a-TreeView-node--topLevel>.a-TreeView-content.is-current{box-shadow:inset 3px 0 0 var(--sw-accent) !important;}',
'.t-Region,.t-IRR-region{background:var(--sw-card) !important;border:1px solid var(--sw-line) !important;border-radius:10px !important;',
'  box-shadow:var(--sw-shadow) !important;overflow:hidden;animation:swFadeUp .35s ease-out both;transition:box-shadow .2s;}',
'.t-Region:hover{box-shadow:var(--sw-shadow-hover) !important;}',
'.t-Region-header{background:transparent !important;border-bottom:1px solid var(--sw-line) !important;}',
'.t-Region-title{font-weight:600 !important;}',
'.t-Button--hot,.t-Button--primary{background:var(--sw-accent) !important;border:0 !important;box-shadow:none !important;border-radius:6px !important;transition:background .15s;}',
'.t-Button--hot:hover{background:var(--sw-accent-dark) !important;}',
'.a-IRR-table tr:hover td{background:var(--sw-accent-soft) !important;}',
'.t-Form-inputContainer input,.t-Form-inputContainer select,.t-Form-inputContainer textarea{border-radius:6px !important;transition:box-shadow .15s,border-color .15s;}',
'.t-Form-inputContainer input:focus,.t-Form-inputContainer select:focus,.t-Form-inputContainer textarea:focus{box-shadow:0 0 0 3px rgba(217,72,15,.15) !important;border-color:var(--sw-accent) !important;}',
'@keyframes swFadeUp{from{opacity:0;transform:translateY(6px)}to{opacity:1;transform:none}}',
'@keyframes swGrow{from{width:0}}',
'@keyframes swPulse{0%{box-shadow:0 0 0 0 rgba(217,72,15,.45)}70%{box-shadow:0 0 0 9px rgba(217,72,15,0)}100%{box-shadow:0 0 0 0 rgba(217,72,15,0)}}',
'@keyframes swShine{from{opacity:1}to{opacity:1}}',
'.sw-mono{font-family:''IBM Plex Mono'',ui-monospace,monospace;}',
'.sw-plate{font-family:''IBM Plex Mono'',ui-monospace,monospace;font-size:11px;letter-spacing:.08em;border:1.5px solid var(--sw-ink);border-radius:4px;padding:0 6px;background:#fff;white-space:nowrap}',
'.sw-pill{display:inline-flex;align-items:center;gap:6px;padding:2px 8px;border-radius:5px;font-size:12px;font-weight:600;white-space:nowrap}',
'.sw-pill:before{content:"";width:6px;height:6px;border-radius:50%;background:currentColor}',
'.sw-s-RECEIVED{background:#ece9e3;color:#4a4f57}.sw-s-DIAGNOSING{background:#e6eef6;color:var(--sw-blue)}',
'.sw-s-WAITING_PARTS{background:#fbefd9;color:var(--sw-amber)}.sw-s-IN_PROGRESS{background:var(--sw-accent-soft);color:var(--sw-accent-dark)}',
'.sw-s-QUALITY_CHECK{background:#efe9f5;color:var(--sw-violet)}.sw-s-READY{background:#e5f2ea;color:var(--sw-green)}',
'.sw-s-DELIVERED{background:#efefef;color:var(--sw-muted)}',
'.sw-bar{height:6px;border-radius:3px;background:#ece7df;overflow:hidden;min-width:90px}',
'.sw-bar i{display:block;height:100%;border-radius:3px;background:var(--sw-green);animation:swGrow .8s ease-out both}',
'.sw-avatar{width:28px;height:28px;border-radius:50%;display:inline-flex;align-items:center;justify-content:center;',
'  font-size:11px;font-weight:700;color:var(--sw-ink);background:#e9e3d9;border:1px solid #d8d0c4;margin-right:8px;flex:none}',
'.sw-sug{border-left-color:var(--sw-accent) !important;background:var(--sw-card);animation:swFadeUp .3s both;transition:box-shadow .2s}',
'.sw-sug:hover{box-shadow:var(--sw-shadow-hover)}',
'.sw-sug .m{color:var(--sw-accent) !important}',
'.sw-chip{background:var(--sw-accent-soft) !important;color:var(--sw-accent-dark);border-radius:5px !important}',
'.t-PageBody--login,.t-PageBody--login .t-Body,.t-PageBody--login .t-Body-main,.t-PageBody--login .t-Body-content{',
'  background-color:var(--sw-bg) !important;',
'  background-image:linear-gradient(rgba(28,31,35,.045) 1px,transparent 1px),linear-gradient(90deg,rgba(28,31,35,.045) 1px,transparent 1px) !important;',
'  background-size:24px 24px !important;}',
'.t-Login-region{border-radius:10px !important;border:1px solid var(--sw-line) !important;border-top:4px solid var(--sw-accent) !important;',
'  background:var(--sw-card) !important;box-shadow:0 10px 30px rgba(28,31,35,.10) !important;animation:swFadeUp .4s both;}',
'.t-Login-logo{background:var(--sw-ink) !important;border-radius:8px !important;}',
'::-webkit-scrollbar{width:10px;height:10px}::-webkit-scrollbar-thumb{background:#d6cfc3;border-radius:6px}',
'</style>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111235605Z')
,p_updated_on=>wwv_flow_imp.dz('20261112001043Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Smart Workshop'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261112001425Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096463244628498485)
,p_plug_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(13096459977881498479)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2890197131116233323
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(13096228818829495579)
,p_created_on=>wwv_flow_imp.dz('20261111231347Z')
,p_updated_on=>wwv_flow_imp.dz('20261111235734Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096247423939495633)
,p_plug_name=>'Smart Workshop'
,p_static_id=>'smart-workshop'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13098289509333536606)
,p_plug_name=>'Technician Workload'
,p_static_id=>'technician-workload'
,p_title=>'Open Jobs per Technician'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>45
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20261111233759Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233759Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(13098289673610536607)
,p_region_id=>wwv_flow_imp.id(13098289509333536606)
,p_chart_type=>'bar'
,p_height=>'400'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261111233759Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233759Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(13098289751127536608)
,p_chart_id=>wwv_flow_imp.id(13098289673610536607)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(t.full_name, ''Unassigned'') technician,',
'       count(j.job_card_id) open_jobs',
'from   sw_technicians t',
'full outer join (select * from sw_job_cards where status <> ''DELIVERED'') j',
'       on j.technician_id = t.technician_id',
'where  nvl(t.active_yn, ''Y'') = ''Y''',
'group  by nvl(t.full_name, ''Unassigned'')',
'order  by open_jobs desc'))
,p_items_value_column_name=>'OPEN_JOBS'
,p_items_label_column_name=>'TECHNICIAN'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20261111233759Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233759Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(13098289899937536609)
,p_chart_id=>wwv_flow_imp.id(13098289673610536607)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261111233759Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233759Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(13098289974383536610)
,p_chart_id=>wwv_flow_imp.id(13098289673610536607)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261111233759Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233759Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118972001399847026749)
,p_plug_name=>'Workshop Today'
,p_static_id=>'workshop-today'
,p_title=>'Workshop Today'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_html  clob;',
'  l_url   varchar2(4000);',
'  l_now   date := sw_pkg.local_now;',
'  l_hello varchar2(30);',
'  l_kb    number;',
'  l_auto  number;',
'  procedure kpi (p_val in varchar2, p_label in varchar2, p_icon in varchar2, p_grad in varchar2, p_num in number default null) is',
'  begin',
'    l_html := l_html || ''<div class="swk" style="--c:'' || p_grad || ''"><span class="fa '' || p_icon || '' swk-i"></span>''',
'      || ''<b'' || case when p_num is not null then '' data-count="'' || p_num || ''"'' end || ''>'' || p_val || ''</b>''',
'      || ''<span>'' || p_label || ''</span></div>'';',
'  end;',
'  function initials (p_name in varchar2) return varchar2 is',
'  begin',
'    return upper(substr(p_name, 1, 1) || substr(regexp_substr(p_name, '' (\S)'', 1, 1, null, 1), 1, 1));',
'  end;',
'begin',
'  l_hello := case when to_number(to_char(l_now, ''HH24'')) < 12 then ''Good morning''',
'                  when to_number(to_char(l_now, ''HH24'')) < 17 then ''Good afternoon'' else ''Good evening'' end;',
'  select count(*), count(case when source_job = ''Y'' then 1 end) into l_kb, l_auto from sw_repair_kb;',
'',
'  l_html := ''<style>',
'.swh{display:flex;justify-content:space-between;align-items:flex-end;flex-wrap:wrap;gap:12px;padding:20px 22px;border-radius:10px;color:#fff;',
'  background:var(--sw-ink);border-left:6px solid var(--sw-accent);margin-bottom:16px;animation:swFadeUp .35s both}',
'.swh h1{margin:0;font-size:22px;font-weight:700}.swh p{margin:4px 0 0;color:#c9c4bb;font-size:13px}',
'.swh .ai{border:1px dashed #6b6f76;color:#e9e3d9;padding:7px 12px;border-radius:6px;font-size:12px}',
'.swh .ai .fa{color:var(--sw-accent)}',
'.swks{display:grid;grid-template-columns:repeat(auto-fit,minmax(160px,1fr));gap:12px;margin-bottom:16px}',
'.swk{position:relative;background:var(--sw-card);border:1px solid var(--sw-line);border-top:3px solid var(--c);border-radius:8px;padding:14px 16px;',
'  min-height:92px;transition:box-shadow .2s,transform .2s;animation:swFadeUp .35s both}',
'.swk:hover{box-shadow:var(--sw-shadow-hover);transform:translateY(-2px)}',
'.swk b{display:block;font-size:30px;font-weight:700;line-height:1.1;color:var(--sw-ink);font-family:"IBM Plex Mono",monospace}',
'.swk span{font-size:13px;color:var(--sw-muted)}',
'.swk .swk-i{position:absolute;right:12px;top:12px;width:30px;height:30px;border-radius:6px;display:flex;align-items:center;justify-content:center;',
'  font-size:14px;color:var(--c);background:color-mix(in srgb,var(--c) 12%,#fff)}',
'.swk:nth-child(2){animation-delay:.04s}.swk:nth-child(3){animation-delay:.08s}.swk:nth-child(4){animation-delay:.12s}.swk:nth-child(5){animation-delay:.16s}.swk:nth-child(6){animation-delay:.2s}',
'.swg{display:grid;grid-template-columns:2fr 1fr;gap:16px}@media(max-width:1000px){.swg{grid-template-columns:1fr}}',
'.swc{background:var(--sw-card);border:1px solid var(--sw-line);border-radius:10px;padding:16px;animation:swFadeUp .4s both}',
'.swc h3{margin:0 0 10px;font-size:15px;font-weight:600;display:flex;justify-content:space-between;align-items:baseline;border-bottom:1px solid var(--sw-line);padding-bottom:10px}',
'.swc h3 small{font-weight:400;color:var(--sw-muted);font-size:12px}',
'.swt{width:100%;border-collapse:collapse}.swt th{font-size:11px;text-transform:uppercase;letter-spacing:.06em;color:var(--sw-muted);text-align:left;padding:8px;font-weight:600}',
'.swt td{padding:10px 8px;border-top:1px dashed var(--sw-line);font-size:13px;vertical-align:middle}.swt tr:hover td{background:var(--sw-accent-soft)}',
'.swt a.job{font-weight:600;color:var(--sw-ink);text-decoration:none;font-family:"IBM Plex Mono",monospace;border-bottom:2px solid var(--sw-accent)}',
'.swt .who{display:flex;align-items:center}.swt small{color:var(--sw-muted)}',
'.late{color:var(--sw-red);font-weight:600}.late:before{content:"\25CF ";}',
'.swr{display:flex;align-items:center;justify-content:space-between;gap:8px;padding:10px 0;border-top:1px dashed var(--sw-line);font-size:13px}',
'.swr:first-of-type{border-top:0}.swr small{color:var(--sw-muted);display:block}',
'.swr .wa{color:#25803f;font-size:18px;text-decoration:none}.swr .wa:hover{color:#1c5e2e}',
'.due-OVERDUE{background:#f8e1de;color:var(--sw-red)}.due-DUE{background:#fbefd9;color:var(--sw-amber)}',
'.swm{margin-top:12px;padding:12px 14px;border-radius:8px;background:var(--sw-accent-soft);border:1px solid #f6d3bd;font-size:13px}',
'.swm b{font-size:20px;color:var(--sw-accent-dark);font-family:"IBM Plex Mono",monospace}',
'</style>'';',
'',
'  l_html := l_html || ''<div class="swh"><div><h1>'' || l_hello || '', '' || apex_escape.html(initcap(regexp_substr(:APP_USER, ''^[^@.]+'')))',
'    || ''</h1><p>'' || to_char(l_now, ''fmDay, DD Month YYYY'') || '' &middot; here is the workshop right now</p></div>''',
'    || ''<div class="ai"><span class="fa fa-magic"></span> AI diagnosis on &middot; '' || l_kb || '' solved repairs in memory</div></div>'';',
'',
'  l_html := l_html || ''<div class="swks">'';',
'  for r in (select count(case when status <> ''DELIVERED'' then 1 end) open_jobs,',
'                   count(case when status = ''READY'' then 1 end) ready_jobs,',
'                   count(case when status = ''WAITING_PARTS'' then 1 end) parts_jobs,',
'                   count(case when late_yn = ''Y'' then 1 end) late_jobs,',
'                   count(case when delivered_today_yn = ''Y'' then 1 end) delivered_today',
'            from sw_job_cards_v)',
'  loop',
'    kpi(r.open_jobs, ''Cars in workshop'', ''fa-car'', ''#2f5d8a'', r.open_jobs);',
'    kpi(r.ready_jobs, ''Ready for pickup'', ''fa-check-circle'', ''#2f7d4f'', r.ready_jobs);',
'    kpi(r.parts_jobs, ''Waiting for parts'', ''fa-cubes'', ''#a86a12'', r.parts_jobs);',
'    kpi(r.late_jobs, ''Past promised time'', ''fa-clock-o'', ''#b8352a'', r.late_jobs);',
'    kpi(r.delivered_today, ''Delivered today'', ''fa-flag-checkered'', ''#1c1f23'', r.delivered_today);',
'  end loop;',
'  for f in (select round(avg(rating), 1) avg_r, count(*) n from sw_feedback) loop',
'    kpi(nvl(to_char(f.avg_r, ''FM0.0''), ''-'') || '' &#9733;'', ''Customer rating ('' || f.n || '')'', ''fa-star'', ''#d9480f'');',
'  end loop;',
'  l_html := l_html || ''</div><div class="swg"><div class="swc"><h3>Live jobs <small>sorted by urgency</small></h3>''',
'    || ''<table class="swt"><tr><th>Job</th><th>Vehicle</th><th>Technician</th><th>Status</th><th>Promised</th></tr>'';',
'',
'  for j in (select * from sw_job_cards_v where status <> ''DELIVERED'' order by late_yn desc, promised_at) loop',
'    l_url := apex_page.get_url(p_page => 9, p_items => ''P9_JOB_CARD_ID'', p_values => j.job_card_id);',
'    l_html := l_html || ''<tr><td><a class="job" href="'' || l_url || ''">'' || apex_escape.html(j.job_no) || ''</a><br><small>''',
'      || apex_escape.html(j.customer_name) || ''</small></td>''',
'      || ''<td>'' || apex_escape.html(j.model || '' '' || j.model_year) || ''<br><span class="sw-plate">'' || apex_escape.html(j.plate_no) || ''</span></td>''',
'      || ''<td><div class="who">'' || case when j.technician_name is not null',
'           then ''<span class="sw-avatar">'' || initials(j.technician_name) || ''</span>'' || apex_escape.html(j.technician_name)',
'           else ''<em>Unassigned</em>'' end || ''</div></td>''',
'      || ''<td><span class="sw-pill sw-s-'' || j.status || ''">'' || apex_escape.html(j.status_label) || ''</span>''',
'      || ''<div class="sw-bar" style="margin-top:6px"><i style="width:'' || j.status_pct || ''%"></i></div></td>''',
'      || ''<td'' || case when j.late_yn = ''Y'' then '' class="late"'' end || ''>'' || to_char(j.promised_at, ''DD-Mon HH:MI AM'') || ''</td></tr>'';',
'  end loop;',
'',
'  l_html := l_html || ''</table></div><div class="swc"><h3>Service reminders <small>10,000 km / 6 months</small></h3>'';',
'  for s in (select * from sw_service_due_v where due_status <> ''OK'' order by due_status desc, next_due_km - mileage_km) loop',
'    l_html := l_html || ''<div class="swr"><div><b>'' || apex_escape.html(s.model || '' '' || s.model_year) || ''</b> &middot; ''',
'      || apex_escape.html(s.plate_no) || ''<small>'' || apex_escape.html(s.customer_name) || '' &middot; ''',
'      || to_char(s.mileage_km, ''FM999G999'') || '' / '' || to_char(s.next_due_km, ''FM999G999'') || '' km</small></div>''',
'      || ''<div><span class="sw-pill due-'' || regexp_substr(s.due_status, ''^\S+'') || ''">'' || initcap(s.due_status) || ''</span> ''',
'      || ''<a class="wa" target="_blank" title="Remind on WhatsApp" href="https://wa.me/2'' || s.phone || ''?text=''',
'      || apex_util.url_encode(''Hello '' || regexp_substr(s.customer_name, ''^\S+'') || '', your '' || s.model',
'         || '' ('' || s.plate_no || '') is due for its periodic service. Reply to book a slot.'')',
'      || ''"><span class="fa fa-whatsapp"></span></a></div></div>'';',
'  end loop;',
'  l_html := l_html || ''<div class="swm"><b>'' || l_kb || ''</b> solved repairs in workshop memory<br>''',
'    || l_auto || '' learned automatically from delivered jobs</div></div></div>'';',
'',
'  l_html := l_html || ''<script>',
'document.querySelectorAll(".swk b[data-count]").forEach(function(el){',
'  var t=+el.dataset.count,s=null;',
'  function step(ts){if(!s)s=ts;var p=Math.min((ts-s)/900,1);el.textContent=Math.round(t*(1-Math.pow(1-p,3)));if(p<1)requestAnimationFrame(step);}',
'  el.textContent="0";requestAnimationFrame(step);',
'});',
'</script>'';',
'  return l_html;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_created_on=>wwv_flow_imp.dz('20261111231743Z')
,p_updated_on=>wwv_flow_imp.dz('20261112001425Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Customers'
,p_alias=>'CUSTOMERS'
,p_step_title=>'Customers'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096261338410495926)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(13096229519130495581)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231321Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096256792339495911)
,p_plug_name=>'Customers'
,p_static_id=>'customers'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SW_CUSTOMERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(13096256842351495911)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_CUSTOMER_ID:\#CUSTOMER_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>13096256842351495911
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096259614140495923)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096258026841495916)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Customer ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096259234869495921)
,p_db_column_name=>'EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096258431646495918)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:4,RR:IR_CUSTOMER_ID:\#FULL_NAME#\'
,p_column_linktext=>'#FULL_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096258810322495920)
,p_db_column_name=>'PHONE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13096390493309498397)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FULL_NAME:PHONE:EMAIL:CREATED_AT'
,p_sort_column_1=>'FULL_NAME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20261111231346Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096260072949495924)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096256792339495911)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231321Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13096260424650495925)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13096256792339495911)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231321Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13096260803574495925)
,p_event_id=>wwv_flow_imp.id(13096260424650495925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13096256792339495911)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231321Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231321Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Customer'
,p_alias=>'CUSTOMER'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096252675668495782)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231320Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096248820463495775)
,p_plug_name=>'Customer'
,p_static_id=>'customer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SW_CUSTOMERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096253032916495783)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096252675668495782)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231320Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(13096253571419495784)
,p_button_id=>wwv_flow_imp.id(13096253032916495783)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231320Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096254819215495786)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13096252675668495782)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231320Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096254015192495785)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13096252675668495782)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231321Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096254408230495786)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13096252675668495782)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_CUSTOMER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231320Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096250733873495780)
,p_name=>'P3_CREATED_AT'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13096248820463495775)
,p_item_source_plug_id=>wwv_flow_imp.id(13096248820463495775)
,p_prompt=>'Created At'
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096249112860495776)
,p_name=>'P3_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13096248820463495775)
,p_item_source_plug_id=>wwv_flow_imp.id(13096248820463495775)
,p_prompt=>'Customer ID'
,p_source=>'CUSTOMER_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1612549789555753698
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096250394935495780)
,p_name=>'P3_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13096248820463495775)
,p_item_source_plug_id=>wwv_flow_imp.id(13096248820463495775)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>120
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096249567331495778)
,p_name=>'P3_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13096248820463495775)
,p_item_source_plug_id=>wwv_flow_imp.id(13096248820463495775)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096249944767495779)
,p_name=>'P3_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13096248820463495775)
,p_item_source_plug_id=>wwv_flow_imp.id(13096248820463495775)
,p_prompt=>'Phone'
,p_source=>'PHONE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096256075523495788)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>13096256075523495788
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231320Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096255284174495787)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13096248820463495775)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer'
,p_static_id=>'initialize-form-customer'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>13096255284174495787
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231320Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096255658071495787)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13096248820463495775)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Customer'
,p_static_id=>'process-form-customer'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13096255658071495787
,p_created_on=>wwv_flow_imp.dz('20261111231320Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231320Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Vehicles'
,p_alias=>'VEHICLES'
,p_step_title=>'Vehicles'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096279901208496446)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(13096229519130495581)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096274035396496429)
,p_plug_name=>'Vehicles'
,p_static_id=>'vehicles'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SW_VEHICLES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(13096274130704496429)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_VEHICLE_ID:\#VEHICLE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>13096274130704496429
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096275825523496435)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(13096264511825496418)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096277031427496439)
,p_db_column_name=>'MAKE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Make'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096278273384496444)
,p_db_column_name=>'MILEAGE_KM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mileage Km'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096277425767496441)
,p_db_column_name=>'MODEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Model'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096277884689496442)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096276263297496436)
,p_db_column_name=>'PLATE_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Plate No'
,p_column_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:8,RR:IR_VEHICLE_ID:\#PLATE_NO#\'
,p_column_linktext=>'#PLATE_NO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096275451108496433)
,p_db_column_name=>'VEHICLE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Vehicle ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096276683133496438)
,p_db_column_name=>'VIN'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Vin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13096398839132498423)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER_ID:PLATE_NO:VIN:MAKE:MODEL:MODEL_YEAR:MILEAGE_KM'
,p_sort_column_1=>'CUSTOMER_ID'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20261111231346Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096278688017496445)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096274035396496429)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13096279065040496446)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13096274035396496429)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13096279411492496446)
,p_event_id=>wwv_flow_imp.id(13096279065040496446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13096274035396496429)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Vehicle'
,p_alias=>'VEHICLE'
,p_page_mode=>'MODAL'
,p_step_title=>'Vehicle'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261111231325Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096269968832496425)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096263750765496415)
,p_plug_name=>'Vehicle'
,p_static_id=>'vehicle'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SW_VEHICLES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096270327199496425)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096269968832496425)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(13096270893856496426)
,p_button_id=>wwv_flow_imp.id(13096270327199496425)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096272114986496427)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13096269968832496425)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_VEHICLE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096271331501496426)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13096269968832496425)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_VEHICLE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096271770722496426)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13096269968832496425)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_VEHICLE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096264499534496417)
,p_name=>'P5_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_item_source_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_prompt=>'Customer'
,p_source=>'CUSTOMER_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SW_CUSTOMERS.FULL_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096265917017496420)
,p_name=>'P5_MAKE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_item_source_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_prompt=>'Make'
,p_source=>'MAKE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096267124287496421)
,p_name=>'P5_MILEAGE_KM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_item_source_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_prompt=>'Mileage Km'
,p_source=>'MILEAGE_KM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096266373709496420)
,p_name=>'P5_MODEL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_item_source_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_prompt=>'Model'
,p_source=>'MODEL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096266734017496421)
,p_name=>'P5_MODEL_YEAR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_item_source_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_prompt=>'Model Year'
,p_source=>'MODEL_YEAR'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096265172216496419)
,p_name=>'P5_PLATE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_item_source_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_prompt=>'Plate No'
,p_source=>'PLATE_NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096264083512496416)
,p_name=>'P5_VEHICLE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_item_source_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_prompt=>'Vehicle ID'
,p_source=>'VEHICLE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1612549789555753698
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096265500022496419)
,p_name=>'P5_VIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_item_source_plug_id=>wwv_flow_imp.id(13096263750765496415)
,p_prompt=>'Vin'
,p_source=>'VIN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>17
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096273338173496428)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>13096273338173496428
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096272550751496427)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13096263750765496415)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Vehicle'
,p_static_id=>'initialize-form-vehicle'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>13096272550751496427
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096272990304496428)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13096263750765496415)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Vehicle'
,p_static_id=>'process-form-vehicle'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13096272990304496428
,p_created_on=>wwv_flow_imp.dz('20261111231326Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231326Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Technicians'
,p_alias=>'TECHNICIANS'
,p_step_title=>'Technicians'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096327245776496918)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(13096229519130495581)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096322502557496907)
,p_plug_name=>'Technicians'
,p_static_id=>'technicians'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SW_TECHNICIANS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(13096322670352496907)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_TECHNICIAN_ID:\#TECHNICIAN_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>13096322670352496907
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096325549446496916)
,p_db_column_name=>'ACTIVE_YN'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Active '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096324686793496913)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:8,RR:IR_TECHNICIAN_ID:\#FULL_NAME#\'
,p_column_linktext=>'#FULL_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096325157632496914)
,p_db_column_name=>'SPECIALTY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Specialty'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096323958158496911)
,p_db_column_name=>'TECHNICIAN_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Technician ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13096412328232498434)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FULL_NAME:SPECIALTY:ACTIVE_YN'
,p_sort_column_1=>'FULL_NAME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20261111231346Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096325975443496917)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096322502557496907)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13096326321877496917)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13096322502557496907)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13096326787740496917)
,p_event_id=>wwv_flow_imp.id(13096326321877496917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13096322502557496907)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Technician'
,p_alias=>'TECHNICIAN'
,p_page_mode=>'MODAL'
,p_step_title=>'Technician'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261111231330Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096318275350496903)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096315130907496899)
,p_plug_name=>'Technician'
,p_static_id=>'technician'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SW_TECHNICIANS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096318633888496903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096318275350496903)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(13096319171228496904)
,p_button_id=>wwv_flow_imp.id(13096318633888496903)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096320453782496905)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13096318275350496903)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_TECHNICIAN_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096319624496496904)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13096318275350496903)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_TECHNICIAN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096320054169496904)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13096318275350496903)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_TECHNICIAN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096316690856496902)
,p_name=>'P7_ACTIVE_YN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13096315130907496899)
,p_item_source_plug_id=>wwv_flow_imp.id(13096315130907496899)
,p_prompt=>'Active '
,p_source=>'ACTIVE_YN'
,p_display_as=>'NATIVE_YES_NO'
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096315845525496901)
,p_name=>'P7_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13096315130907496899)
,p_item_source_plug_id=>wwv_flow_imp.id(13096315130907496899)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096316277726496901)
,p_name=>'P7_SPECIALTY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13096315130907496899)
,p_item_source_plug_id=>wwv_flow_imp.id(13096315130907496899)
,p_prompt=>'Specialty'
,p_source=>'SPECIALTY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096315436342496900)
,p_name=>'P7_TECHNICIAN_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13096315130907496899)
,p_item_source_plug_id=>wwv_flow_imp.id(13096315130907496899)
,p_prompt=>'Technician ID'
,p_source=>'TECHNICIAN_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1612549789555753698
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096321867797496906)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>13096321867797496906
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096320809906496905)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13096315130907496899)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Technician'
,p_static_id=>'initialize-form-technician'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>13096320809906496905
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096321478914496906)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13096315130907496899)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Technician'
,p_static_id=>'process-form-technician'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13096321478914496906
,p_created_on=>wwv_flow_imp.dz('20261111231331Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231331Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Job Cards'
,p_alias=>'JOB-CARDS'
,p_step_title=>'Job Cards'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111233916Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096354229215497407)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(13096229519130495581)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096345503820497381)
,p_plug_name=>'Job Cards'
,p_static_id=>'job-cards'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job_card_id,',
'       job_no,',
'       status_label    as status,',
'       status_pct      as progress_pct,',
'       case late_yn when ''Y'' then ''Late'' end as late,',
'       model || '' '' || model_year || '' - '' || plate_no as vehicle,',
'       customer_name,',
'       phone,',
'       technician_name as technician,',
'       initcap(service_type) as service_type,',
'       customer_complaint,',
'       diagnosis,',
'       estimated_cost,',
'       received_at,',
'       promised_at,',
'       delivered_at',
'from   sw_job_cards_v'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233916Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(13096345642198497381)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_JOB_CARD_ID:\#JOB_CARD_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>13096345642198497381
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233916Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096348945840497393)
,p_db_column_name=>'CUSTOMER_COMPLAINT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Customer Complaint'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13098290542881536616)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>54
,p_column_identifier=>'S'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111233916Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233916Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096352185373497403)
,p_db_column_name=>'DELIVERED_AT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Delivered At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096349398981497394)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096350928246497399)
,p_db_column_name=>'ESTIMATED_COST'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Estimated Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096346926812497386)
,p_db_column_name=>'JOB_CARD_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Job Card ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096347383206497388)
,p_db_column_name=>'JOB_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Job No'
,p_column_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:10,RR:IR_JOB_CARD_ID:\#JOB_NO#\'
,p_column_linktext=>'#JOB_NO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13098290378493536614)
,p_db_column_name=>'LATE'
,p_display_order=>34
,p_column_identifier=>'Q'
,p_column_label=>'Late'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111233916Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233916Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13098290656043536617)
,p_db_column_name=>'PHONE'
,p_display_order=>64
,p_column_identifier=>'T'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111233916Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233916Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13098290224604536613)
,p_db_column_name=>'PROGRESS_PCT'
,p_display_order=>24
,p_column_identifier=>'P'
,p_column_label=>'Progress Pct'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111233916Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233916Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096351305510497401)
,p_db_column_name=>'PROMISED_AT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Promised At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096351769759497402)
,p_db_column_name=>'RECEIVED_AT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Received At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096348533049497392)
,p_db_column_name=>'SERVICE_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Service Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096350189087497397)
,p_db_column_name=>'STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13098290770038536618)
,p_db_column_name=>'TECHNICIAN'
,p_display_order=>74
,p_column_identifier=>'U'
,p_column_label=>'Technician'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111233916Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233916Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13098290463431536615)
,p_db_column_name=>'VEHICLE'
,p_display_order=>44
,p_column_identifier=>'R'
,p_column_label=>'Vehicle'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111233916Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233916Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13096419266819498441)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JOB_NO:SERVICE_TYPE:CUSTOMER_COMPLAINT:DIAGNOSIS:STATUS:ESTIMATED_COST:PROMISED_AT:RECEIVED_AT:DELIVERED_AT'
,p_sort_column_1=>'JOB_NO'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20261111231346Z')
,p_updated_on=>wwv_flow_imp.dz('20261111233916Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096352969541497406)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096345503820497381)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13096353383372497406)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13096345503820497381)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13096353734880497406)
,p_event_id=>wwv_flow_imp.id(13096353383372497406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13096345503820497381)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Job Card'
,p_alias=>'JOB-CARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Job Card'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_width=>'960'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261111231334Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111234235Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096341452543497377)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13098289014623536601)
,p_plug_name=>'Customer Tracking'
,p_static_id=>'customer-tracking'
,p_title=>'Customer Tracking'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url   varchar2(4000);',
'  l_phone sw_customers.phone%type;',
'  l_html  clob;',
'begin',
'  if :P9_TRACKING_TOKEN is null then',
'    return ''<p>A tracking QR code is generated automatically once the job card is saved.</p>'';',
'  end if;',
'',
'  l_url := apex_page.get_url(',
'             p_page         => 100,',
'             p_items        => ''P100_T'',',
'             p_values       => :P9_TRACKING_TOKEN,',
'             p_session      => 0,',
'             p_absolute_url => true);',
'',
'  select max(c.phone) into l_phone',
'  from   sw_vehicles v join sw_customers c on c.customer_id = v.customer_id',
'  where  v.vehicle_id = :P9_VEHICLE_ID;',
'',
'  l_html := ''<div style="display:flex;gap:16px;align-items:center;flex-wrap:wrap">''',
'         || ''<div style="background:#fff;padding:8px;border-radius:8px">''',
'         || apex_barcode.get_qrcode_svg(p_value => l_url, p_scale => 4)',
'         || ''</div><div><p>Customer scans this code (or opens the link) to follow the car status live - no login needed.</p>''',
'         || ''<p><a class="t-Button t-Button--small" target="_blank" href="'' || apex_escape.html_attribute(l_url) || ''">Open tracking page</a> ''',
'         || case when l_phone is not null then',
'              ''<a class="t-Button t-Button--small t-Button--success" target="_blank" href="https://wa.me/2'' || l_phone',
'              || ''?text='' || apex_util.url_encode(''Track your car service live: '' || l_url) || ''">Send via WhatsApp</a>''',
'            end',
'         || ''</p></div></div>'';',
'  return l_html;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_created_on=>wwv_flow_imp.dz('20261111232041Z')
,p_updated_on=>wwv_flow_imp.dz('20261111232041Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096330124641497365)
,p_plug_name=>'Job Card'
,p_static_id=>'job-card'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SW_JOB_CARDS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118972001400480026750)
,p_plug_name=>'Smart Diagnosis Assistant'
,p_static_id=>'smart-diagnosis-assistant'
,p_title=>'Smart Diagnosis Assistant'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_txt   varchar2(4000) := :P9_CUSTOMER_COMPLAINT;',
'  l_norm  varchar2(4000);',
'  l_q     varchar2(4000);',
'  l_qv    vector;',
'  l_model sw_vehicles.model%type;',
'  l_html  clob;',
'  l_n     pls_integer := 0;',
'  l_match number;',
'  w       varchar2(200);',
'  i       pls_integer := 1;',
'begin',
'  l_html := ''<style>',
'.sw-sug{border:1px solid rgba(128,128,128,.3);border-left:4px solid #1565c0;border-radius:8px;padding:10px 12px;margin-bottom:10px}',
'.sw-sug h4{margin:0 0 6px;font-size:14px}',
'.sw-sug .m{float:right;font-weight:700;color:#1565c0}',
'.sw-sug p{margin:2px 0;font-size:13px}',
'.sw-sug small,.sw-why{opacity:.75;font-size:12px}',
'.sw-chip{display:inline-block;padding:1px 8px;margin:2px;border-radius:10px;background:rgba(21,101,192,.15);font-size:12px}',
'.sw-new{display:inline-block;padding:0 6px;border-radius:6px;background:#2e7d32;color:#fff;font-size:11px;margin-left:6px}',
'</style>'';',
'',
'  if trim(l_txt) is null then',
'    return l_html || ''<p>Type the customer complaint. The assistant reads it, maps it to standard symptoms ''',
'                  || ''and finds the most similar repairs this workshop already solved, using Oracle AI Vector Search ''',
'                  || ''combined with Oracle Text.</p>'';',
'  end if;',
'',
'  l_norm := sw_pkg.normalize_text(l_txt);',
'  l_q    := nvl(sw_pkg.to_text_query(l_txt), ''{zzqqxx}'');',
'  l_qv   := sw_pkg.embed(l_txt);',
'  select max(model) into l_model from sw_vehicles where vehicle_id = :P9_VEHICLE_ID;',
'',
'  l_html := l_html || ''<p class="sw-why">Detected symptoms: '';',
'  loop',
'    w := regexp_substr(l_norm, ''[^ ]+'', 1, i);',
'    exit when w is null;',
'    l_html := l_html || ''<span class="sw-chip">'' || apex_escape.html(w) || ''</span>'';',
'    i := i + 1;',
'  end loop;',
'  l_html := l_html || ''</p>'';',
'',
'  if l_qv is not null then',
'    for r in (',
'      select k.*,',
'             cast(round(100 * (1 - vector_distance(k.complaint_vec, l_qv, cosine))) as number) vec_pct,',
'             least(nvl(t.txt_score, 0), 100) txt_pct',
'      from   sw_repair_kb k',
'      left join (select kb_id, score(1) txt_score',
'                 from   sw_repair_kb',
'                 where  contains(complaint, l_q, 1) > 0) t',
'             on t.kb_id = k.kb_id',
'      order by 0.75 * (1 - vector_distance(k.complaint_vec, l_qv, cosine))',
'             + 0.25 * least(nvl(t.txt_score, 0), 100) / 100',
'             + case when k.model = l_model then 0.05 else 0 end desc,',
'             k.times_seen desc',
'      fetch first 3 rows only)',
'    loop',
'      l_match := least(99, round(0.75 * r.vec_pct + 0.25 * r.txt_pct',
'                                 + case when r.model = l_model then 5 else 0 end));',
'      exit when l_match < 30;',
'      l_n := l_n + 1;',
'      l_html := l_html || ''<div class="sw-sug"><span class="m">'' || l_match || ''% match</span>''',
'        || ''<h4>'' || l_n || ''. '' || apex_escape.html(r.root_cause)',
'        || case when r.source_job = ''Y'' then ''<span class="sw-new">learned from a job</span>'' end || ''</h4>''',
'        || ''<p><b>Similar complaint:</b> '' || apex_escape.html(r.complaint) || '' <small>('' || apex_escape.html(r.model) || '')</small></p>''',
'        || ''<p><b>Recommended fix:</b> '' || apex_escape.html(r.fix_action) || ''</p>''',
'        || ''<p><b>Parts:</b> '' || nvl(apex_escape.html(r.parts), ''-'')',
'        || '' &nbsp; <b>Labor:</b> '' || nvl(to_char(r.labor_hours), ''-'') || '' h''',
'        || '' &nbsp; <small>Seen '' || r.times_seen || '' times &middot; vector '' || r.vec_pct',
'        || ''% &middot; keyword '' || round(r.txt_pct) || ''%</small></p></div>'';',
'    end loop;',
'  end if;',
'',
'  if l_n = 0 then',
'    l_html := l_html || ''<p>No similar past repair yet. When this job is delivered with a diagnosis and the work done, ''',
'                     || ''the workshop knowledge base learns it automatically.</p>'';',
'  end if;',
'',
'  return l_html;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P9_CUSTOMER_COMPLAINT,P9_VEHICLE_ID'
,p_created_on=>wwv_flow_imp.dz('20261111232041Z')
,p_updated_on=>wwv_flow_imp.dz('20261111234235Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096341860207497378)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096341452543497377)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(13096342328314497378)
,p_button_id=>wwv_flow_imp.id(13096341860207497378)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096343607772497379)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13096341452543497377)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_JOB_CARD_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096342887627497379)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13096341452543497377)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_JOB_CARD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096343242926497379)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13096341452543497377)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_JOB_CARD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096333088394497370)
,p_name=>'P9_CUSTOMER_COMPLAINT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Customer Complaint'
,p_source=>'CUSTOMER_COMPLAINT'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096336219430497373)
,p_name=>'P9_DELIVERED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Delivered At'
,p_source=>'DELIVERED_AT'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096333434105497370)
,p_name=>'P9_DIAGNOSIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Diagnosis'
,p_source=>'DIAGNOSIS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096335097336497372)
,p_name=>'P9_ESTIMATED_COST'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Estimated Cost'
,p_source=>'ESTIMATED_COST'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096330436743497366)
,p_name=>'P9_JOB_CARD_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Job Card ID'
,p_source=>'JOB_CARD_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1612549789555753698
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096330861239497367)
,p_name=>'P9_JOB_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Job No'
,p_source=>'JOB_NO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231905Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096334606234497372)
,p_name=>'P9_MILEAGE_IN_KM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Mileage In Km'
,p_source=>'MILEAGE_IN_KM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096335487649497372)
,p_name=>'P9_PROMISED_AT'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Promised At'
,p_source=>'PROMISED_AT'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096335881236497373)
,p_name=>'P9_RECEIVED_AT'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Received At'
,p_source=>'RECEIVED_AT'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096332604737497370)
,p_name=>'P9_SERVICE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Service Type'
,p_source=>'SERVICE_TYPE'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(column_value) d, column_value r',
'from table(sys.odcivarchar2list(''PERIODIC'',''REPAIR'',''WARRANTY'',''BODY''))'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231905Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096334228750497371)
,p_name=>'P9_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sw_pkg.status_label(column_value) d, column_value r',
'from table(sys.odcivarchar2list(''RECEIVED'',''DIAGNOSING'',''WAITING_PARTS'',''IN_PROGRESS'',''QUALITY_CHECK'',''READY'',''DELIVERED''))'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231905Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096331999003497368)
,p_name=>'P9_TECHNICIAN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Technician'
,p_source=>'TECHNICIAN_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SW_TECHNICIANS.FULL_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096336682018497374)
,p_name=>'P9_TRACKING_TOKEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_source=>'TRACKING_TOKEN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231905Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096331236574497367)
,p_name=>'P9_VEHICLE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Vehicle'
,p_source=>'VEHICLE_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SW_VEHICLES.PLATE_NO'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096333892599497371)
,p_name=>'P9_WORK_DONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_item_source_plug_id=>wwv_flow_imp.id(13096330124641497365)
,p_prompt=>'Work Done'
,p_source=>'WORK_DONE'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231335Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13098289127820536602)
,p_name=>'Refresh Diagnosis Suggestions'
,p_static_id=>'refresh-diagnosis-suggestions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_CUSTOMER_COMPLAINT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20261111232124Z')
,p_updated_on=>wwv_flow_imp.dz('20261111232124Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13098289282991536603)
,p_event_id=>wwv_flow_imp.id(13098289127820536602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(118972001400480026750)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111232124Z')
,p_updated_on=>wwv_flow_imp.dz('20261111232124Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096344878389497381)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>13096344878389497381
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096344030027497380)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13096330124641497365)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Job Card'
,p_static_id=>'initialize-form-job-card'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>13096344030027497380
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096344479599497380)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13096330124641497365)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Job Card'
,p_static_id=>'process-form-job-card'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13096344479599497380
,p_created_on=>wwv_flow_imp.dz('20261111231336Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231336Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Job Status Log'
,p_alias=>'JOB-STATUS-LOG1'
,p_step_title=>'Job Status Log'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096369747238497903)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(13096229519130495581)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096365012964497890)
,p_plug_name=>'Job Status Log'
,p_static_id=>'job-status-log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SW_JOB_STATUS_LOG'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(13096365147343497890)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_LOG_ID:\#LOG_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>13096365147343497890
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096367641647497899)
,p_db_column_name=>'CHANGED_AT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Changed At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096368009355497900)
,p_db_column_name=>'CHANGED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096366864185497896)
,p_db_column_name=>'JOB_CARD_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Job Card'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(13096357679983497883)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096366451128497894)
,p_db_column_name=>'LOG_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Log ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096367248034497898)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13096439970214498460)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JOB_CARD_ID:STATUS:CHANGED_AT:CHANGED_BY'
,p_sort_column_1=>'JOB_CARD_ID'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20261111231346Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096368448615497902)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096365012964497890)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:11::'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13096368897950497902)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13096365012964497890)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13096369272944497902)
,p_event_id=>wwv_flow_imp.id(13096368897950497902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13096365012964497890)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Job Status Log'
,p_alias=>'JOB-STATUS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Job Status Log'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261111231339Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096360949744497887)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096356864776497881)
,p_plug_name=>'Job Status Log'
,p_static_id=>'job-status-log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SW_JOB_STATUS_LOG'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096361395557497887)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096360949744497887)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(13096361886390497887)
,p_button_id=>wwv_flow_imp.id(13096361395557497887)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096363123607497889)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13096360949744497887)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_LOG_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096362318807497888)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13096360949744497887)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_LOG_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096362713110497888)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13096360949744497887)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_LOG_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096358601831497885)
,p_name=>'P11_CHANGED_AT'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13096356864776497881)
,p_item_source_plug_id=>wwv_flow_imp.id(13096356864776497881)
,p_prompt=>'Changed At'
,p_source=>'CHANGED_AT'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096359095822497885)
,p_name=>'P11_CHANGED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13096356864776497881)
,p_item_source_plug_id=>wwv_flow_imp.id(13096356864776497881)
,p_prompt=>'Changed By'
,p_source=>'CHANGED_BY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096357585036497883)
,p_name=>'P11_JOB_CARD_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13096356864776497881)
,p_item_source_plug_id=>wwv_flow_imp.id(13096356864776497881)
,p_prompt=>'Job Card'
,p_source=>'JOB_CARD_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SW_JOB_CARDS.JOB_NO'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096357169922497882)
,p_name=>'P11_LOG_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13096356864776497881)
,p_item_source_plug_id=>wwv_flow_imp.id(13096356864776497881)
,p_prompt=>'Log ID'
,p_source=>'LOG_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1612549789555753698
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096358235522497884)
,p_name=>'P11_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13096356864776497881)
,p_item_source_plug_id=>wwv_flow_imp.id(13096356864776497881)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096364362815497889)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>13096364362815497889
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096363516804497889)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13096356864776497881)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Job Status Log'
,p_static_id=>'initialize-form-job-status-log'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>13096363516804497889
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096363916765497889)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13096356864776497881)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Job Status Log'
,p_static_id=>'process-form-job-status-log'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13096363916765497889
,p_created_on=>wwv_flow_imp.dz('20261111231341Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231341Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Repair Kb'
,p_alias=>'REPAIR-KB1'
,p_step_title=>'Repair Kb'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096387720123498374)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(13096229519130495581)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096381846182498357)
,p_plug_name=>'Repair Kb'
,p_static_id=>'repair-kb'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SW_REPAIR_KB'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(13096381971224498357)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_KB_ID:\#KB_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>13096381971224498357
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096384002934498365)
,p_db_column_name=>'COMPLAINT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Complaint'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096384848483498367)
,p_db_column_name=>'FIX_ACTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fix Action'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096383223795498362)
,p_db_column_name=>'KB_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Kb ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096385662077498370)
,p_db_column_name=>'LABOR_HOURS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Labor Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990D0'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096383659901498364)
,p_db_column_name=>'MODEL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Model'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096385208203498369)
,p_db_column_name=>'PARTS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Parts'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096384403876498366)
,p_db_column_name=>'ROOT_CAUSE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Root Cause'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13096386039633498371)
,p_db_column_name=>'TIMES_SEEN'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Times Seen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13096448002301498467)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MODEL:COMPLAINT:ROOT_CAUSE:FIX_ACTION:PARTS:LABOR_HOURS:TIMES_SEEN'
,p_sort_column_1=>'MODEL'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20261111231346Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096386429404498372)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096381846182498357)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13096386821012498373)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13096381846182498357)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13096387245280498373)
,p_event_id=>wwv_flow_imp.id(13096386821012498373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13096381846182498357)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Repair Kb'
,p_alias=>'REPAIR-KB'
,p_page_mode=>'MODAL'
,p_step_title=>'Repair Kb'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261111231344Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096377728086498354)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096371821237498347)
,p_plug_name=>'Repair Kb'
,p_static_id=>'repair-kb'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SW_REPAIR_KB'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096378132425498354)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13096377728086498354)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(13096378657267498354)
,p_button_id=>wwv_flow_imp.id(13096378132425498354)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096379943589498356)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13096377728086498354)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_KB_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096379140801498355)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13096377728086498354)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_KB_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231346Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096379518806498355)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13096377728086498354)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_KB_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096372947221498349)
,p_name=>'P13_COMPLAINT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_item_source_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_prompt=>'Complaint'
,p_source=>'COMPLAINT'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096373774544498350)
,p_name=>'P13_FIX_ACTION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_item_source_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_prompt=>'Fix Action'
,p_source=>'FIX_ACTION'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096372131545498348)
,p_name=>'P13_KB_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_item_source_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_prompt=>'Kb ID'
,p_source=>'KB_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1612549789555753698
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096374546650498351)
,p_name=>'P13_LABOR_HOURS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_item_source_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_prompt=>'Labor Hours'
,p_source=>'LABOR_HOURS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096372562784498349)
,p_name=>'P13_MODEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_item_source_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_prompt=>'Model'
,p_source=>'MODEL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096374163364498351)
,p_name=>'P13_PARTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_item_source_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_prompt=>'Parts'
,p_source=>'PARTS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096373303798498350)
,p_name=>'P13_ROOT_CAUSE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_item_source_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_prompt=>'Root Cause'
,p_source=>'ROOT_CAUSE'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096374908513498352)
,p_name=>'P13_TIMES_SEEN'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_item_source_plug_id=>wwv_flow_imp.id(13096371821237498347)
,p_prompt=>'Times Seen'
,p_source=>'TIMES_SEEN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231347Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096381170097498357)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>13096381170097498357
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096380379571498356)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13096371821237498347)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Repair Kb'
,p_static_id=>'initialize-form-repair-kb'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>13096380379571498356
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096380774381498356)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13096371821237498347)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Repair Kb'
,p_static_id=>'process-form-repair-kb'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13096380774381498356
,p_created_on=>wwv_flow_imp.dz('20261111231345Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231345Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Workshop Board'
,p_alias=>'WORKSHOP-BOARD'
,p_step_title=>'Workshop Board'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20261112000012Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261112001457Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13098291169776536622)
,p_plug_name=>'Board'
,p_static_id=>'board'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_html clob;',
'  l_url  varchar2(4000);',
'  l_cnt  number;',
'begin',
'  l_html := ''<style>',
'.kb{display:grid;grid-template-columns:repeat(7,minmax(210px,1fr));gap:12px;overflow-x:auto;padding-bottom:8px}',
'.kb-col{background:#efebe4;border-radius:8px;padding:10px;min-height:420px;transition:background .2s,box-shadow .2s;animation:swFadeUp .5s both}',
'.kb-col.over{background:var(--sw-accent-soft);box-shadow:inset 0 0 0 2px var(--sw-accent)}',
'.kb-h{display:flex;justify-content:space-between;align-items:center;font-weight:700;font-size:13px;margin:2px 4px 10px}',
'.kb-h .n{background:#fff;border-radius:99px;padding:1px 9px;font-size:12px;color:#334155}',
'.kb-card{background:var(--sw-card);border-radius:6px;padding:10px 12px;margin-bottom:10px;cursor:grab;border:1px solid rgba(15,23,42,.06);',
'  box-shadow:0 2px 6px rgba(15,23,42,.06);transition:transform .18s,box-shadow .18s;border-left:4px solid var(--c,#2f5d8a)}',
'.kb-card:hover{transform:translateY(-2px);box-shadow:0 6px 14px rgba(28,31,35,.10)}',
'.kb-card.drag{opacity:.45;transform:scale(.97)}',
'.kb-card a{font-weight:600;color:var(--sw-ink);text-decoration:none;font-size:12px;font-family:"IBM Plex Mono",monospace;border-bottom:2px solid var(--sw-accent)}',
'.kb-card p{margin:4px 0;font-size:12px;color:#475569;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden}',
'.kb-card .f{display:flex;justify-content:space-between;align-items:center;font-size:11px;color:#64748b;margin-top:6px}',
'.kb-card .lt{color:var(--sw-red);font-weight:700}',
'.kb-flash{animation:kbFlash .9s}',
'.kb-legend{display:flex;gap:14px;font-size:12px;color:var(--sw-muted);margin:0 0 12px}.kb-legend i{display:inline-block;width:10px;height:10px;border-radius:3px;margin-right:5px}',
'@keyframes kbFlash{0%{box-shadow:0 0 0 0 rgba(47,125,79,.55)}100%{box-shadow:0 0 0 14px rgba(47,125,79,0)}}',
'</style><div class="kb-legend">Drag a card to move the car to the next step &middot;',
'<span><i style="background:#2f5d8a"></i>Repair</span><span><i style="background:#2f7d4f"></i>Periodic</span>',
'<span><i style="background:#5e3d8a"></i>Warranty</span><span><i style="background:#d9480f"></i>Body</span></div><div class="kb">'';',
'',
'  for s in (select column_value st, rownum rn',
'            from table(sys.odcivarchar2list(''RECEIVED'',''DIAGNOSING'',''WAITING_PARTS'',''IN_PROGRESS'',''QUALITY_CHECK'',''READY'',''DELIVERED'')))',
'  loop',
'    select count(*) into l_cnt from sw_job_cards',
'    where status = s.st and (s.st <> ''DELIVERED'' or delivered_at >= sw_pkg.local_now - 3);',
'    l_html := l_html || ''<div class="kb-col" data-status="'' || s.st || ''" style="animation-delay:'' || to_char(s.rn * 0.05, ''FM0.00'') || ''s">''',
'      || ''<div class="kb-h"><span class="sw-pill sw-s-'' || s.st || ''">'' || sw_pkg.status_label(s.st) || ''</span><span class="n">''',
'      || l_cnt || ''</span></div>'';',
'    for j in (select * from sw_job_cards_v',
'              where status = s.st and (s.st <> ''DELIVERED'' or delivered_at >= sw_pkg.local_now - 3)',
'              order by late_yn desc, promised_at)',
'    loop',
'      l_url := apex_page.get_url(p_page => 9, p_items => ''P9_JOB_CARD_ID'', p_values => j.job_card_id);',
'      l_html := l_html || ''<div class="kb-card" draggable="true" data-id="'' || j.job_card_id || ''" style="--c:''',
'        || case j.service_type when ''PERIODIC'' then ''#2f7d4f'' when ''WARRANTY'' then ''#5e3d8a'' when ''BODY'' then ''#d9480f'' else ''#2f5d8a'' end || ''">''',
'        || ''<a href="'' || l_url || ''">'' || apex_escape.html(j.job_no) || ''</a> &middot; <b style="font-size:12px">''',
'        || apex_escape.html(j.model) || ''</b><p>'' || apex_escape.html(j.customer_complaint) || ''</p>''',
'        || ''<div class="f"><span>'' || case when j.technician_name is not null',
'             then ''<span class="sw-avatar" style="width:22px;height:22px;font-size:9px;margin-right:4px">''',
'                  || upper(substr(j.technician_name, 1, 1)) || ''</span>'' || apex_escape.html(regexp_substr(j.technician_name, ''^\S+''))',
'             else ''Unassigned'' end || ''</span><span'' || case when j.late_yn = ''Y'' then '' class="lt"'' end || ''>''',
'        || to_char(j.promised_at, ''DD-Mon HH:MI'') || ''</span></div></div>'';',
'    end loop;',
'    l_html := l_html || ''</div>'';',
'  end loop;',
'',
'  l_html := l_html || ''</div><script>',
'(function(){',
'  var dragged=null;',
'  document.querySelectorAll(".kb-card").forEach(function(c){',
'    c.addEventListener("dragstart",function(e){dragged=c;c.classList.add("drag");e.dataTransfer.effectAllowed="move";});',
'    c.addEventListener("dragend",function(){c.classList.remove("drag");});',
'  });',
'  function recount(){document.querySelectorAll(".kb-col").forEach(function(col){col.querySelector(".n").textContent=col.querySelectorAll(".kb-card").length;});}',
'  document.querySelectorAll(".kb-col").forEach(function(col){',
'    col.addEventListener("dragover",function(e){e.preventDefault();col.classList.add("over");});',
'    col.addEventListener("dragleave",function(){col.classList.remove("over");});',
'    col.addEventListener("drop",function(e){',
'      e.preventDefault();col.classList.remove("over");',
'      if(!dragged||dragged.parentNode===col)return;',
'      var from=dragged.parentNode,card=dragged,st=col.dataset.status;',
'      col.insertBefore(card,col.children[1]||null);recount();',
'      apex.server.process("SET_STATUS",{x01:card.dataset.id,x02:st}).then(function(){',
'        card.classList.add("kb-flash");',
'        apex.message.showPageSuccess(card.querySelector("a").textContent+" moved to "+col.querySelector(".sw-pill").textContent);',
'      },function(){',
'        from.appendChild(card);recount();',
'        apex.message.alert("Could not update the status. Please try again.");',
'      });',
'    });',
'  });',
'})();',
'</script>'';',
'  return l_html;',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_created_on=>wwv_flow_imp.dz('20261112000127Z')
,p_updated_on=>wwv_flow_imp.dz('20261112001457Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13107089639670776990)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(13096229519130495581)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261112000012Z')
,p_updated_on=>wwv_flow_imp.dz('20261112000012Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13098291004784536621)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_STATUS'
,p_static_id=>'set-status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sw_api.set_status(',
'  p_job_card_id => to_number(apex_application.g_x01),',
'  p_status      => apex_application.g_x02);',
'apex_json.open_object;',
'apex_json.write(''success'', true);',
'apex_json.close_object;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13098291004784536621
,p_created_on=>wwv_flow_imp.dz('20261112000127Z')
,p_updated_on=>wwv_flow_imp.dz('20261112000127Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_imp_page.create_page(
 p_id=>100
,p_name=>'Track My Car'
,p_alias=>'TRACK-MY-CAR'
,p_step_title=>'Track My Car'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// refresh the tracking page every 60 seconds, unless the customer is writing a review',
'setInterval(function () {',
'  var t = document.getElementById("rateTxt");',
'  if (!(t && (t === document.activeElement || t.value))) { location.reload(); }',
'}, 60000);'))
,p_step_template=>2982503008768810240
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20261111232205Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261112001532Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13098289467616536605)
,p_plug_name=>'Tracking Status'
,p_static_id=>'tracking-status'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_html   clob;',
'  l_found  boolean := false;',
'  l_done   boolean;',
'  l_cur    boolean;',
'  l_rating number;',
'begin',
'  l_html := ''<style>',
'body .t-Body-content,.t-Body-main{background-color:var(--sw-bg) !important;',
'  background-image:linear-gradient(rgba(28,31,35,.04) 1px,transparent 1px),linear-gradient(90deg,rgba(28,31,35,.04) 1px,transparent 1px) !important;background-size:24px 24px !important}',
'.trk{max-width:540px;margin:24px auto;padding:24px;border-radius:10px;background:var(--sw-card);border:1px solid var(--sw-line);',
'  border-top:4px solid var(--sw-accent);box-shadow:0 10px 30px rgba(28,31,35,.08);animation:swFadeUp .4s both;font-size:15px}',
'.trk h2{margin:0;font-size:24px;font-weight:700}',
'.trk .sub{color:var(--sw-muted);margin:4px 0 16px}',
'.trk .car{display:flex;align-items:center;gap:12px;padding:12px 14px;border-radius:8px;color:#fff;background:var(--sw-ink);margin-bottom:16px}',
'.trk .car .fa{font-size:26px;color:var(--sw-accent)}.trk .car small{color:#c9c4bb;display:block;font-family:"IBM Plex Mono",monospace;letter-spacing:.05em}',
'.trk .st{font-size:19px;font-weight:700;margin:6px 0 8px}',
'.trk .bar{height:8px;border-radius:4px;background:#ece7df;overflow:hidden}',
'.trk .bar i{display:block;height:100%;border-radius:4px;background:var(--sw-green);animation:swGrow .9s ease-out both}',
'.trk .meta{display:grid;grid-template-columns:1fr 1fr;gap:10px;margin:16px 0}',
'.trk .meta div{border:1px dashed var(--sw-line);border-radius:8px;padding:10px 12px}',
'.trk .meta small{color:var(--sw-muted);display:block;font-size:12px}',
'.trk .meta b{font-family:"IBM Plex Mono",monospace;font-weight:600}',
'.trk ol{list-style:none;padding:0;margin:18px 0 8px}',
'.trk li{padding:8px 0 12px 28px;position:relative;border-left:2px solid #e4ded4;margin-left:8px;color:#a39e95}',
'.trk li:before{content:"";position:absolute;left:-8px;top:10px;width:14px;height:14px;border-radius:50%;background:#e4ded4;border:2px solid var(--sw-card)}',
'.trk li.done{color:var(--sw-ink);border-left-color:var(--sw-green)}.trk li.done:before{background:var(--sw-green)}',
'.trk li.cur:before{background:var(--sw-accent);animation:swPulse 1.8s infinite}.trk li.cur{font-weight:600;color:var(--sw-accent-dark)}',
'.trk li small{display:block;color:var(--sw-muted);font-weight:400;font-family:"IBM Plex Mono",monospace;font-size:11px}',
'.trk .ready{background:#e5f2ea;color:#1f5c38;padding:12px 14px;border-radius:8px;font-weight:600;border:1px solid #c9e3d3}',
'.rate{margin-top:16px;padding:16px;border-radius:8px;border:1px dashed var(--sw-line);text-align:center}',
'.stars{font-size:32px;letter-spacing:4px;cursor:pointer;user-select:none}',
'.stars span{color:#ddd6cb;transition:color .15s,transform .15s;display:inline-block}',
'.stars span.on{color:#e0a100}.stars span:hover{transform:scale(1.15)}',
'.rate textarea{width:100%;margin-top:10px;border-radius:6px;border:1px solid var(--sw-line);padding:10px;font:inherit;min-height:60px;background:#fff}',
'.rate button{margin-top:10px;border:0;border-radius:6px;padding:10px 22px;color:#fff;font-weight:600;cursor:pointer;background:var(--sw-accent)}',
'.rate button:hover{background:var(--sw-accent-dark)}',
'.trk .foot{color:#a39e95;font-size:12px;text-align:center;margin-top:14px}',
'</style><div class="trk">'';',
'',
'  for j in (select * from sw_job_cards_v where tracking_token = :P100_T) loop',
'    l_found := true;',
'    select max(rating) into l_rating from sw_feedback where job_card_id = j.job_card_id;',
'',
'    l_html := l_html',
'      || ''<h2>Hello '' || apex_escape.html(regexp_substr(j.customer_name, ''^\S+'')) || '' &#128075;</h2>''',
'      || ''<div class="sub">Here is your car, live from the workshop.</div>''',
'      || ''<div class="car"><span class="fa fa-car"></span><div><b>'' || apex_escape.html(j.make || '' '' || j.model || '' '' || j.model_year)',
'      || ''</b><small>'' || apex_escape.html(j.plate_no) || '' &middot; Job '' || apex_escape.html(j.job_no) || ''</small></div></div>''',
'      || ''<div class="st">'' || apex_escape.html(j.status_label) || ''</div>''',
'      || ''<div class="bar"><i style="width:'' || j.status_pct || ''%"></i></div>'';',
'',
'    if j.status = ''READY'' then',
'      l_html := l_html || ''<p class="ready">&#9989; Your car is ready. You can pick it up any time during working hours.</p>'';',
'    end if;',
'',
'    l_html := l_html || ''<div class="meta"><div><small>Expected ready</small><b>''',
'      || nvl(to_char(j.promised_at, ''Dy DD-Mon HH:MI AM''), ''-'') || ''</b></div><div><small>Estimated cost</small><b>''',
'      || case when j.service_type = ''WARRANTY'' then ''Covered by warranty'' when j.estimated_cost is null then ''-'' else to_char(j.estimated_cost, ''FM999G999G990'') || '' EGP'' end || ''</b></div></div><ol>'';',
'',
'    for s in (select column_value st,',
'                     (select max(l.changed_at) from sw_job_status_log l',
'                      where l.job_card_id = j.job_card_id and l.status = column_value) at_time',
'              from table(sys.odcivarchar2list(''RECEIVED'',''DIAGNOSING'',''IN_PROGRESS'',''QUALITY_CHECK'',''READY'',''DELIVERED'')))',
'    loop',
'      l_cur  := (s.st = j.status and j.status <> ''DELIVERED'') or (j.status = ''WAITING_PARTS'' and s.st = ''IN_PROGRESS'');',
'      l_done := not l_cur and sw_pkg.status_pct(s.st) <= j.status_pct and not (s.st = ''DELIVERED'' and j.status <> ''DELIVERED'');',
'      l_html := l_html || ''<li class="'' || case when l_cur then ''cur'' when l_done then ''done'' end || ''">''',
'        || apex_escape.html(case when l_cur and j.status = ''WAITING_PARTS'' then ''Waiting for parts'' else sw_pkg.status_label(s.st) end)',
'        || case when s.at_time is not null then ''<small>'' || to_char(s.at_time, ''DD-Mon HH:MI AM'') || ''</small>'' end || ''</li>'';',
'    end loop;',
'    l_html := l_html || ''</ol>'';',
'',
'    if j.status in (''READY'', ''DELIVERED'') then',
'      l_html := l_html || ''<div class="rate" id="rate"><b>'' || case when l_rating is null then ''How was your service?'' else ''Thanks for rating us!'' end',
'        || ''</b><div class="stars" data-v="'' || nvl(l_rating, 0) || ''">'';',
'      for k in 1 .. 5 loop',
'        l_html := l_html || ''<span data-k="'' || k || ''"'' || case when k <= nvl(l_rating, 0) then '' class="on"'' end || ''>&#9733;</span>'';',
'      end loop;',
'      l_html := l_html || ''</div><textarea id="rateTxt" placeholder="Anything we can do better? (optional)"></textarea>''',
'        || ''<button type="button" id="rateBtn">Send rating</button></div>''',
'        || ''<script>(function(){var box=document.querySelector(".stars"),v=+box.dataset.v;',
'function paint(n){box.querySelectorAll("span").forEach(function(s){s.classList.toggle("on",+s.dataset.k<=n);});}',
'box.querySelectorAll("span").forEach(function(s){s.onmouseenter=function(){paint(+s.dataset.k);};s.onclick=function(){v=+s.dataset.k;paint(v);};});',
'box.onmouseleave=function(){paint(v);};',
'document.getElementById("rateBtn").onclick=function(){if(!v){apex.message.alert("Please choose 1 to 5 stars.");return;}',
'apex.server.process("SAVE_FEEDBACK",{x01:'' || apex_escape.js_literal(:P100_T, ''"'') || '',x02:v,x03:document.getElementById("rateTxt").value})',
'.then(function(){document.getElementById("rate").innerHTML="<b>Thank you! &#127881;</b><div class=\"stars\">"+"<span class=\"on\">&#9733;</span>".repeat(v)+"</div>";},',
'function(){apex.message.alert("Sorry, the rating could not be saved.");});};})();</script>'';',
'    end if;',
'    l_html := l_html || ''<div class="foot">Refreshes automatically every minute &middot; Last update ''',
'      || to_char(sw_pkg.local_now, ''HH:MI AM'') || ''</div>'';',
'  end loop;',
'',
'  if not l_found then',
'    l_html := l_html || ''<h2>Link not valid</h2><p class="sub">Please check the link sent by your service advisor.</p>'';',
'  end if;',
'',
'  return l_html || ''</div>'';',
'end;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_created_on=>wwv_flow_imp.dz('20261111232333Z')
,p_updated_on=>wwv_flow_imp.dz('20261112001532Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13098289390501536604)
,p_name=>'P100_T'
,p_item_sequence=>10
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111232333Z')
,p_updated_on=>wwv_flow_imp.dz('20261111232333Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13098290979617536620)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_FEEDBACK'
,p_static_id=>'save-feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sw_api.save_feedback(',
'  p_token    => apex_application.g_x01,',
'  p_rating   => to_number(apex_application.g_x02),',
'  p_comments => apex_application.g_x03);',
'apex_json.open_object;',
'apex_json.write(''success'', true);',
'apex_json.close_object;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13098290979617536620
,p_created_on=>wwv_flow_imp.dz('20261111235900Z')
,p_updated_on=>wwv_flow_imp.dz('20261111235900Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Smart Workshop - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2104585595298951431
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_last_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13096240413321495614)
,p_plug_name=>'Smart Workshop'
,p_static_id=>'smart-workshop'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677585639786677191
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13096242054630495625)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13096240413321495614)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096241392032495624)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13096240413321495614)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096241751168495625)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13096240413321495614)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13096240988002495623)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13096240413321495614)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096246166579495629)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13096246166579495629
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096245779214495629)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13096245779214495629
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096242481036495626)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13096242481036495626
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(13096243412026495627)
,p_page_process_id=>wwv_flow_imp.id(13096242481036495626)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(13096243931015495627)
,p_page_process_id=>wwv_flow_imp.id(13096242481036495626)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(13096242986952495626)
,p_page_process_id=>wwv_flow_imp.id(13096242481036495626)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13096244397812495627)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13096244397812495627
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(13096245366834495628)
,p_page_process_id=>wwv_flow_imp.id(13096244397812495627)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(13096244811514495628)
,p_page_process_id=>wwv_flow_imp.id(13096244397812495627)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20261111231318Z')
,p_updated_on=>wwv_flow_imp.dz('20261111231318Z')
,p_created_by=>'MO878015@GMAIL.COM'
,p_updated_by=>'MO878015@GMAIL.COM'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done

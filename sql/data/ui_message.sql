--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: ui_message; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO ui_message (ui_message) VALUES ('day');
INSERT INTO ui_message (ui_message) VALUES ('sidebar::new');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::arrival::transport_type');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::departure');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::departure::from');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::departure::to');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::departure::date');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::departure::time');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::departure::number');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::departure::transport_type');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find::event::title_subtitle');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find::event::status');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find::event::time');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find::event::room');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find::event::day');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find::event::progress');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find::event::duration');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::conference::tab::teams');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::tab::availability');
INSERT INTO ui_message (ui_message) VALUES ('link::my_events');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::address');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find_person::tab::simple');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find_person::tab::advanced');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find_event::tab::simple');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find_event::tab::advanced');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find_conference::tab::simple');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::find_conference::tab::advanced');
INSERT INTO ui_message (ui_message) VALUES ('schedule::speakers');
INSERT INTO ui_message (ui_message) VALUES ('schedule::speaker');
INSERT INTO ui_message (ui_message) VALUES ('schedule::event');
INSERT INTO ui_message (ui_message) VALUES ('schedule::events');
INSERT INTO ui_message (ui_message) VALUES ('schedule::day');
INSERT INTO ui_message (ui_message) VALUES ('schedule::schedule');
INSERT INTO ui_message (ui_message) VALUES ('schedule::room');
INSERT INTO ui_message (ui_message) VALUES ('schedule::start_time');
INSERT INTO ui_message (ui_message) VALUES ('schedule::language');
INSERT INTO ui_message (ui_message) VALUES ('schedule::event_type');
INSERT INTO ui_message (ui_message) VALUES ('schedule::event_duration');
INSERT INTO ui_message (ui_message) VALUES ('schedule::did_you_attend_this_event');
INSERT INTO ui_message (ui_message) VALUES ('schedule::give_feedback');
INSERT INTO ui_message (ui_message) VALUES ('schedule::attachments');
INSERT INTO ui_message (ui_message) VALUES ('schedule::links');
INSERT INTO ui_message (ui_message) VALUES ('feedback::welcome_to_the_feedback_system');
INSERT INTO ui_message (ui_message) VALUES ('feedback::my_rating');
INSERT INTO ui_message (ui_message) VALUES ('feedback::my_opinion');
INSERT INTO ui_message (ui_message) VALUES ('feedback::please_answer_these_questions');
INSERT INTO ui_message (ui_message) VALUES ('feedback::rating_category');
INSERT INTO ui_message (ui_message) VALUES ('feedback::no_rating');
INSERT INTO ui_message (ui_message) VALUES ('feedback::question_participant_knowledge');
INSERT INTO ui_message (ui_message) VALUES ('feedback::question_topic_importance');
INSERT INTO ui_message (ui_message) VALUES ('feedback::question_content_quality');
INSERT INTO ui_message (ui_message) VALUES ('feedback::question_presentation_quality');
INSERT INTO ui_message (ui_message) VALUES ('feedback::question_audience_involvement');
INSERT INTO ui_message (ui_message) VALUES ('feedback::submit');
INSERT INTO ui_message (ui_message) VALUES ('feedback::criticism');
INSERT INTO ui_message (ui_message) VALUES ('schedule::all_days');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::arrival');
INSERT INTO ui_message (ui_message) VALUES ('submission::event::introduction');
INSERT INTO ui_message (ui_message) VALUES ('submission::event::introduction::hint');
INSERT INTO ui_message (ui_message) VALUES ('pentabarf::overview::introduction');
INSERT INTO ui_message (ui_message) VALUES ('submission::events::introduction');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::arrival::from');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::arrival::to');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::arrival::date');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::event::tab::links::introduction');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::event::tab::feedback::introduction');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::arrival::time');
INSERT INTO ui_message (ui_message) VALUES ('form::unknown');
INSERT INTO ui_message (ui_message) VALUES ('form::yes');
INSERT INTO ui_message (ui_message) VALUES ('form::no');
INSERT INTO ui_message (ui_message) VALUES ('form::button::add_attachment');
INSERT INTO ui_message (ui_message) VALUES ('form::button::add_attachment::hint');
INSERT INTO ui_message (ui_message) VALUES ('<[table::event::event_attachment::type]>');
INSERT INTO ui_message (ui_message) VALUES ('form::button::add_link');
INSERT INTO ui_message (ui_message) VALUES ('form::button::add_link::hint');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::properties');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::names');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::account');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::password');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::repeat_password');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::ui_language');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::preferences');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::links::introduction');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::links');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::abstract');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::abstract::introduction');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::description::introduction');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::description');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::pickup');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::permissions');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::hits_per_page');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::login_name');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::last_activity');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::photo');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::delete_image');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::photo::public');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel::arrival::number');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::bank_account');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::travel');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::accommodation');
INSERT INTO ui_message (ui_message) VALUES ('link::preferences');
INSERT INTO ui_message (ui_message) VALUES ('link::find_person');
INSERT INTO ui_message (ui_message) VALUES ('link::find_event');
INSERT INTO ui_message (ui_message) VALUES ('link::find_conference');
INSERT INTO ui_message (ui_message) VALUES ('link::new_person');
INSERT INTO ui_message (ui_message) VALUES ('link::new_event');
INSERT INTO ui_message (ui_message) VALUES ('link::new_conference');
INSERT INTO ui_message (ui_message) VALUES ('link::pentabarf_wiki');
INSERT INTO ui_message (ui_message) VALUES ('link::pentabarf_bugtracker');
INSERT INTO ui_message (ui_message) VALUES ('sidebar::find');
INSERT INTO ui_message (ui_message) VALUES ('form::cancel');
INSERT INTO ui_message (ui_message) VALUES ('form::save');
INSERT INTO ui_message (ui_message) VALUES ('link::review');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::event::tab::general');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::event::tab::persons');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::event::tab::description');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::event::tab::links');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::event::tab::schedule');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::event::tab::rating');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::event::tab::resources');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::event::tab::related');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::event::tab::feedback');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::conference::tab::general');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::conference::tab::persons');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::conference::tab::tracks');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::conference::tab::rooms');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::conference::tab::events');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::conference::tab::export');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::conference::tab::feedback');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::tab::general');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::tab::events');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::tab::contact');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::tab::description');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::tab::links');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::tab::rating');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::tab::travel');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::tab::account');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::index::tab::coordinator');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::index::tab::participant');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::other_events');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::spoken_languages');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::add_language');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::add_event');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::email');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::add_phone_number');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::phone');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::add_im_address');
INSERT INTO ui_message (ui_message) VALUES ('view::pentabarf::person::instant_messaging');
INSERT INTO ui_message (ui_message) VALUES ('link::conflict_setup');
INSERT INTO ui_message (ui_message) VALUES ('link::admin');
INSERT INTO ui_message (ui_message) VALUES ('link::localization');
INSERT INTO ui_message (ui_message) VALUES ('form::remove');
INSERT INTO ui_message (ui_message) VALUES ('link::schedule');
INSERT INTO ui_message (ui_message) VALUES ('tabs::show_all');
INSERT INTO ui_message (ui_message) VALUES ('link::startpage');
INSERT INTO ui_message (ui_message) VALUES ('link::recent_changes');
INSERT INTO ui_message (ui_message) VALUES ('link::reports');
INSERT INTO ui_message (ui_message) VALUES ('link::conflicts');
INSERT INTO ui_message (ui_message) VALUES ('spoken languages');
INSERT INTO ui_message (ui_message) VALUES ('language');
INSERT INTO ui_message (ui_message) VALUES ('remove');
INSERT INTO ui_message (ui_message) VALUES ('add language');
INSERT INTO ui_message (ui_message) VALUES ('availability');
INSERT INTO ui_message (ui_message) VALUES ('events');
INSERT INTO ui_message (ui_message) VALUES ('title');
INSERT INTO ui_message (ui_message) VALUES ('role');
INSERT INTO ui_message (ui_message) VALUES ('role_state');
INSERT INTO ui_message (ui_message) VALUES ('comment');
INSERT INTO ui_message (ui_message) VALUES ('add event');
INSERT INTO ui_message (ui_message) VALUES ('events in other conferences');
INSERT INTO ui_message (ui_message) VALUES ('email');
INSERT INTO ui_message (ui_message) VALUES ('im address');
INSERT INTO ui_message (ui_message) VALUES ('im type');
INSERT INTO ui_message (ui_message) VALUES ('add im address');
INSERT INTO ui_message (ui_message) VALUES ('phone number');
INSERT INTO ui_message (ui_message) VALUES ('phone type');
INSERT INTO ui_message (ui_message) VALUES ('add phone address');
INSERT INTO ui_message (ui_message) VALUES ('address');
INSERT INTO ui_message (ui_message) VALUES ('abstract');
INSERT INTO ui_message (ui_message) VALUES ('description');
INSERT INTO ui_message (ui_message) VALUES ('links');
INSERT INTO ui_message (ui_message) VALUES ('url');
INSERT INTO ui_message (ui_message) VALUES ('add link');
INSERT INTO ui_message (ui_message) VALUES ('internal links');
INSERT INTO ui_message (ui_message) VALUES ('url type');
INSERT INTO ui_message (ui_message) VALUES ('add internal link');
INSERT INTO ui_message (ui_message) VALUES ('rating');
INSERT INTO ui_message (ui_message) VALUES ('travel');
INSERT INTO ui_message (ui_message) VALUES ('arrival');
INSERT INTO ui_message (ui_message) VALUES ('departure');
INSERT INTO ui_message (ui_message) VALUES ('accommodation');
INSERT INTO ui_message (ui_message) VALUES ('bank');
INSERT INTO ui_message (ui_message) VALUES ('account');
INSERT INTO ui_message (ui_message) VALUES ('password');
INSERT INTO ui_message (ui_message) VALUES ('repeat password');
INSERT INTO ui_message (ui_message) VALUES ('permissions');
INSERT INTO ui_message (ui_message) VALUES ('own_events');
INSERT INTO ui_message (ui_message) VALUES ('created');
INSERT INTO ui_message (ui_message) VALUES ('persons');
INSERT INTO ui_message (ui_message) VALUES ('person');
INSERT INTO ui_message (ui_message) VALUES ('add person');
INSERT INTO ui_message (ui_message) VALUES ('attachments');
INSERT INTO ui_message (ui_message) VALUES ('type');
INSERT INTO ui_message (ui_message) VALUES ('public');
INSERT INTO ui_message (ui_message) VALUES ('filename');
INSERT INTO ui_message (ui_message) VALUES ('file');
INSERT INTO ui_message (ui_message) VALUES ('add attachment');
INSERT INTO ui_message (ui_message) VALUES ('participant_knowledge');
INSERT INTO ui_message (ui_message) VALUES ('topic_importance');
INSERT INTO ui_message (ui_message) VALUES ('content_quality');
INSERT INTO ui_message (ui_message) VALUES ('presentation_quality');
INSERT INTO ui_message (ui_message) VALUES ('audience_involvement');
INSERT INTO ui_message (ui_message) VALUES ('conflicts');
INSERT INTO ui_message (ui_message) VALUES ('pages');
INSERT INTO ui_message (ui_message) VALUES ('mime_type');
INSERT INTO ui_message (ui_message) VALUES ('other ratings');
INSERT INTO ui_message (ui_message) VALUES ('events_by_state');
INSERT INTO ui_message (ui_message) VALUES ('event_person');
INSERT INTO ui_message (ui_message) VALUES ('time');
INSERT INTO ui_message (ui_message) VALUES ('table_name');
INSERT INTO ui_message (ui_message) VALUES ('field_name');
INSERT INTO ui_message (ui_message) VALUES ('field_type');
INSERT INTO ui_message (ui_message) VALUES ('not_null');
INSERT INTO ui_message (ui_message) VALUES ('add custom field');
INSERT INTO ui_message (ui_message) VALUES ('conference languages');
INSERT INTO ui_message (ui_message) VALUES ('add conference language');
INSERT INTO ui_message (ui_message) VALUES ('conference days');
INSERT INTO ui_message (ui_message) VALUES ('date');
INSERT INTO ui_message (ui_message) VALUES ('name');
INSERT INTO ui_message (ui_message) VALUES ('add conference day');
INSERT INTO ui_message (ui_message) VALUES ('teams');
INSERT INTO ui_message (ui_message) VALUES ('team');
INSERT INTO ui_message (ui_message) VALUES ('add conference team');
INSERT INTO ui_message (ui_message) VALUES ('tracks');
INSERT INTO ui_message (ui_message) VALUES ('track');
INSERT INTO ui_message (ui_message) VALUES ('add conference track');
INSERT INTO ui_message (ui_message) VALUES ('rooms');
INSERT INTO ui_message (ui_message) VALUES ('rank');
INSERT INTO ui_message (ui_message) VALUES ('size');
INSERT INTO ui_message (ui_message) VALUES ('add conference room');
INSERT INTO ui_message (ui_message) VALUES ('schedule_export');
INSERT INTO ui_message (ui_message) VALUES ('ical');
INSERT INTO ui_message (ui_message) VALUES ('xcal');
INSERT INTO ui_message (ui_message) VALUES ('event');
INSERT INTO ui_message (ui_message) VALUES ('event_state');
INSERT INTO ui_message (ui_message) VALUES ('event_state_progress');
INSERT INTO ui_message (ui_message) VALUES ('conference_person');
INSERT INTO ui_message (ui_message) VALUES ('custom_conference_person');
INSERT INTO ui_message (ui_message) VALUES ('custom_person');
INSERT INTO ui_message (ui_message) VALUES ('conference_person::reconfirmed');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::accommodation_name');
INSERT INTO ui_message (ui_message) VALUES ('conference::conference_phase_id');
INSERT INTO ui_message (ui_message) VALUES ('conference::country_id');
INSERT INTO ui_message (ui_message) VALUES ('conference::css');
INSERT INTO ui_message (ui_message) VALUES ('conference::currency_id');
INSERT INTO ui_message (ui_message) VALUES ('conference::days');
INSERT INTO ui_message (ui_message) VALUES ('conference::export_base_url');
INSERT INTO ui_message (ui_message) VALUES ('conference::feedback_base_url');
INSERT INTO ui_message (ui_message) VALUES ('conference::homepage');
INSERT INTO ui_message (ui_message) VALUES ('conference_image::image');
INSERT INTO ui_message (ui_message) VALUES ('conference::max_timeslot_duration');
INSERT INTO ui_message (ui_message) VALUES ('conference_person::remark');
INSERT INTO ui_message (ui_message) VALUES ('conference::release');
INSERT INTO ui_message (ui_message) VALUES ('event::event_origin_id');
INSERT INTO ui_message (ui_message) VALUES ('event::event_state_id');
INSERT INTO ui_message (ui_message) VALUES ('event::event_state_progress_id');
INSERT INTO ui_message (ui_message) VALUES ('event::event_type_id');
INSERT INTO ui_message (ui_message) VALUES ('event_image::image');
INSERT INTO ui_message (ui_message) VALUES ('event::language_id');
INSERT INTO ui_message (ui_message) VALUES ('event_rating::acceptance');
INSERT INTO ui_message (ui_message) VALUES ('event_rating::actuality');
INSERT INTO ui_message (ui_message) VALUES ('event_rating::relevance');
INSERT INTO ui_message (ui_message) VALUES ('event_rating::remark');
INSERT INTO ui_message (ui_message) VALUES ('person::account_owner');
INSERT INTO ui_message (ui_message) VALUES ('person::bank_name');
INSERT INTO ui_message (ui_message) VALUES ('person::bic');
INSERT INTO ui_message (ui_message) VALUES ('person::country_id');
INSERT INTO ui_message (ui_message) VALUES ('person::iban');
INSERT INTO ui_message (ui_message) VALUES ('person_image::public');
INSERT INTO ui_message (ui_message) VALUES ('person_image::image');
INSERT INTO ui_message (ui_message) VALUES ('person_rating::competence');
INSERT INTO ui_message (ui_message) VALUES ('person_rating::remark');
INSERT INTO ui_message (ui_message) VALUES ('person_rating::speaker_quality');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::accommodation_city');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::accommodation_cost');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::accommodation_phone');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::accommodation_phone_room');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::accommodation_postcode');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::accommodation_street');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::arrival_date');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::arrival_from');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::arrival_number');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::arrival_time');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::arrival_to');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::arrival_transport');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::departure_date');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::departure_from');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::departure_number');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::departure_time');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::departure_to');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::departure_transport');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::arrival_pickup');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::departure_pickup');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::fee');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::need_accommodation_cost');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::need_accommodation');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::need_travel_cost');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::travel_cost');
INSERT INTO ui_message (ui_message) VALUES ('event::submission_notes');
INSERT INTO ui_message (ui_message) VALUES ('event_feedback::participant_knowledge');
INSERT INTO ui_message (ui_message) VALUES ('event_feedback::topic_importance');
INSERT INTO ui_message (ui_message) VALUES ('event_feedback::content_quality');
INSERT INTO ui_message (ui_message) VALUES ('event_feedback::presentation_quality');
INSERT INTO ui_message (ui_message) VALUES ('event_feedback::audience_involvement');
INSERT INTO ui_message (ui_message) VALUES ('conference::timezone');
INSERT INTO ui_message (ui_message) VALUES ('person::street');
INSERT INTO ui_message (ui_message) VALUES ('person::street_postcode');
INSERT INTO ui_message (ui_message) VALUES ('person::po_box');
INSERT INTO ui_message (ui_message) VALUES ('person::po_box_postcode');
INSERT INTO ui_message (ui_message) VALUES ('person::city');
INSERT INTO ui_message (ui_message) VALUES ('person::country');
INSERT INTO ui_message (ui_message) VALUES ('person::email');
INSERT INTO ui_message (ui_message) VALUES ('event::event_type');
INSERT INTO ui_message (ui_message) VALUES ('conference::abstract_length');
INSERT INTO ui_message (ui_message) VALUES ('conference::description_length');
INSERT INTO ui_message (ui_message) VALUES ('event::subtitle::hint');
INSERT INTO ui_message (ui_message) VALUES ('event::title::hint');
INSERT INTO ui_message (ui_message) VALUES ('event::abstract::introduction');
INSERT INTO ui_message (ui_message) VALUES ('event::description::introduction');
INSERT INTO ui_message (ui_message) VALUES ('event::attachments::introduction');
INSERT INTO ui_message (ui_message) VALUES ('event::attachments');
INSERT INTO ui_message (ui_message) VALUES ('event::resources');
INSERT INTO ui_message (ui_message) VALUES ('event::resources::introduction');
INSERT INTO ui_message (ui_message) VALUES ('event::event_attachment::type');
INSERT INTO ui_message (ui_message) VALUES ('event::event_attachment::public');
INSERT INTO ui_message (ui_message) VALUES ('event::event_attachment::filename');
INSERT INTO ui_message (ui_message) VALUES ('event::event_attachment::title');
INSERT INTO ui_message (ui_message) VALUES ('event::event_attachment::pages');
INSERT INTO ui_message (ui_message) VALUES ('event::event_attachment::mime_type');
INSERT INTO ui_message (ui_message) VALUES ('event::event_attachment::upload_time');
INSERT INTO ui_message (ui_message) VALUES ('event::event_attachment::file');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_link::url');
INSERT INTO ui_message (ui_message) VALUES ('conference::email');
INSERT INTO ui_message (ui_message) VALUES ('event::title');
INSERT INTO ui_message (ui_message) VALUES ('event::subtitle');
INSERT INTO ui_message (ui_message) VALUES ('event::tag');
INSERT INTO ui_message (ui_message) VALUES ('event::event_origin');
INSERT INTO ui_message (ui_message) VALUES ('event::event_state');
INSERT INTO ui_message (ui_message) VALUES ('event::event_state_progress');
INSERT INTO ui_message (ui_message) VALUES ('event::public');
INSERT INTO ui_message (ui_message) VALUES ('event::paper');
INSERT INTO ui_message (ui_message) VALUES ('event::slides');
INSERT INTO ui_message (ui_message) VALUES ('event::language');
INSERT INTO ui_message (ui_message) VALUES ('event::type');
INSERT INTO ui_message (ui_message) VALUES ('event::conference');
INSERT INTO ui_message (ui_message) VALUES ('event_person::person');
INSERT INTO ui_message (ui_message) VALUES ('event_person::event_role');
INSERT INTO ui_message (ui_message) VALUES ('event_person::event_role_state');
INSERT INTO ui_message (ui_message) VALUES ('event_person::remark');
INSERT INTO ui_message (ui_message) VALUES ('event::abstract');
INSERT INTO ui_message (ui_message) VALUES ('event::description');
INSERT INTO ui_message (ui_message) VALUES ('event::room');
INSERT INTO ui_message (ui_message) VALUES ('event::duration');
INSERT INTO ui_message (ui_message) VALUES ('event::start_time');
INSERT INTO ui_message (ui_message) VALUES ('person::nickname');
INSERT INTO ui_message (ui_message) VALUES ('person::public_name');
INSERT INTO ui_message (ui_message) VALUES ('person::last_name');
INSERT INTO ui_message (ui_message) VALUES ('person::first_name');
INSERT INTO ui_message (ui_message) VALUES ('person::title');
INSERT INTO ui_message (ui_message) VALUES ('person::gender');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_link::title');
INSERT INTO ui_message (ui_message) VALUES ('conference::default_timeslots');
INSERT INTO ui_message (ui_message) VALUES ('event_link::url');
INSERT INTO ui_message (ui_message) VALUES ('event_link::title');
INSERT INTO ui_message (ui_message) VALUES ('event::remark');
INSERT INTO ui_message (ui_message) VALUES ('conference::remark');
INSERT INTO ui_message (ui_message) VALUES ('conference::acronym');
INSERT INTO ui_message (ui_message) VALUES ('conference::title');
INSERT INTO ui_message (ui_message) VALUES ('conference::subtitle');
INSERT INTO ui_message (ui_message) VALUES ('conference::conference_phase');
INSERT INTO ui_message (ui_message) VALUES ('conference::venue');
INSERT INTO ui_message (ui_message) VALUES ('conference::city');
INSERT INTO ui_message (ui_message) VALUES ('conference::country');
INSERT INTO ui_message (ui_message) VALUES ('conference::start_date');
INSERT INTO ui_message (ui_message) VALUES ('conference::duration');
INSERT INTO ui_message (ui_message) VALUES ('conference::currency');
INSERT INTO ui_message (ui_message) VALUES ('conference::timeslot_duration');
INSERT INTO ui_message (ui_message) VALUES ('conference::max_timeslots_per_event');
INSERT INTO ui_message (ui_message) VALUES ('conference::day_change');
INSERT INTO ui_message (ui_message) VALUES ('conference_track::tag');
INSERT INTO ui_message (ui_message) VALUES ('conference_track::color');
INSERT INTO ui_message (ui_message) VALUES ('person::remark');
INSERT INTO ui_message (ui_message) VALUES ('person_language::language');
INSERT INTO ui_message (ui_message) VALUES ('person::spam');
INSERT INTO ui_message (ui_message) VALUES ('person_im::im_type');
INSERT INTO ui_message (ui_message) VALUES ('person_im::im_address');
INSERT INTO ui_message (ui_message) VALUES ('person_phone::phone_type');
INSERT INTO ui_message (ui_message) VALUES ('person_phone::phone_number');
INSERT INTO ui_message (ui_message) VALUES ('person::address');
INSERT INTO ui_message (ui_message) VALUES ('conference::f_feedback_enabled');
INSERT INTO ui_message (ui_message) VALUES ('conference::f_reconfirmation_enabled');
INSERT INTO ui_message (ui_message) VALUES ('conference::f_submission_enabled');
INSERT INTO ui_message (ui_message) VALUES ('conference::f_visitor_enabled');
INSERT INTO ui_message (ui_message) VALUES ('conference_person::email');
INSERT INTO ui_message (ui_message) VALUES ('account::login_name');
INSERT INTO ui_message (ui_message) VALUES ('event::conference_team');
INSERT INTO ui_message (ui_message) VALUES ('event::conference_room');
INSERT INTO ui_message (ui_message) VALUES ('event::conference_track');
INSERT INTO ui_message (ui_message) VALUES ('conference_person::arrived');
INSERT INTO ui_message (ui_message) VALUES ('event::conference_day');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::accommodation_currency');
INSERT INTO ui_message (ui_message) VALUES ('event_feedback::remark');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::fee_currency');
INSERT INTO ui_message (ui_message) VALUES ('conference_person_travel::travel_currency');
INSERT INTO ui_message (ui_message) VALUES ('ui_message::ui_message');
INSERT INTO ui_message (ui_message) VALUES ('ui_message_localized::name');
INSERT INTO ui_message (ui_message) VALUES ('ui_message_localized::translated');
INSERT INTO ui_message (ui_message) VALUES ('ui_message_localized::ui_message');
INSERT INTO ui_message (ui_message) VALUES ('account::current_language');
INSERT INTO ui_message (ui_message) VALUES ('custom_conference_person::cp_feld1');
INSERT INTO ui_message (ui_message) VALUES ('custom_event::e_feld1');
INSERT INTO ui_message (ui_message) VALUES ('custom_conference::c_feld1');
INSERT INTO ui_message (ui_message) VALUES ('custom_person::p_feld1');
INSERT INTO ui_message (ui_message) VALUES ('event_person::event_id');
INSERT INTO ui_message (ui_message) VALUES ('event_person::person_id');
INSERT INTO ui_message (ui_message) VALUES ('event::conference_id');
INSERT INTO ui_message (ui_message) VALUES ('submission_visible');
INSERT INTO ui_message (ui_message) VALUES ('submission_settable');
INSERT INTO ui_message (ui_message) VALUES ('custom_fields::table_name');
INSERT INTO ui_message (ui_message) VALUES ('custom_fields::field_name');
INSERT INTO ui_message (ui_message) VALUES ('custom_fields::field_type');
INSERT INTO ui_message (ui_message) VALUES ('custom_fields::submission_visible');
INSERT INTO ui_message (ui_message) VALUES ('custom_fields::submission_settable');
INSERT INTO ui_message (ui_message) VALUES ('custom_fields');


--
-- PostgreSQL database dump complete
--


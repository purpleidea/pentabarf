
-- view for ui_messages with fallback to tag
CREATE OR REPLACE VIEW view_ui_message AS 
   SELECT ui_message_id, 
          language_id, 
          tag, 
          coalesce(name,tag) AS name, 
          language_tag
      FROM ( SELECT language_id, ui_message_id, ui_message.tag, language.tag AS language_tag FROM language CROSS JOIN ui_message) AS all_lang 
             LEFT OUTER JOIN ui_message_localized USING (language_id, ui_message_id);

-- view for languages
CREATE OR REPLACE VIEW view_language AS
  SELECT translated_id,
         iso_639_code,
         tag,
         f_default,
         f_localized,
         f_visible,
         f_preferred,
         coalesce(name,tag) AS name,
         language_id,
         language_tag
    FROM ( SELECT language.language_id AS translated_id,
                  language.iso_639_code,
                  language.tag,
                  language.f_default,
                  language.f_localized,
                  language.f_visible,
                  language.f_preferred,
                  lang.language_id,
                  lang.tag AS language_tag
              FROM language CROSS JOIN language AS lang
        ) AS all_lang
    LEFT OUTER JOIN language_localized USING (language_id, translated_id);
         

-- view for country with fallback to tag
CREATE OR REPLACE VIEW view_country AS 
   SELECT country_id, 
          language_id, 
          tag, 
          coalesce(name,tag) AS name, 
          language_tag
      FROM ( SELECT language_id, 
                    country_id, 
                    country.iso_3166_code AS tag, 
                    country.phone_prefix, 
                    language.tag AS language_tag 
                FROM language CROSS JOIN country WHERE country.f_visible = 't' ) AS all_lang 
             LEFT OUTER JOIN country_localized USING (language_id, country_id) ORDER BY lower(name);

-- view for currency with fallback to tag
CREATE OR REPLACE VIEW view_currency AS 
   SELECT currency_id, language_id, tag, coalesce(name,tag) AS name, language_tag
      FROM ( SELECT language_id, currency_id, currency.iso_4217_code AS tag, currency.f_default, currency.exchange_rate, language.tag AS language_tag FROM language CROSS JOIN currency WHERE currency.f_visible = 't' ) AS all_lang 
             LEFT OUTER JOIN currency_localized USING (language_id, currency_id);

-- view for transport with fallback to tag
CREATE OR REPLACE VIEW view_transport AS 
   SELECT transport_id, 
          language_id, 
          tag, 
          coalesce(name,tag) AS name, 
          rank, 
          language_tag
      FROM ( SELECT language_id, transport_id, transport.tag, transport.rank, language.tag AS language_tag FROM language CROSS JOIN transport) AS all_lang 
             LEFT OUTER JOIN transport_localized USING (language_id, transport_id);

-- view for event_origin with fallback to tag
CREATE OR REPLACE VIEW view_event_origin AS 
   SELECT event_origin_id, 
          language_id, 
          tag, 
          coalesce(name,tag) AS name, 
          rank, 
          language_tag
      FROM ( SELECT language_id, event_origin_id, event_origin.tag, event_origin.rank, language.tag AS language_tag FROM language CROSS JOIN event_origin) AS all_lang 
             LEFT OUTER JOIN event_origin_localized USING (language_id, event_origin_id);

-- view for im_type with fallback to tag
CREATE OR REPLACE VIEW view_im_type AS 
   SELECT im_type_id, 
          language_id, 
          scheme, 
          tag, 
          coalesce(name,tag) AS name, 
          rank, 
          language_tag
      FROM ( SELECT language_id, im_type_id, im_type.scheme, im_type.tag, im_type.rank, language.tag AS language_tag FROM language CROSS JOIN im_type) AS all_lang 
             LEFT OUTER JOIN im_type_localized USING (language_id, im_type_id);
             
-- view for im_type with fallback to tag
CREATE OR REPLACE VIEW view_link_type AS 
   SELECT link_type_id, 
          language_id, 
          url_prefix, 
          f_public,
          tag, 
          coalesce(name,tag) AS name, 
          rank, 
          language_tag
      FROM ( SELECT language_id, link_type_id, link_type.url_prefix, link_type.f_public, link_type.tag, link_type.rank, language.tag AS language_tag FROM language CROSS JOIN link_type) AS all_lang 
             LEFT OUTER JOIN link_type_localized USING (language_id, link_type_id);
             
-- view for phone_type with fallback to tag
CREATE OR REPLACE VIEW view_phone_type AS 
   SELECT phone_type_id, 
          language_id, 
          scheme, 
          tag, 
          coalesce(name,tag) AS name, 
          rank, 
          language_tag
      FROM ( SELECT language_id, phone_type_id, phone_type.scheme, phone_type.tag, phone_type.rank, language.tag AS language_tag FROM language CROSS JOIN phone_type) AS all_lang 
             LEFT OUTER JOIN phone_type_localized USING (language_id, phone_type_id);

-- view for event_state with fallback to tag
CREATE OR REPLACE VIEW view_event_state AS 
   SELECT event_state_id, language_id, tag, coalesce(name,tag) AS name, rank, language_tag
      FROM ( SELECT language_id, event_state_id, event_state.tag, event_state.rank, language.tag AS language_tag FROM language CROSS JOIN event_state) AS all_lang 
             LEFT OUTER JOIN event_state_localized USING (language_id, event_state_id);

-- view for event_type with fallback to tag
CREATE OR REPLACE VIEW view_event_type AS 
   SELECT event_type_id, language_id, tag, coalesce(name,tag) AS name, rank, language_tag
      FROM ( SELECT language_id, event_type_id, event_type.tag, event_type.rank, language.tag AS language_tag FROM language CROSS JOIN event_type) AS all_lang 
             LEFT OUTER JOIN event_type_localized USING (language_id, event_type_id);

-- view for event_role with fallback to tag
CREATE OR REPLACE VIEW view_event_role AS 
   SELECT event_role_id, language_id, tag, coalesce(name,tag) AS name, rank, language_tag
      FROM ( SELECT language_id, event_role_id, event_role.tag, event_role.rank, language.tag AS language_tag FROM language CROSS JOIN event_role) AS all_lang 
             LEFT OUTER JOIN event_role_localized USING (language_id, event_role_id);

-- view for event_role_state with fallback to tag
CREATE OR REPLACE VIEW view_event_role_state AS 
   SELECT event_role_state_id,
          event_role_id,
          language_id, 
          tag, 
          coalesce(name,tag) AS name, 
          rank, 
          language_tag
      FROM ( SELECT language_id, event_role_state_id, event_role_id, event_role_state.tag, event_role_state.rank, language.tag AS language_tag FROM language CROSS JOIN event_role_state) AS all_lang 
             LEFT OUTER JOIN event_role_state_localized USING (language_id, event_role_state_id);

-- view for conference_track with fallback to tag
CREATE OR REPLACE VIEW view_conference_track AS 
   SELECT conference_track_id, conference_id, language_id, tag, coalesce(name,tag) AS name, rank, language_tag 
      FROM ( SELECT language_id, conference_track_id, conference_track.conference_id, conference_track.tag, conference_track.rank, language.tag AS language_tag FROM language CROSS JOIN conference_track) AS all_lang 
             LEFT OUTER JOIN conference_track_localized USING (language_id, conference_track_id);

-- view for event_type with fallback to tag
CREATE OR REPLACE VIEW view_event_type AS 
   SELECT event_type_id, 
          language_id, 
          tag, 
          coalesce(name,tag) AS name, rank, language_tag
      FROM ( SELECT language_id, 
                    event_type_id, 
                    event_type.tag, 
                    event_type.rank, 
                    language.tag AS language_tag 
               FROM language CROSS JOIN event_type) AS all_lang 
             LEFT OUTER JOIN event_type_localized USING (language_id, event_type_id);

-- view for team with fallback to tag
CREATE OR REPLACE VIEW view_team AS 
   SELECT team_id, 
          conference_id,
          language_id, 
          tag, 
          coalesce(name,tag) AS name, rank, language_tag
      FROM ( SELECT language_id, 
                    team_id, 
                    conference_id, 
                    team.tag, 
                    team.rank, 
                    language.tag AS language_tag 
               FROM language CROSS JOIN team) AS all_lang 
             LEFT OUTER JOIN team_localized USING (language_id, team_id);

-- view for room with fallback to tag
CREATE OR REPLACE VIEW view_room AS 
   SELECT room_id, conference_id, language_id, tag, coalesce(public_name , tag) AS name, f_public, size, remark, rank, language_tag
      FROM ( SELECT language_id, room.room_id, room.conference_id, room.short_name AS tag, room.f_public, room.size, room.remark, room.rank, language.tag AS language_tag FROM language CROSS JOIN room) AS all_lang 
          LEFT OUTER JOIN room_localized USING (language_id, room_id);

-- view for time_zone with fallback to tag
CREATE OR REPLACE VIEW view_time_zone AS 
   SELECT time_zone_id, language_id, tag, coalesce(name,tag) AS name, language_tag
      FROM ( SELECT language_id, time_zone_id, time_zone.tag, language.tag AS language_tag FROM language CROSS JOIN time_zone ) AS all_lang 
             LEFT OUTER JOIN time_zone_localized USING (language_id, time_zone_id);

-- view for persons with name
CREATE OR REPLACE VIEW view_person AS 
   SELECT person_id, 
          login_name, 
          coalesce(person.public_name, coalesce(person.first_name || ' ', '') || person.last_name, person.nickname, person.login_name) AS name, 
          password, 
          title, 
          gender, 
          first_name, 
          middle_name, 
          last_name, 
          public_name, 
          nickname, 
          address, 
          street, 
          street_postcode, 
          po_box, 
          po_box_postcode, 
          city, 
          country_id, 
          email_contact, 
          email_public, 
          iban, 
          bic, 
          bank_name, 
          account_owner, 
          abstract, 
          description, 
          gpg_key, 
          remark, 
          preferences, 
          f_conflict, 
          f_deleted, 
          f_spam, 
          last_login 
      FROM person;

-- view for events 
CREATE OR REPLACE VIEW view_event AS 
   SELECT event.event_id, 
          event.conference_id, 
          event.tag,
          event.title, 
          event.subtitle, 
          event.conference_track_id, 
          event.team_id, 
          event.event_type_id, 
          event.duration, 
          event.event_state_id, 
          event.language_id, 
          event.room_id, 
          event.day, 
          event.start_time, 
          event.abstract, 
          event.description, 
          event.resources, 
          event.f_public, 
          event.f_paper, 
          event.f_slides, 
          event.f_conflict, 
          event.f_deleted, 
          event.remark, 
          view_event_state.language_id AS translated_id, 
          view_event_state.language_tag AS translated_tag, 
          view_event_state.tag AS event_state_tag, 
          view_event_state.name AS event_state, 
          view_event_type.tag AS event_type_tag, 
          view_event_type.name AS event_type, 
          view_conference_track.tag AS conference_track_tag, 
          view_conference_track.name AS conference_track, 
          view_team.tag AS team_tag, 
          view_team.name as team, 
          view_room.tag AS room_tag, 
          view_room.name AS room, 
          conference.acronym, (conference.start_date + event.day + '-1'::integer + event.start_time + conference.day_change)::timestamp AS start_datetime,
          event_image.mime_type_id,
          mime_type.mime_type,
          mime_type.file_extension
  FROM event 
     INNER JOIN view_event_state USING (event_state_id)
     INNER JOIN conference USING (conference_id)
     LEFT OUTER JOIN view_event_type ON (
           event.event_type_id = view_event_type.event_type_id AND 
           view_event_state.language_id = view_event_type.language_id)
     LEFT OUTER JOIN view_conference_track ON (
           event.conference_track_id = view_conference_track.conference_track_id AND 
           view_conference_track.language_id = view_event_type.language_id)
     LEFT OUTER JOIN view_team ON (
           event.team_id = view_team.team_id AND
           view_team.language_id = view_event_type.language_id)
     LEFT OUTER JOIN view_room ON (
           event.room_id = view_room.room_id AND
           view_room.language_id = view_event_type.language_id)
     LEFT OUTER JOIN event_image USING (event_id)
     LEFT OUTER JOIN mime_type USING (mime_type_id)
;

-- view for last active user
CREATE OR REPLACE VIEW view_last_active AS 
   SELECT person_id, login_name, name, last_login, now() - last_login AS login_diff 
FROM view_person 
WHERE last_login > now() + '-1 hour'::interval 
ORDER BY last_login DESC; 

-- view for recent changes
CREATE OR REPLACE VIEW view_recent_changes AS 
   SELECT 'conference' AS type, conference_transaction.conference_id AS id, conference.acronym, conference.title AS title, conference_transaction.changed_when, conference_transaction.changed_by, view_person.name , conference_transaction.f_create 
FROM conference_transaction 
     INNER JOIN conference USING (conference_id)
     INNER JOIN view_person ON (conference_transaction.changed_by = view_person.person_id)
UNION 
SELECT 'event' AS type, event_transaction.event_id AS id, conference.acronym, event.title AS title, event_transaction.changed_when, event_transaction.changed_by, view_person.name , event_transaction.f_create 
FROM event_transaction 
     INNER JOIN event USING (event_id)
     INNER JOIN conference USING (conference_id)
     INNER JOIN view_person ON (event_transaction.changed_by = view_person.person_id)
UNION 
SELECT 'person' AS type, person_transaction.person_id AS id, '' AS acronym, person.name AS title , person_transaction.changed_when, person_transaction.changed_by, view_person.name , person_transaction.f_create 
FROM person_transaction
     INNER JOIN view_person AS person USING (person_id)
     INNER JOIN view_person ON (person_transaction.changed_by = view_person.person_id)
ORDER BY changed_when DESC;

-- view for event_persons
CREATE OR REPLACE VIEW view_event_person AS 
SELECT event_person.event_person_id, 
       event_person.event_id, 
       event_person.person_id, 
       event_person.event_role_id, 
       event_person.event_role_state_id, 
       event_person.remark, 
       event_person.rank, 
       event.title, 
       event.subtitle, 
       event.event_state_id, 
       conference.conference_id,
       conference.acronym,
       view_person.name, 
       view_event_state.language_id, 
       view_event_state.language_tag, 
       view_event_state.tag AS event_state_tag, 
       view_event_state.name AS event_state, 
       view_event_role.tag AS event_role_tag, 
       view_event_role.name AS event_role, 
       view_event_role_state.tag AS event_role_state_tag, 
       view_event_role_state.name AS event_role_state
FROM event_person 
     INNER JOIN event USING (event_id) 
     INNER JOIN conference USING (conference_id)
     INNER JOIN view_person USING (person_id) 
     INNER JOIN view_event_state USING (event_state_id)
     INNER JOIN view_event_role ON (
           view_event_role.event_role_id = event_person.event_role_id AND 
           view_event_state.language_id = view_event_role.language_id)
     LEFT OUTER JOIN view_event_role_state ON (
           event_person.event_role_state_id = view_event_role_state.event_role_state_id AND 
           view_event_state.language_id = view_event_role_state.language_id);

-- view for schedule
CREATE OR REPLACE VIEW view_schedule AS 
SELECT view_event.event_id, view_event.conference_id, view_event.tag, view_event.title, view_event.subtitle, view_event.conference_track_id, view_event.team_id, view_event.event_type_id, view_event.duration, view_event.event_state_id, view_event.language_id, view_event.room_id, view_event.day, view_event.start_time, view_event.abstract, view_event.description, view_event.resources, view_event.f_public, view_event.f_paper, view_event.f_slides, view_event.f_conflict, view_event.f_deleted, view_event.remark, view_event.translated_id, view_event.translated_tag, view_event.event_state_tag, view_event.event_state, view_event.event_type_tag, view_event.event_type, view_event.conference_track_tag, view_event.conference_track, view_event.team_tag, view_event.team, view_event.room_tag, view_event.room, view_event.acronym, view_event.start_datetime 
FROM view_event
WHERE event_state_tag = 'confirmed' AND
      day IS NOT NULL AND
      start_time IS NOT NULL AND
      EXISTS (SELECT 1 FROM event_person 
                            INNER JOIN event_role USING (event_role_id)
                            INNER JOIN event_role_state USING (event_role_state_id)
                       WHERE event_person.event_id = event_id AND 
                         ( ( event_role.tag = 'speaker' AND event_role_state.tag = 'confirmed' ) OR 
                           ( event_role.tag = 'moderator' AND event_role_state.tag = 'confirmed' ) ) )
;

CREATE OR REPLACE VIEW view_find_conference AS
SELECT conference.conference_id, 
       conference.acronym, 
       conference.title, 
       conference.subtitle, 
       conference.start_date, 
       conference.days, 
       conference.venue, 
       conference.city,
       conference_image.mime_type_id,
       mime_type.mime_type,
       mime_type.file_extension
  FROM conference 
  LEFT OUTER JOIN conference_image USING (conference_id)
  LEFT OUTER JOIN mime_type USING (mime_type_id);

CREATE OR REPLACE VIEW view_find_event AS
SELECT event.event_id, 
       event.conference_id,
       event.title, 
       event.subtitle,
       event.event_origin_id,
       event.conference_track_id,
       event.event_state_id,
       event.language_id,
       event.room_id,
       event.day,
       (event.start_time + conference.day_change)::interval AS start_time,
       event_image.mime_type_id,
       mime_type.mime_type,
       mime_type.file_extension,
       view_event_state.language_id AS translated_id,
       view_event_state.tag AS event_state_tag,
       view_event_state.name AS event_state,
       view_room.tag AS room_tag,
       view_room.name AS room
  FROM event
  INNER JOIN conference USING (conference_id)
  INNER JOIN view_event_state USING (event_state_id)
  LEFT OUTER JOIN event_image USING (event_id)
  LEFT OUTER JOIN mime_type USING (mime_type_id)
  LEFT OUTER JOIN view_room ON (view_event_state.language_id = view_room.language_id AND event.room_id = view_room.room_id)
;

CREATE OR REPLACE VIEW view_find_person AS
SELECT view_person.person_id,
       view_person.name,
       view_person.first_name,
       view_person.last_name,
       view_person.nickname,
       view_person.public_name,
       view_person.login_name,
       view_person.email_contact,
       person_image.mime_type_id,
       mime_type.mime_type,
       mime_type.file_extension
  FROM view_person
  LEFT OUTER JOIN person_image USING (person_id)
  LEFT OUTER JOIN mime_type USING (mime_type_id)
;


CREATE OR REPLACE VIEW view_conference_image AS
SELECT conference_image.conference_id, 
       conference_image.mime_type_id, 
       mime_type.mime_type, 
       conference_image.image,
       conference_image.last_changed
  FROM conference_image INNER JOIN mime_type USING (mime_type_id);

CREATE OR REPLACE VIEW view_event_image AS
SELECT event_image.event_id, 
       event_image.mime_type_id, 
       mime_type.mime_type, 
       event_image.image,
       event_image.last_changed
  FROM event_image INNER JOIN mime_type USING (mime_type_id);

CREATE OR REPLACE VIEW view_person_image AS
SELECT person_image.person_id, 
       person_image.mime_type_id, 
       mime_type.mime_type, 
       person_image.image,
       person_image.last_changed
  FROM person_image INNER JOIN mime_type USING (mime_type_id);

CREATE OR REPLACE VIEW view_conference_image_modification AS
SELECT conference_image.conference_id,
       conference_image.last_changed
  FROM conference_image;

CREATE OR REPLACE VIEW view_event_image_modification AS
SELECT event_image.event_id,
       event_image.last_changed
  FROM event_image;

CREATE OR REPLACE VIEW view_person_image_modification AS
SELECT person_image.person_id,
       person_image.last_changed
  FROM person_image;

CREATE OR REPLACE VIEW view_event_link AS
  SELECT event_link_id,
         event_id,
         link_type_id,
         url,
         title,
         description,
         event_link.rank,
         language_id,
         url_prefix,
         f_public,
         tag,
         name
  FROM event_link INNER JOIN view_link_type USING (link_type_id);

CREATE OR REPLACE VIEW view_person_link AS
  SELECT person_link_id,
         person_id,
         link_type_id,
         url,
         title,
         description,
         person_link.rank,
         language_id,
         url_prefix,
         f_public,
         tag,
         name
  FROM person_link INNER JOIN view_link_type USING (link_type_id);

CREATE OR REPLACE VIEW view_person_rating AS
  SELECT person_rating.person_id,
         person_rating.evaluator_id,
         person_rating.speaker_quality,
         person_rating.quality_comment,
         person_rating.competence,
         person_rating.competence_comment,
         person_rating.remark,
         person_rating.eval_time,
         view_person.name
  FROM person_rating
  INNER JOIN view_person ON (person_rating.evaluator_id = view_person.person_id)
  ORDER BY person_rating.eval_time DESC;

CREATE OR REPLACE VIEW view_event_rating AS
  SELECT event_rating.event_id,
         event_rating.person_id,
         event_rating.relevance,
         event_rating.relevance_comment,
         event_rating.actuality,
         event_rating.actuality_comment,
         event_rating.acceptance,
         event_rating.acceptance_comment,
         event_rating.remark,
         event_rating.eval_time,
         view_person.name
  FROM event_rating
  INNER JOIN view_person USING (person_id) 
  ORDER BY event_rating.eval_time DESC;

-- view for roles with fallback to tag
CREATE OR REPLACE VIEW view_role AS 
   SELECT role_id, 
          language_id, 
          tag, 
          coalesce(name,tag) AS name, 
          language_tag
      FROM ( SELECT language_id, 
                    role_id, 
                    role.tag, 
                    language.tag AS 
                    language_tag FROM 
                    language CROSS JOIN role) AS all_lang 
           LEFT OUTER JOIN role_localized USING (language_id, role_id);



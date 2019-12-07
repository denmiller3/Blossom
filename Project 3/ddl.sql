create schema stackoverflow_filtered;

set search_path to stackoverflow_filtered;

CREATE TABLE results (
    users_id int4 NOT NULL PRIMARY KEY,
    display_name text NOT NULL,
    reputation text NULL,
    website_url text NULL,
    "location" text NULL,
    about_me text NULL,
    "views" int4 NULL,
    up_votes int4 NULL,
    down_votes int4 NULL,
    image_url text NULL,
    users_created_at timestamp NOT NULL,
    updated_at timestamp NOT null,
    city timestamp NULL,
    country timestamp NULL,
    questions_id int4 NOT NULL  ,
    questions_user_id int4 not NULL,
    title text NOT NULL,
    questions_body text NOT NULL,
    accepted_answer_id int4 NULL,
    questions_score int4 NOT NULL DEFAULT 0,
    view_count int4 NOT NULL DEFAULT 0,
    questions_comment_count int4 NOT NULL DEFAULT 0,
    questions_created_at timestamp NOT null,
    answers_id int4 NOT NULL,
    answers_user_id int4 NULL,
    answers_question_id int4 NOT NULL,
    answers_body text NOT NULL,
    answers_score int4 NOT NULL DEFAULT 0,
    answers_comment_count int4 NOT NULL DEFAULT 0,
    answers_created_at timestamp NULL

);


CREATE UNIQUE INDEX reputation_idx ON results (reputation);

CREATE INDEX display_name_idx ON results USING hash (display_name);

CREATE VIEW stackoverflow_filtered.new_view as  
select display_name, city, questions_id 
from postgres.stackoverflow_filtered.results 
where  accepted_answer_id is not null;



CREATE MATERIALIZED VIEW stackoverflow_filtered.materialized_view as
select display_name, city, questions_id 
from postgres.stackoverflow_filtered.results 
where  accepted_answer_id is not null;
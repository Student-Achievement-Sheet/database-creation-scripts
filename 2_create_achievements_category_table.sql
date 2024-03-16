CREATE SEQUENCE achievements_category_seq;

CREATE TABLE achievements_category (
   id NUMBER DEFAULT achievements_category_seq.nextval PRIMARY KEY,
   category_name VARCHAR2(200) NOT NULL,
   created_at TIMESTAMP DEFAULT current_timestamp NOT NULL
);

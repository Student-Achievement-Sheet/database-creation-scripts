CREATE SEQUENCE achievements_seq;

CREATE TABLE achievements (
   id NUMBER DEFAULT achievements_seq.nextval PRIMARY KEY,
   achievements_category_id NUMBER,
   user_id NUMBER,
   description VARCHAR2(200),
   proof_url VARCHAR2(50),
   headline VARCHAR2(50),
   visible_date VARCHAR2(50),
   is_approved BOOLEAN DEFAULT FALSE NOT NULL,
   created_at TIMESTAMP DEFAULT current_timestamp NOT NULL,
   CONSTRAINT achievements_category_id_constr FOREIGN KEY (achievements_category_id) REFERENCES achievements_category(id),
   CONSTRAINT users_id_constr FOREIGN KEY (user_id) REFERENCES users(id), 
);

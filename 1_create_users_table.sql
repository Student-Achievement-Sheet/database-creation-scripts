CREATE SEQUENCE users_seq;

CREATE TABLE users (
   id NUMBER DEFAULT users_seq.nextval PRIMARY KEY,
   full_name VARCHAR2(200),
   proof_url VARCHAR2(50),
   birthday VARCHAR2(50),
   photo_url VARCHAR2(100),
   group_number VARCHAR(20) NOT NULL,
   created_at TIMESTAMP DEFAULT current_timestamp NOT NULL
);

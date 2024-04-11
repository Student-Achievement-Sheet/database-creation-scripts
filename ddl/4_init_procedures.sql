CREATE OR REPLACE PROCEDURE add_user (
   full_name VARCHAR,
   proof_url VARCHAR,
   birthday VARCHAR,
   photo_url VARCHAR,
   group_number VARCHAR
)
AS
BEGIN
    INSERT INTO users (full_name, proof_url, birthday, photo_url, group_number)
    VALUES (full_name, proof_url, birthday, photo_url, group_number);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
END;

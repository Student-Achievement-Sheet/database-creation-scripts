# ========================================================================= ADD USER ========================================================================= #

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

# ========================================================================= DELETE USER ========================================================================= #

CREATE OR REPLACE PROCEDURE delete_user (
    p_id IN NUMBER
)
AS
BEGIN
    DELETE FROM users
    WHERE id = p_id;
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('User deleted successfully.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('User with ID ' || p_id || ' not found.');
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: Unable to delete user.');
END;

# ========================================================================= UPDATE USER FULLNAMEa ========================================================================= #

CREATE OR REPLACE PROCEDURE update_full_name_by_user_id (
    p_id IN NUMBER,
    p_new_full_name IN VARCHAR2
)
AS
BEGIN
    UPDATE users
    SET full_name = p_new_full_name
    WHERE id = p_id;
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Full name updated successfully.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('User with ID ' || p_id || ' not found.');
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: Unable to update full name.');
END;

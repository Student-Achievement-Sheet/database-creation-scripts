SELECT users.id, users.full_name
FROM users
LEFT JOIN achievements ON users.id=achievements.user_id
WHERE achievements.user_id is NULL;

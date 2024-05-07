## Для одного пользователя вывести категории, которые у него не заполнены

SELECT users.id, users.full_name
FROM users
LEFT JOIN achievements ON users.id=achievements.user_id
WHERE users.id == 1 AND achievements.user_id is NULL;

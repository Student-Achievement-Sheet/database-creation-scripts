# вывести пользователя, у которого есть незаполненные категории

Select users.id, users.full_name
FROM ACHIEVEMENTS
RIGHT JOIN USERS
ON users.ID=achievements.user_id
WHERE achievements.user_id is NULL
LIMIT 1;

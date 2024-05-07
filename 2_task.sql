SELECT user_id, COUNT(*) AS row_count
FROM achievements
GROUP BY user_id
ORDER BY row_count DESC
LIMIT 1;

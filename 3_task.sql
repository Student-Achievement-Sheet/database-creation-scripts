SELECT achievements_category_id, COUNT(*) AS row_count
FROM achievements
GROUP BY achievements_category_id
ORDER BY row_count DESC
LIMIT 1;

# Вывести самую непопулярную категорию

SELECT achievements_category.category_name FROM (SELECT achievements_category_id, COUNT(*) AS row_count
FROM achievements
GROUP BY achievements_category_id
ORDER BY row_count ASC
LIMIT 1) as most_unpopular_category 
INNER JOIN achievements_category ON achievements_category.id = achievements_category_id;

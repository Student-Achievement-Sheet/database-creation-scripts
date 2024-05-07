Выести самого успешного вывести и самую успешную его категорию

# Самый успешный
SELECT user_id, COUNT(*) AS row_count
FROM achievements
GROUP BY user_id
ORDER BY row_count DESC
LIMIT 1;

# Самая успешная категория самого успешного студента
SELECT category_name FROM (
  SELECT achievement_category_id, COUNT(*) AS achievement_category_id_сount FROM achievements
  INNER JOIN 
    (SELECT user_id, COUNT(*) AS row_count
    FROM achievements
    GROUP BY user_id
    ORDER BY row_count DESC
    LIMIT 1) 
    AS most_successful_user 
  ON most_successful_user.user_id == achievements.user_id
  GROUP BY achievement_category_id
  ORDER BY achievement_category_id_сount DESС
  LIMIT 1) 
  AS most_successful_achievement_category
INNER JOIN achievements_category
ON achievements_category.id == achievement_category_id;


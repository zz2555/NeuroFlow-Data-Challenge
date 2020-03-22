SELECT
LEFT(u.created_at,7) AS Month
,concat(ROUND(AVG(
IF(LEFT(u.created_at,7)=LEFT(e.exercise_completion_date,7),1,0))*100,2),'%') AS Percentage
FROM 
exercises e
LEFT JOIN 
users u
ON e.user_id=u.user_id
GROUP BY LEFT(u.created_at,7)

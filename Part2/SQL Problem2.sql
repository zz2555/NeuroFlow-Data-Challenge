SELECT
organization_name
FROM 
Providers p1
LEFT JOIN
Phq9 p2
ON p1.provider_id=p2.provider_id
GROUP BY p1.organization_name
ORDER BY AVG(p2.score) DESC
LIMIT 5

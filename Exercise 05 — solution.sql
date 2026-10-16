SELECT s.teacher AS teacher
FROM Schedule AS s
JOIN Class AS c
    ON c.id = s.class
WHERE c.name LIKE '11%'
GROUP BY s.teacher
HAVING COUNT(DISTINCT c.id) = (
    SELECT COUNT(*)
    FROM Class
    WHERE name LIKE '11%'
);

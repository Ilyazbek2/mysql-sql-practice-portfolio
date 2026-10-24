SELECT DISTINCT c.name AS name
FROM Schedule AS s
JOIN Teacher AS t
    ON s.teacher = t.id
JOIN Class AS c
    ON s.class = c.id
WHERE t.last_name LIKE  'Krauze%';

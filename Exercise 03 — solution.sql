SELECT e.name AS name
FROM employees AS e
WHERE NOT EXISTS (
    SELECT 1
    FROM employees AS subordinate
    WHERE subordinate.manager_id = e.id
);

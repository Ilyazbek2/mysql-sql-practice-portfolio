SELECT e.emp_name AS emp_name,
    COUNT(t.id) AS task_count
FROM Employee AS e
LEFT JOIN Tasks AS t
    ON t.assignee_id = e.id
   AND t.status = 'in progress'
GROUP BY e.id, e.emp_name
HAVING COUNT(t.id) < 3;

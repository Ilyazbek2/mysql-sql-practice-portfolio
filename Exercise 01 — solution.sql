SELECT classroom
FROM Schedule
GROUP BY classroom
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Schedule
        GROUP BY classroom
    ) AS classroom_counts
);

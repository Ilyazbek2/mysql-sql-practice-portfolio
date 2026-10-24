SELECT r.owner_id AS owner_id,
    SUM(res.total) AS total_earn
FROM Rooms AS r
JOIN Reservations AS res
    ON res.room_id = r.id
GROUP BY r.owner_id;

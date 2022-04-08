--  id | start_date |  end_date  | property_id | guest_id 
-- ----+------------+------------+-------------+----------
--   1 | 2021-03-03 | 2021-03-05 |           1 |        2
--   2 | 2021-03-03 | 2021-04-05 |           2 |        3
--   3 | 2021-04-20 | 2021-04-25 |           2 |        1

SELECT AVG(end_date - start_date) AS average_duration
FROM reservations;
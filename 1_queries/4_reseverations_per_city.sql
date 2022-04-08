--  id | start_date |  end_date  | property_id | guest_id 
-- ----+------------+------------+-------------+----------
--   1 | 2021-03-03 | 2021-03-05 |           1 |        2
--   2 | 2021-03-03 | 2021-04-05 |           2 |        3
--   3 | 2021-04-20 | 2021-04-25 |           2 |        1


--  id | owner_id |      title      | description | thumbnail_photo_url | cover_photo_url | cost_per_night | parking_spaces | number_of_bathrooms | number_of_bedrooms | country |       street       |   city    | province | post_code | active 
-- ----+----------+-----------------+-------------+---------------------+-----------------+----------------+----------------+---------------------+--------------------+---------+--------------------+-----------+----------+-----------+--------
--   1 |        1 | The Dreamtorium | imaginary   | url                 | url             |            300 |              3 |                   3 |                  3 | America | 3005 Telegraph Ave | Greendale | CA       | vv2v22    | t
--   2 |        2 | McMansion       | chic        | url                 | url             |           1000 |              5 |                  10 |                 11 | Murica  | 129 st             | Chi-Town  | IL       | v32v42    | t
--   3 |        1 | The 525         | iconic      | url                 | url             |            125 |              2 |                   2 |                  1 | Canada  | 2nd Ave            | Saskatoon | SK       | b92222    | t

SELECT city, COUNT(reservations) as total_reservations
FROM properties
JOIN reservations ON properties.id = property_id
GROUP BY properties.city
ORDER BY total_reservations DESC;
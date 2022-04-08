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

--  id |       name       |        email         |                           password                           
-- ----+------------------+----------------------+--------------------------------------------------------------
--   1 | Kanye West       | runaway@ye.com       | $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.
--   2 | Childish Gambino | staywork@redbone.com | $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.
--   3 | SOPHIE           | flume@gmail.com      | $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.

SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;
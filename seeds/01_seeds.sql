INSERT INTO users (name, email, password)
VALUES ('Kanye West', 'runaway@ye.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Childish Gambino', 'staywork@redbone.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('SOPHIE', 'flume@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

--  id |       name       |        email         |                           password                           
-- ----+------------------+----------------------+--------------------------------------------------------------
--   1 | Kanye West       | runaway@ye.com       | $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.
--   2 | Childish Gambino | staywork@redbone.com | $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.
--   3 | SOPHIE           | flume@gmail.com      | $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
VALUES (1, 'The Dreamtorium', 'imaginary', 'url', 'url', 300, 3, 3, 3, 'America', '3005 Telegraph Ave', 'Greendale', 'CA', 'vv2v22'),
(2, 'McMansion', 'chic', 'url', 'url', 1000, 5, 10, 11, 'Murica', '129 st', 'Chi-Town', 'IL', 'v32v42'),
(1, 'The 525', 'iconic', 'url', 'url', 125, 2, 2, 1, 'Canada', '2nd Ave', 'Saskatoon', 'SK', 'b92222');

--  id | owner_id |      title      | description | thumbnail_photo_url | cover_photo_url | cost_per_night | parking_spaces | number_of_bathrooms | number_of_bedrooms | country |       street       |   city    | province | post_code | active 
-- ----+----------+-----------------+-------------+---------------------+-----------------+----------------+----------------+---------------------+--------------------+---------+--------------------+-----------+----------+-----------+--------
--   1 |        1 | The Dreamtorium | imaginary   | url                 | url             |            300 |              3 |                   3 |                  3 | America | 3005 Telegraph Ave | Greendale | CA       | vv2v22    | t
--   2 |        2 | McMansion       | chic        | url                 | url             |           1000 |              5 |                  10 |                 11 | Murica  | 129 st             | Chi-Town  | IL       | v32v42    | t
--   3 |        1 | The 525         | iconic      | url                 | url             |            125 |              2 |                   2 |                  1 | Canada  | 2nd Ave            | Saskatoon | SK       | b92222    | t

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2021-03-03', '2021-03-05', 1, 2),
('2021-03-03', '2021-04-05', 2, 3),
('2021-04-20', '2021-04-25', 2, 1);

--  id | start_date |  end_date  | property_id | guest_id 
-- ----+------------+------------+-------------+----------
--   1 | 2021-03-03 | 2021-03-05 |           1 |        2
--   2 | 2021-03-03 | 2021-04-05 |           2 |        3
--   3 | 2021-04-20 | 2021-04-25 |           2 |        1


INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (3, 2, 2, 10, 'crispy'),
(2, 1, 1, 8, 'decent'),
(1, 2, 3, 2, 'not good');

--  id | guest_id | property_id | reservation_id | rating | message  
-- ----+----------+-------------+----------------+--------+----------
--   1 |        3 |           2 |              2 |     10 | crispy
--   2 |        2 |           1 |              1 |      8 | decent0
--   3 |        1 |           2 |              3 |      2 | not good
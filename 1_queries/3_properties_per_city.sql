
--  id | owner_id |      title      | description | thumbnail_photo_url | cover_photo_url | cost_per_night | parking_spaces | number_of_bathrooms | number_of_bedrooms | country |       street       |   city    | province | post_code | active 
-- ----+----------+-----------------+-------------+---------------------+-----------------+----------------+----------------+---------------------+--------------------+---------+--------------------+-----------+----------+-----------+--------
--   1 |        1 | The Dreamtorium | imaginary   | url                 | url             |            300 |              3 |                   3 |                  3 | America | 3005 Telegraph Ave | Greendale | CA       | vv2v22    | t
--   2 |        2 | McMansion       | chic        | url                 | url             |           1000 |              5 |                  10 |                 11 | Murica  | 129 st             | Chi-Town  | IL       | v32v42    | t
--   3 |        1 | The 525         | iconic      | url                 | url             |            125 |              2 |                   2 |                  1 | Canada  | 2nd Ave            | Saskatoon | SK       | b92222    | t

SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;
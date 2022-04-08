--  id |       name       |        email         |                           password                           
-- ----+------------------+----------------------+--------------------------------------------------------------
--   1 | Kanye West       | runaway@ye.com       | $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.
--   2 | Childish Gambino | staywork@redbone.com | $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.
--   3 | SOPHIE           | flume@gmail.com      | $2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.


SELECT id, name, email, password
FROM users
WHERE email = 'tristanjacobs@gmail.com';
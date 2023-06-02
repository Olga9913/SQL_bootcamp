SELECT person_id AS id,
    order_date AS date
FROM person_order
WHERE order_date = '2022-01-07'
EXCEPT ALL
SELECT person_id AS id,
       visit_date AS date
FROM person_visits
WHERE visit_date = '2022-01-07';
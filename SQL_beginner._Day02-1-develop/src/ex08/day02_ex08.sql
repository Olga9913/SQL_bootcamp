WITH people AS (SELECT *
                FROM person
                WHERE person.gender = 'male'
                  AND person.address IN ('Moscow', 'Samara')),
     orders AS (SELECT people.name,
                       person_order.*,
                       m.pizza_name
                FROM person_order
                         JOIN people ON person_order.person_id = people.id
                         JOIN menu m ON person_order.menu_id = m.id)
SELECT DISTINCT orders.name
FROM orders
WHERE orders.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY name DESC;
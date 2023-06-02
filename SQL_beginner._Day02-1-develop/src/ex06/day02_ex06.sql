WITH orders AS (SELECT *
                FROM person_order
                         RIGHT JOIN (SELECT * FROM person WHERE person.name IN ('Denis', 'Anna')) AS p
                                    ON person_order.person_id = p.id)
SELECT menu.pizza_name,
       pizzeria.name AS pizzeria_name
FROM menu
         JOIN orders ON menu.id = orders.menu_id
         JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY 1, 2;
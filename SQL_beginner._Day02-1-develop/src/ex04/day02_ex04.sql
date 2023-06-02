WITH pizza AS (SELECT *
               FROM menu
               WHERE menu.pizza_name IN ('mushroom pizza', 'pepperoni pizza'))
SELECT pizza.pizza_name,
       pizzeria.name AS pizzeria_name,
       pizza.price
FROM pizza
         JOIN pizzeria
              ON pizza.pizzeria_id = pizzeria.id
ORDER BY 1, 2;
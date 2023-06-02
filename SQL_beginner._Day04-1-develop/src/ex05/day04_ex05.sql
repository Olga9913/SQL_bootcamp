CREATE VIEW v_price_with_discount
AS
WITH orders AS (SELECT p.name, m.pizza_name, m.price
                FROM person_order po
                         JOIN person p ON po.person_id = p.id
                         JOIN menu m ON po.menu_id = m.id)
SELECT orders.*,
       ROUND(orders.price * 0.9) AS discount_price
FROM orders
ORDER BY 1, 2;
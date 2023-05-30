SELECT
    (SELECT name
     FROM person
     WHERE id = person_order.person_id)
        AS name,
    (SELECT
         CASE
        WHEN  name = 'Denis'
            THEN TRUE
        ELSE FALSE
    END AS check_name
    FROM person
    WHERE id = person_order.person_id)
        AS check_name
FROM person_order
WHERE
    (person_order.menu_id = 13
         OR person_order.menu_id = 14
         OR person_order.menu_id = 18)
        AND person_order.order_date = '2022-01-07'

-- person и person_order связаны по внешнему ключу
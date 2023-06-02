SELECT order_date, person_information
FROM (
    SELECT order_date AS order_date, p.name || ' (age:' || age || ')' AS person_information
    FROM person_order AS po
    JOIN person AS p ON p.id = po.person_id
) AS actions
ORDER BY order_date, person_information;
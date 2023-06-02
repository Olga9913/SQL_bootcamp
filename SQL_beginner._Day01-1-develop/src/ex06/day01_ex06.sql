SELECT action_date, person_name
FROM (
    SELECT order_date AS action_date, p.name AS person_name
    FROM person_order AS po
    JOIN person AS p ON p.id = po.person_id
    INTERSECT
    SELECT visit_date AS action_date, p.name AS person_name
    FROM person_visits AS pv
    JOIN person AS p ON p.id = pv.person_id
) AS actions
ORDER BY action_date, person_name DESC;
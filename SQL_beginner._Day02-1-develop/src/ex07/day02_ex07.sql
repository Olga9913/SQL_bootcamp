SELECT pizzeria.name AS pizzeria_name
FROM person_visits
JOIN person on person.id = person_visits.person_id
JOIN pizzeria on person_visits.pizzeria_id = pizzeria.id
JOIN menu on pizzeria.id = menu.pizzeria_id
WHERE person.name = 'Dmitriy' AND visit_date = '2022-01-08' AND price < 800;
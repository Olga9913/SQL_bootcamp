SELECT name
FROM pizzeria
WHERE not EXISTS (
  SELECT pizzeria_id
  FROM person_visits
  WHERE person_visits.pizzeria_id = pizzeria.id
);

SELECT name
FROM pizzeria
WHERE pizzeria.id NOT IN (
  SELECT pizzeria_id
  FROM person_visits
);
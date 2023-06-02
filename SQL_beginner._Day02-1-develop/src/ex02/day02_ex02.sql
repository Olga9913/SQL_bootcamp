SELECT COALESCE(person.name, '-')  AS person_name,
       query1.visit_date          AS visit_date,
       COALESCE(pizzeria.name, '-') AS pizzeria_name
FROM person
         FULL JOIN (SELECT *
                    FROM person_visits
                    WHERE person_visits.visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS query1
                   ON person.id = query1.person_id
         FULL JOIN pizzeria
                   ON query1.pizzeria_id = pizzeria.id
ORDER BY 1, 2, 3;
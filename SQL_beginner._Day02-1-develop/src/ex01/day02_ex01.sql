SELECT day::date AS missing_date
FROM GENERATE_SERIES(timestamp '2022-01-01', '2022-01-10', '1 day') AS day
         LEFT JOIN (SELECT person_visits.visit_date
                    FROM person_visits
                    WHERE person_visits.person_id = 1
                       OR person_visits.person_id = 2) AS query2
                   ON day = query2.visit_date
WHERE visit_date IS NULL
ORDER BY 1;
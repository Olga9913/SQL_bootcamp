CREATE SEQUENCE seq_person_discounts INCREMENT 1;

SELECT SETVAL('seq_person_discounts', (SELECT max(id) FROM person_discounts));

ALTER TABLE person_discounts
    ALTER COLUMN id SET DEFAULT NEXTVAL('seq_person_discounts');
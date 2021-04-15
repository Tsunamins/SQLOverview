-- idea is to constrain results
-- DISTINCT - find unique items
SELECT DISTINCT p.first_name FROM person p;

-- WHERE - constrain via boolean expression for example, and other methods
SELECT p.first_name FROM person p WHERE p.first_name = 'Chloe';

-- can of course put many together to create complex queries

-- AND
SELECT p.first_name, p.last_name FROM person p WHERE p.first_name = 'Chloe' AND p.birthdate > '04/01/2017';

-- OR
SELECT p.first_name, p.last_name FROM person p WHERE P.first_name = 'Chloe' OR p.last_name = 'Catdog'

-- BETWEEN
SELECT p.first_name, p.last_name FROM person p WHERE p.number_of_times_contacted BETWEEN 1 AND 20;

-- LIKE - find similar or begins with
SELECT p.first_name, p.last_name FROM person p WHERE p.first_name LIKE 'C%';

-- IN - this is instead of doing multiple OR's can just say where there might be a first name within this list such as these
SELECT p.first_name, p.last_name FROM person p WHERE p.first_name IN ('Chloe', 'Graycie');

-- IS -- for this example, with use case of null, way to return when missing the last name for a person
SELECT p.first_name, p.last_name FROM person p WHERE p.last_name IS NULL; 

-- IS NOT -- filter out anything, with use case of null, where there is a null but don't want it in results
SELECT p.first_name, p.last_name FROM person p WHERE p.last_name IS NOT NULL;

-- ORDER BY - overview
SELECT <columns> FROM <table> (WHERE some condition) ORDER BY p.last_name
-- can also use ASC or DESC specifier (ascending is default so don't have to add)

-- Set Functions can be used with various queries: COUNT, MAX, MIN, AVG, SUM
-- avg and sum have to be used on numbers; count, max and min can be used on all
-- Use any in the following context, except count will have a diff example:
SELECT <function_such_as_SUM> (p.number_of_times_contacted) FROM person p;

-- COUNT
SELECT p.last_name FROM person p WHERE P.last_name = 'Reilly'

-- use in conjunction with a qualifier such as DISTINCT
SELECT COUNT(DISTINCT p.first_name) FROM person p;

-- GROUP BY
SELECT COUNT (p.first_name), p.first_name FROM person p GROUP BY p.first_name

-- HAVING
SELECT COUNT (DISTINCT p.first_name), p.first_name FROM person p GROUP BY p.first_name HAVING COUNT (DISTINCT p.first_name) >= 5;




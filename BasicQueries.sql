-- SELECT - retrieve one or more rows
--  ex select the column first_name from the table person
SELECT first_name FROM person;

-- ex select multiple columns, from table contacts
SELECT first_name, last_name FROM contacts;

-- INSERT - add one or more rows

INSERT INTO contacts(first_name, last_name) VALUES ('Graycie', 'Cat');

-- UPDATE - update one or more rows
UPDATE contacts SET last_name = 'Reilly' WHERE id=1;

-- DELETE - remove one or more rows
DELETE FROM contacts WHERE id=2;



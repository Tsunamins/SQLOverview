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

-- a most basic query can even be from string no db
SELECT 'Hello', 'World'
-- retrieves a table structure of |Hello|World|

-- overall abstracted use
SELECT <column_name>, <column_name> FROM <table_name>;

-- wildcard usage
SELECT * FROM <table_name>;

-- because from a FROM clause you could refer to multiple tables - good practice to 'qualify' the column with the table name before
SELECT person.first_name, person.last_name FROM person;
-- but as a short cut can also alias that table name to make it shorter:
SELECT p.first_name, p.last_name FROM person p;


-- this is the marker of a comment
/* but this can also be used as well */

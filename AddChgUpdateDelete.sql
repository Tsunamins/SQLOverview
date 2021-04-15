-- INSERT
INSERT INTO person (person_id, fisrt_name, last_name, number_of_times_contacted) VALUES (1, 'Chloe', 'Catdog', 14);

-- BULK INSERT
INSERT INTO person p SELECT * FROM old_person op WHERE op.person_id > 300;

--UPDATE
UPDATE email_address e SET e.email_address = 'chloe@email.com' WHERE e.email_address_id = 5;

--DELETE
DELETE FROM person p WHERE p.id = 5;

-- CREATE DATABASE and usage via USE DATABASE
CREATE DATABASE Contact;
USE DATABASE Contact;
-- now ev from here will use contact database
SELECT * FROM person p;

-- CREATE TABLE - in parenthesis are column names followed by column type
CREATE TABLE email_address(email_address_id INTEGER, email_address_person_id INTEGER, email_address VARCHAR(55));

-- NULL / NOT NULL - usage example - add NOT NULL during table creation to specify required data; below email_address_id and email_address are required
CREATE TABLE email_address(email_address_id INTEGER NOT NULL, email_address_person_id INTEGER, email_address VARCHAR(55) NOT NULL);

-- PRIMARY KEY - good to specify and added as inline statmen like this no longer need not null, but do need in whole table creation with all specifiers (next example)
CREATE TABLE email_address(email_address_id INTEGER PRIMARY KEY, email_address_person_id INTEGER, email_address VARCHAR(55) NOT NULL);

-- CONSTRAINT - way to add to end of table creation something like a primary key, need not null on required fields when creating in table version
CREATE TABLE phone_number(phone_number_id INTEGER NOT NULL, phone_number_person_id INTEGER NOT NULL, 
    phone_number VARCHAR(55) NOT NULL, CONSTRAINT PK_phone_number PRIMARY KEY (phone_number_id));

--ALTER TABLE
ALTER TABLE email_address ADD CONSTRAINT FK_email_address_person FOREIGN KEY (email_address_person_id) REFERENCES person (person_id);

--DROP TABLE
DROP TABLE person;
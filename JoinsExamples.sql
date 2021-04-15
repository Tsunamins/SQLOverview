-- CROSS JOIN just a join out of context these aren't official key words, just an example and noteworthy of strucure specify alias of table, separate 
-- columns and talbes with comma
SELECT p.first_name, e.email_address FROM person p, email_address e;

-- INNER JOIN - EX what are all of my contacts email addresses
SELECT p.first_name, p.last_name, e.email_address FROM person p INNER JOIN email_address e ON p.person_id = e.email_address_person_id;

-- OUTER JOINS - LEFT RIGHT AND FULL
--LEFT OUTER JOIN - EX Contacts and email addresses including those that don't have email address from the right hand table, return row but null for the missing email
SELECT p.first_name, p.last_name, e.email_address FROM person p LEFT OUTER JOIN email_address e ON p.person_id = e.email_address_person_id;

-- RIGHT OUTER JOIN - EX - retrieve all email addresses, including where from left hand table, don't have matching names, so get those rows but null for name of person
SELECT p.first_name, p.last_name, e.email_address FROM person p RIGHT OUTER JOIN email_address e ON p.person_id = e.email_address_person_id;

-- FULL OUTER JOIN - EX - retrieves either situaion all emails and all person, but return all rows even where missing the data and those values will be null
SELECT p.first_name, p.last_name, e.email_address FROM person p FULL OUTER JOIN email_address e ON p.person_id = e.email_address_person_id;

-- SELF JOIN - ex join table to itself - will be same table on left and right person and person, good for heiarchy data i.e. supervisor or manager over person




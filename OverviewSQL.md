# Notes from SQL intro
SQL overall is means to manipulate sets of data and is relational \
Ansi and ISO are teh standards each relational style db has to implment standard\
So typically can apply this to any and each varition could build on these\
The following will reflect on standards only as base knowledge with MySQL as exmpl\
<br/>
databases overall are name given to container to organize data\
which is in turn more efficient to store and retireve\
and act as one source of truth\
<br/>
the relational aspect is how e piece of data will relate to one another\
and the mechanism of how this occurs or how dbs work is based on tuple relational calculus\
<br/>
SQL is the question executed against the database\
<br/>
Best design practices involve creating separate talbles with foreign keys where a great deal of additional information will exist\
i.e. bad database design would have a contact with first name, last name (which are fine) but then have email1, email2, email3, etc\
i.e. good database design would have a contact w first name, last name, then a separate table for emails with a forieng key to match contact and each row would be a additional email address\
-- so idea is here ask more questions and create more tables\
-- may be a good idea to re-imagine my hotel project with reservations - no longer in an array - but a sep talbe that will have a foreign key with lists of reservations\
<br/>
table names - singular naming convention\
the name of the table, as a best practice should be about what each row is going to be about, represent\
so table naming could have exceptions where the topic of the rows in the table will be plural in context, in that case a plural table name would work\
some say to use table name as a prefix to the column name\
<br/>
Some notes on data types:\
CHAR - character - static setting of values to hold\
VARCHAR - varying character - dynamic setting of values to hold\
BOOLEAN  - T/f\
INTEGER\
BIGINT  - these will have some neg through positive possibilities\
DATE - YYYY-MM-DD\
TIME - HH:MM:SS[.sF] - F is fractional second\
TIMESTAMP - both date and time\
\







Introduction to PostgreSQL
===============================================================================

What is a Database? 
-------------------------------------------------------------------------------

  A database consists of an organized collection of data for one or more uses,
  typically in digital form. *- Wikipedia*

..

  A database management system (DBMS) consists of software that operates
  databases, providing storage, access, security, backup and other facilities.
  *- Wikipedia*

Tables
...............................................................................

  In relational databases and flat file databases, a table is a set of data
  elements (values) that is organized using a model of vertical columns (which
  are identified by their name) and horizontal rows. A table has a specified
  number of columns, but can have any number of rows. Each row is identified
  by the values appearing in a particular column subset which has been
  identified as a candidate key. *- Wikipedia*

::

   id | name  | age 
  ----+-------+-----
    1 | Tim   |  20
    2 | Horst |  88
  (2 rows)

In SQL databases a table is also known as a **relation.**

Columns / Fields
...............................................................................

  A column is a set of data values of a particular simple type, one for each
  row of the table. The columns provide the structure according to which the
  rows are composed. The term field is often used interchangeably with column,
  although many consider it more correct to use field (or field value) to refer
  specifically to the single item that exists at the intersection between one
  row and one column. *- Wikipedia*

A column:

::

  | name  |
  +-------+
  | Tim   |
  | Horst |

A field:

::

  | Horst |

Records
...............................................................................

A record is the information stored in a table row. Each record will have a
field for each of the columns in the table.

::

  2 | Horst |  88  <-- one record

Datatypes
...............................................................................

  Datatypes restrict the kind of information that can be stored in a column.
  *- Tim and Horst*

There are many kinds of datatypes. Let's focus on the most common:

- String - to store free-form text data
- Integer - to store whole numbers
- Real - to store decimal numbers
- Date - to store Horst's birthday so no one forgets
- Boolean - to store simple true/false values

You can tell the database to allow you to also store nothing in a field. If
there is nothing in a field, then the field content is referred to as a
**'null' value**. 

::

  insert into person (age) values (40);


::

  INSERT 0 1
  test=# select * from person;
    id | name  | age 
   ----+-------+-----
     1 | Tim   |  20
     2 | Horst |  88
     4 |       |  40  <-- null for name
  (3 rows)

There are many more datatypes you can use - `check the PostgreSQL manual!
<http://www.postgresql.org/docs/current/static/datatype.html>`_

Modelling an Address Database
...............................................................................

Let's use a simple case study to see how a database is constructed. We want to
create an address database. What kind of information should we store?

  Write some address properties in the space provided:
  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  
  |  

The properties that describe an address are the columns. The type of
information stored in each column is its datatype. In the next section we will
analyse our conceptual address table to see how we can make it better!

Database Theory
-------------------------------------------------------------------------------

The process of creating a database involves creating a model of the real world;
taking real world concepts and representing them in the database as entities.

Normalisation
...............................................................................

One of the main ideas in a database is to avoid data duplication / redundancy.
The process of removing redundancy from a database is called Normalisation.

  Normalization is a systematic way of ensuring that a database structure is
  suitable for general-purpose querying and free of certain undesirable
  characteristics - insertion, update, and deletion anomalies - that could lead
  to a loss of data integrity. *- Wikipedia*

There are different kinds of normalisation 'forms'. 

Let's take a look at a simple example:

::

  Table "public.people"
    Column  |          Type          |                Modifiers                       
  ----------+------------------------+-----------------------------------------
   id       | integer                | not null default 
            |                        | nextval('people_id_seq'::regclass)
            |                        | 
   name     | character varying(50)  | 
   address  | character varying(200) | not null
   phone_no | character varying      | 
  Indexes:
   "people_pkey" PRIMARY KEY, btree (id)

::

  select * from people;
  id |     name      |           address           |  phone_no   
   --+---------------+-----------------------------+-------------
   1 | Tim Sutton    | 3 Buirski Plein, Swellendam | 071 123 123
   2 | Horst Duester | 4 Avenue du Roix, Geneva    | 072 121 122
  (2 rows)

Imagine you have many friends with the same street name or city. Every time
this data is duplicated, it consumes space. Worse still, if a city name
changes,  you have to do a lot of work to update your database.

  Try to redesign our people table to reduce duplication:

  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |

You can read more about database normalisation `here
<http://en.wikipedia.org/wiki/Database_normalization>`_

Indexes
...............................................................................

  A database index is a data structure that improves the speed of data
  retrieval operations on a database table. *- Wikipedia*

Imagine you are reading a textbook and looking for the explanation of a concept
- and the textbook has no index! You will have to start reading at one cover
and work your way through the entire book until you find the information you
need. The index at the back of a book helps you to jump quickly to the page
with the relevant information.

::

  create index person_name_idx on people (name);

Now searches on name will be faster:

::

  Table "public.people"
    Column  |          Type          |               Modifiers                       
  ----------+------------------------+-----------------------------------------
   id       | integer                | not null default 
            |                        | nextval('people_id_seq'::regclass)
            |                        | 
   name     | character varying(50)  | 
   address  | character varying(200) | not null
   phone_no | character varying      | 
  Indexes:
   "people_pkey" PRIMARY KEY, btree (id)
   "person_name_idx" btree (name)

Sequences
...............................................................................

A sequence is a unique number generator. It is normally used to create a unique
identifier for a column in a table.

In this example, id is a sequence - the number is incremented each time a
record is added to the table:

::

   id |     name     |           address           |  phone_no   
   ---+--------------+-----------------------------+-------------
    1 | Tim Sutton   | 3 Buirski Plein, Swellendam | 071 123 123
    2 | Horst Duster | 4 Avenue du Roix, Geneva    | 072 121 122

Entity Relationship Diagramming
...............................................................................

In a normalised database, you typically have many relations (tables). The
entity-relationship diagram (ER Diagram) is used to design the logical
dependencies between the relations. Remember our un-normalised people table? 

::

  test=# select * from people;
   id |     name     |           address           |  phone_no   
  ----+--------------+-----------------------------+-------------
   1  | Tim Sutton   | 3 Buirski Plein, Swellendam | 071 123 123
   2  | Horst Duster | 4 Avenue du Roix, Geneva    | 072 121 122
  (2 rows)

With a little work we can split it into two tables, removing the need to repeat
the street name for individuals who live in the same street:

::

  test=# select * from streets;
   id |     name     
  ----+--------------
   1  | Plein Street
  (1 row)

and

::

  test=# select * from people;
   id |     name     | house_no | street_id |  phone_no   
  ----+--------------+----------+-----------+-------------
    1 | Horst Duster |        4 |         1 | 072 121 122
  (1 row)

We can then link the two tables using the 'keys' :kbd:`streets.id` and
:kbd:`people.streets_id`.

If we draw an ER Diagram for these two tables it would look something like
this:

.. image:: ../_static/postgres/er-beispiel.png

The ER Diagram helps us to express 'one to many' relationships. In this case
the arrow symbol show that one street can have many people living on it.

Our people model still has some normalisation issues - try to see if you can
normalise it further and show your thoughts by means of an ER Diagram.

  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |

Constraints, Primary Keys and Foreign Keys
...............................................................................

A database constraint is used to ensure that data in a relation matches the
modeller's view of how that data should be stored. For example a constraint on
your postal code could ensure that the number falls between :kbd:`1000` and
:kbd:`9999`.

A Primary key is one or more field values that make a record unique. Usually
the primary key is called id and is a sequence. 

A Foreign key is used to refer to a unique record on another table (using that
other table's primary key).

In ER Diagramming, the linkage between tables is normally based on Foreign keys
linking to Primary keys.

If we look at our people example, the table definition shows that the street
column is a foreign key that references the primary key on the streets table:

::

  Table "public.people"
    Column   |         Type          |  Modifiers                       
  -----------+-----------------------+--------------------------------------
   id        | integer               | not null default 
             |                       | nextval('people_id_seq'::regclass)
   name      | character varying(50) | 
   house_no  | integer               | not null
   street_id | integer               | not null
   phone_no  | character varying     | 
  Indexes:
  "people_pkey" PRIMARY KEY, btree (id)
  Foreign-key constraints:
  "people_street_id_fkey" FOREIGN KEY (street_id) REFERENCES streets(id)

Transactions
...............................................................................

When adding, changing, or deleting data in a database, it is always important
that the database is left in a good state if something goes wrong. Most
databases provide a feature called transaction support. Transactions allow you
to create a rollback position that you can return to if your modifications to
the database did not run as planned.

Take a scenario where you have an accounting system. You need to transfer funds
from one account and add them to another. The sequence of steps would go like
this:

 - remove R20 from Joe
 - add R20 to Anne

If something goes wrong during the process (e.g. power failure), the transaction
will be rolled back.

Implementing the Data Model
-------------------------------------------------------------------------------

Install PostgreSQL
...............................................................................

Under Ubuntu:

::

  sudo apt-get install postgresql-9.1

You should get a message like this:

::

  [sudo] password for timlinux: 
  Reading package lists... Done
  Building dependency tree       
  Reading state information... Done
  The following extra packages will be installed:
  postgresql-client-9.1 postgresql-client-common postgresql-common
  Suggested packages:
  oidentd ident-server postgresql-doc-9.1
  The following NEW packages will be installed:
  postgresql-9.1 postgresql-client-9.1 postgresql-client-common postgresql-common
  0 upgraded, 4 newly installed, 0 to remove and 5 not upgraded.
  Need to get 5,012kB of archives.
  After this operation, 19.0MB of additional disk space will be used.
  Do you want to continue [Y/n]? 

Press :kbd:`Y` and :kbd:`Enter` and wait for the download and installation to
finish.

Help
...............................................................................

PostgreSQL has very good `online
<http://www.postgresql.org/docs/9.1/static/index.html>`_ documentation. 

Create a database user
...............................................................................

Under Ubuntu:

After the installation is complete, run this command to become the postgres
user and then create a new database user:

::

  sudo su - postgres

Type in your normal log in password when prompted (you need to have sudo rights).

Now, at the postgres user's bash prompt, create the database user. Make sure
the user name matches your unix login name: it will make your life much easier,
as postgres will automatically authenticate you when you are logged in as that
user.

::

  createuser -d -E -i -l -P -r -s timlinux

Enter a password when prompted. I normally use a different password to my usual
unix login.

What do those options mean?

::

  -d, --createdb     role can create new databases
  -E, --encrypted    encrypt stored password
  -i, --inherit      role inherits privileges of roles it is a member of (default)
  -l, --login        role can login (default)
  -P, --pwprompt     assign a password to new role
  -r, --createrole   role can create new roles
  -s, --superuser    role will be superuser

Now you should should leave the postgres user's bash shell environment by
typing:

::

  exit

Verify the new account
...............................................................................

::

  psql -l

Should return something like this:

::

  timlinux@linfiniti:~$ psql -l
  List of databases
  Name      |  Owner   | Encoding | Collation  |   Ctype    |   
  ----------+----------+----------+------------+------------+
  postgres  | postgres | UTF8     | en_ZA.utf8 | en_ZA.utf8 | 
  template0 | postgres | UTF8     | en_ZA.utf8 | en_ZA.utf8 |
  template1 | postgres | UTF8     | en_ZA.utf8 | en_ZA.utf8 |
  (3 rows)

Type :kbd:`q` to exit.

Create a database
...............................................................................

The :kbd:`createdb` command is used to create a new database. It should be run
from the bash shell prompt.

::

  createdb address

You can verify the existence of your new database by using this command:

::

  psql -l

Which should return something like this:

::

  List of databases
  Name      |  Owner   | Encoding | Collation  |   Ctype    |   Access privileges   
  ----------+----------+----------+------------+------------+-----------------------
  address   | timlinux | UTF8     | en_ZA.utf8 | en_ZA.utf8 | 
  postgres  | postgres | UTF8     | en_ZA.utf8 | en_ZA.utf8 | 
  template0 | postgres | UTF8     | en_ZA.utf8 | en_ZA.utf8 | =c/postgres: postgres=CTc/postgres
  template1 | postgres | UTF8     | en_ZA.utf8 | en_ZA.utf8 | =c/postgres: postgres=CTc/postgres
  (4 rows)

Type :kbd:`q` to exit.

Starting a database shell session
...............................................................................

You can connect to your database easily like this:

::

  psql address

To exit out of the psql database shell, type:

::

  \q

For help in using the shell, type:

::

  \?

For help in using sql commands, type:

::

  \help

To get help on a specific command, type (for example):

::

  \help create table

See also the `Psql cheat sheet <../_static/postgres/psql_cheatsheet.pdf>`_ -
available online `here
<http://www.postgresonline.com/special_feature.php?sf_name=postgresql83_psql_cheatsheet&outputformat=html>`_.

Make Tables in SQL
...............................................................................

Let's start making some tables! We will use our ER Diagram as a guide. First,
let's create a streets table:

::

  create table streets (id serial not null primary key, name varchar(50));

:kbd:`serial` and :kbd:`varchar` are **data types**. :kbd:`serial` tells
PostgreSQL to start an integer sequence (autonumber) to populate the :kbd:`id`
automatically for every new record. :kbd:`varchar(50)` tells PostgreSQL to
create a character field of 50 characters in length. 

You will notice that the command ends with a :kbd:`;` - all SQL commands should
be terminated this way. When you press enter, psql will report something like
this:

::

  NOTICE:  CREATE TABLE will create implicit sequence "streets_id_seq" for
           serial column "streets.id"
  NOTICE:  CREATE TABLE / PRIMARY KEY will create implicit index "streets_pkey"
           for table "streets"
  CREATE TABLE

That means your table was created successfully, with a primary key :kbd:`streets_pkey`
using :kbd:`streets.id`.

Note: If you hit return without entering a :kbd:`;`, then you will get a prompt like
this: :kbd:`address-#`. This is because PG is expecting you to enter more. Enter
:kbd:`;` to run your command.

To view your table schema, you can do this:

::

  \d streets

Which should show something like this:

::

  Table "public.streets"
   Column |         Type          |            Modifiers                       
  --------+-----------------------+--------------------------------------
   id     | integer               | not null default 
          |                       | nextval('streets_id_seq'::regclass)
   name   | character varying(50) | 
  Indexes:
    "streets_pkey" PRIMARY KEY, btree (id)

To view your table contents, you can do this:

::

  select * from streets;

Which should show something like this:

::

   id | name 
   ---+------
   (0 rows)

As you can see, our table is empty!

Use the approach shown above to make a table called people:
Add fields such as phone number, home address, name, etc. (these aren't all valid names: change them to make them valid).

  Write the SQL you create here:

  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |

Solution:

::

  create table people (id serial not null primary key, 
                       name varchar(50), 
                       house_no int not null, 
                       street_id int not null, 
                       phone_no varchar null );

The schema for the table (enter :kbd:`\\d people`) looks like this:

::

  Table "public.people"
  Column     |         Type          |                      Modifiers                      
  -----------+-----------------------+-------------------------------------
  id         | integer               | not null default 
             |                       | nextval('people_id_seq'::regclass)
  name       | character varying(50) | 
  house_no   | integer               | not null
  street_id  | integer               | not null
  phone_no   | character varying     | 
  Indexes:
    "people_pkey" PRIMARY KEY, btree (id)

.. note:: For illustration purposes, we have purposely omitted the fkey
   constraint.

Create Keys in SQL
...............................................................................

The problem with our solution above is that the database doesn't know that
people and streets have a logical relationship. To express this relationship,
we have to define a foreign key that points to the primary key of the streets
table.

.. image:: ../_static/postgres/er-beispiel.png

There are two ways to do this: 
 - adding the key after the table has been created
 - defining the key at time of table creation

Our table has already been created, so let's do it the first way:

::

  alter table people 
    add constraint people_streets_fk foreign key (street_id) references streets(id);


That tells the :kbd:`people` table that its :kbd:`street_id` fields must match
a valid street :kbd:`id` from the :kbd:`streets` table.

The more usual way to create a constraint is to do it when you create the table:

::

  create table people (id serial not null primary key, 
                       name varchar(50), 
                       house_no int not null, 
                       street_id int references streets(id) not null, 
                       phone_no varchar null);

After adding the constraint, our table schema looks like this now:

::

  \d people
  Table "public.people"
    Column   |         Type          |            Modifiers                      
  -----------+-----------------------+---------------------------------
   id        | integer               | not null default 
             |                       | nextval('people_id_seq'::regclass)
   name      | character varying(50) | 
   house_no  | integer               | not null
   street_id | integer               | not null
   phone_no  | character varying     | 
  Indexes:
    "people_pkey" PRIMARY KEY, btree (id)
  Foreign-key constraints:
    "people_streets_fk" FOREIGN KEY (id) REFERENCES streets(id)

Create Indexes in SQL
...............................................................................

We want lightning fast searches on peoples names. To provide for this, we can
create an index on the name column of our people table:

::

  create index people_name_idx on people(name);

::

  address=# \d people
  Table "public.people"
    Column   |         Type          |                      Modifiers                      
  -----------+-----------------------+-----------------------------------
   id        | integer               | not null default nextval
             |                       | ('people_id_seq'::regclass)
   name      | character varying(50) | 
   house_no  | integer               | not null
   street_id | integer               | not null
   phone_no  | character varying     | 
  Indexes:
   "people_pkey" PRIMARY KEY, btree (id)
   "people_name_idx" btree (name)    <-- new index added!
  Foreign-key constraints:
   "people_streets_fk" FOREIGN KEY (id) REFERENCES streets(id)

Dropping Tables in SQL
...............................................................................

If you want to get rid of a table you can use the :kbd:`drop` command:

::

  drop table streets;


In our example, this would not work - why?

  Some deep and inspired thoughts as to why...

  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |

Sometimes you just can't stand having a table any more. Maybe you are sick of
all your friends. How can you get rid of them all in one easy step? Drop the
table of course! Of course, right now too much hard work has gone into our
table to get rid of it on a whim, but if you really hate your friends that
much, nothing's stopping you from ridding yourself of them forever:

::

  drop table people;

This time it works fine! Why? Are people less important than streets?

  Some thoughts on why you could drop people:

  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |

.. note:: If you actually did enter that command and dropped the :kbd:`people`
   table, now would be a good time to rebuild it, as you will need it in the
   next exercises.

A word on PG Admin III
...............................................................................

We are showing you the SQL commands from the psql prompt because it's a very
useful way to learn about databases. However, there are quicker and easier ways
to do a lot of what we are showing you. Install PGAdminIII and you can create,
drop, alter etc tables using 'point and click' operations in a GUI.

Under Ubuntu, you can install it like this:

::

  sudo apt-get install pgadmin3

Adding Data to the Model
-------------------------------------------------------------------------------

Insert statement
...............................................................................

How do you add data to a table? The sql :kbd:`INSERT` statement provides the
functionality for this:

::

  insert into streets (name) values ('High street');

A couple of things to note:

 - after the table name (:kbd:`streets`), you list the column names that you
   will be populating (in this case only the :kbd:`name` column). 
 - after the :kbd:`values` keyword, place the list of field values.
 - strings should be quoted using single quotes.
 - you will note that I did not insert a value for the :kbd:`id` column - that
   is because it is a sequence and will be autogenerated.
 - if you do manually set the :kbd:`id`, you may cause serious problems with
   the integrity of your database.

You should see :kbd:`INSERT 0 1` if it is successful.

You can see the result of your insert action by selecting all the data in the
table:

::

  select * from streets;

result:

::

  select * from streets;
   id |    name     
  ----+-------------
    1 | High street
  (1 row)

Now you try:

Use the :kbd:`INSERT` command to add a new street to the :kbd:`streets` table.

  Write the sql you used here:

  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |

Sequencing data addition according to constraints
...............................................................................

Try to add a person to the people table with the following details:

::

  Name: Joe Smith
  House Number: 55
  Street: Main Street
  Phone: 072 882 33 21

Remember, we defined phone numbers as strings.

  What problems did you encounter? 

  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |
  |

You should have an error report if you try to do this without first creating a
record for Main Street in the :kbd:`streets` table. 

What error did you get?

You should have noticed that:
 - You can't add the street using its name
 - You can't add a street using a street :kbd:`id` before first creating the
   street record on the streets table

Remember that our two tables are linked via a Primary/Foreign Key pair. This
means that no valid person can be created without there also being a valid
corresponding street record.

Here is how we made our friend:

::

  insert into streets (name) values('Main Street');
  insert into people (name,house_no, street_id, phone_no) 
    values ('Joe Smith',55,2,'072 882 33 21');

If you look at the streets table again (using a select statement as before),
you'll see that the :kbd:`id` for the :kbd:`Main Street` entry is :kbd:`2`.
That's why we could merely enter the number :kbd:`2` above. Even though we're
not seeing :kbd:`Main Street` written out fully in the entry above, the
database will be able to associate that with the :kbd:`street_id` value of
:kbd:`2`.

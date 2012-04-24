Extra: Some Advanced Topics
===============================================================================

Tablespaces
-------------------------------------------------------------------------------

You can define where postgres should store its data on disk by creating
tablespaces.

::

  CREATE TABLESPACE homespace LOCATION '/home/pg';

When you create a database, you can then specify which tablespace to use e.g.:

::

  createdb --tablespace=homespace t4a

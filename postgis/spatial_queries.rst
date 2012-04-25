|LS| Spatial Queries
===============================================================================

Spatial queries are no different from other database queries. You can use the
geometry column like any other database column. With the installation of
PostGIS in our database, we have additional functions to query our database.

**The goal for this lesson:** To see how spatial functions are implemented
similarly to "normal" non-spatial functions.

.. _backlink-spatial-queries-1:

Spatial Operators
-------------------------------------------------------------------------------

When you want to know which points are within a distance of 2 degrees to a
point(X,Y) you can do this with:

::

  select * 
  from people
  where st_distance(the_geom,'SRID=4326;POINT(33 -34)') < 2;

Result:

::

   id |     name     | house_no | street_id |   phone_no    |   the_geom                  
  ----+--------------+----------+-----------+---------------+-----------------
    6 | Fault Towers |       34 |         3 | 072 812 31 28 | 01010008040C0
  (1 row)

.. note:: the_geom value above was truncated for space on this page. If you
   want to see the point in human-readable coordinates, try something similar
   to what you did in the section "View a point as WKT", above.

How do we know that the query above returns all the points within 2 *degrees*?
Why not 2 *meters*? Or any other unit, for that matter?

:ref:`Check your results <spatial-queries-1>`

.. _backlink-spatial-queries-2:

Spatial Indexes
-------------------------------------------------------------------------------

We also can define spatial indexes. A spatial index makes your spatial queries
much faster. To create a spatial index on the geometry column use:

::

  CREATE INDEX people_geo_idx
    ON people
    USING gist
    (the_geom);

Result:

::

  address=# \d people
  Table "public.people"
     Column   |         Type          |                Modifiers                      
   -----------+-----------------------+----------------------------------------
    id        | integer               | not null default
              |                       | nextval('people_id_seq'::regclass)
    name      | character varying(50) | 
    house_no  | integer               | not null
    street_id | integer               | not null
    phone_no  | character varying     | 
    the_geom  | geometry              | 
  Indexes:
    "people_pkey" PRIMARY KEY, btree (id)
    "people_geo_idx" gist (the_geom)  <-- new spatial key added
    "people_name_idx" btree (name)
  Check constraints:
    "people_geom_point_chk" CHECK (st_geometrytype(the_geom) = 'ST_Point'::text
    OR the_geom IS NULL)
  Foreign-key constraints:
    "people_street_id_fkey" FOREIGN KEY (street_id) REFERENCES streets(id)

..

  Now you try - modify the cities table so its geometry
  column is spatially indexed.

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

:ref:`Check your results <spatial-queries-2>`


PostGIS Spatial Functions Demo
-------------------------------------------------------------------------------

In order to demo PostGIS spatial functions, we'll create a new database
containing some fictional data.

To start, create a new database:

::
  
  createdb postgis_demo

Remember to install PLPGSQL:

::

  createlang plpgsql postgis_demo

Then install the PostGIS functions and the spatial reference system. For
example, on Linux:

::

  psql postgis_demo < /usr/share/postgresql/9.1/contrib/postgis-1.5/postgis.sql
  psql postgis_demo < /usr/share/postgresql/9.1/contrib/postgis-1.5/spatial_ref_sys.sql

Next, import the data provided in the :kbd:`exercise_data/postgis/` directory.

Import using the command line
...............................................................................

You can import the data the same way you did in the previous lesson using the
command line.

|IC|
-------------------------------------------------------------------------------

You have seen how to query spatial objects using the new database functions
from PostGIS.

|WN|
-------------------------------------------------------------------------------

Next we're going to investigate the structures of more complex geometries and
how to create them using PostGIS.

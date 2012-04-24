|LS| Import and Export
===============================================================================

Of course, a database with no easy way to migrate data into it and out of it
would be no fun. Even more so for spatial data! Fortunately, there are a number
of tools that will let you easily move data into and out of PostGIS.

shp2pgsql
-------------------------------------------------------------------------------

shp2pgsql is a commandline tool to import ESRI shapefiles to the database.
Under Unix, you can use the following command for importing a new PostGIS
table:

::

  shp2pgsql -s <SRID> -c -D -I <path to shapefile> <schema>.<table> | \
    psql -d <databasename> -h <hostname> -U <username>

Under Windows, you have to perform the import process in two steps:

::

  shp2pgsql -s <SRID> -c -D -I <path to shapefile> <schema>.<table> > import.sql
  psql psql -d <databasename> -h <hostname> -U <username> -f import.sql

pgsql2shp
-------------------------------------------------------------------------------

pgsql2shp is a commandline tool to export PostGIS Tables, Views or SQL select
queries. To do this under Unix:

::

  pgsql2shp -f <path to new shapefile> -g <geometry column name> \
    -h <hostname> -U <username> <databasename> <table | view>
  pgsql2shp -f <path to new shapefile> -g <geometry column name> \
    -h <hostname> -U <username> "<query>"

ogr2ogr
-------------------------------------------------------------------------------

ogr2ogr is a very powerful tool to convert data into and from postgis to many
data formats. ogr2ogr is part of the GDAL/OGR Software and has to be installed
separately. To export a table from PostGIS to GML, you can use this command:

::

  ogr2ogr -f GML export.gml PG:'dbname=<databasename> user=<username>
          host=<hostname>' <Name of PostGIS-Table>

spit
-------------------------------------------------------------------------------

SPIT is a QGIS plugin which is delivered with QGIS. You can use SPIT for
uploading ESRI shapefiles to postgis.

|IC|
-------------------------------------------------------------------------------

Importing and exporting data to and from the database can be done in many
various ways. Especially when using disparate data sources, you will probably
use these functions (or others like them) on a regular basis.

|WN|
-------------------------------------------------------------------------------

Next you'll be shown some advanced functions that could not be covered
elsewhere.

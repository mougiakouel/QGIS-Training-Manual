************************
Working with Vector Data
************************

Vector data represents features in terms of points, lines and polygons on a
coordinate plane. It is usually used to store discrete features, like roads and
city blocks.

Spatial and Attribute Data
==========================

It's important to know that the data you will be working with does not only
represent where objects are in space, but also tells you what those objects
are.

From the previous exercise, you should have the :guilabel:`streets` layer
loaded in your map. What you can see right now is merely the position of the
roads.

To see all the data available to you, find this button in QGIS:

.. image:: ../../../../_static/vector/004.png

Clicking it will show you a table with more data about the :guilabel:`streets`
layer. This extra data is called *attribute data*. The lines that you can see
on your map represent where the streets go; this is the *spatial data*.

These definitions are commonly used in GIS, so it's essential to remember them!
(You may now close the attribute table.)

Shapefiles
==========

The Shapefile is a specific file format that allows you to store GIS data in an
associated group of files. Each layer consists of several files with the same
name, but different file types. Shapefiles are easy to send back and forth, and
most GIS software can read them.

Exercise: Loading vector data from shapefiles
---------------------------------------------

Refer back to the introductory exercise in the previous section for
instructions on how to add vector layers. Load the "places" dataset into your
map following the same method.

Check your results
..................

There should be two layers on your map: :guilabel:`places` and
:guilabel:`streets`.

Databases
=========

Databases allow you to store a large volume of associated data in one file. You
may already be familiar with database management systems (DBMS) such as
Microsoft Access. GIS applications can also make use of databases. GIS-specific
databases have extra functions, because they need to handle spatial data.

Exercise: Loading vector data from a database
---------------------------------------------

Find this icon in QGIS:

.. image:: ../../../../_static/vector/005.png

Clicking it will give you this dialog:

.. image:: ../../../../_static/vector/006.png

In this dialog, click the :guilabel:`New` button. In the same folder as the
other data, you should find the file :guilabel:`land_use.db`. Select it and
click :guilabel:`Open`.

You will now see the first dialog again. Notice that the dropdown select above
the three buttons now reads "land_use.db@...", followed by the path of the
database file on your computer. Click the :guilabel:`Connect` button. You
should see this in the previously empty box:

.. image:: ../../../../_static/vector/007.png

Click on the first layer to select it, then use :kbd:`shift+click` to select
all of them at once.

Click :guilabel:`Add`. This will add all three layers to the map at once.

Remember to save the map often!

Check your results
..................

All the vector layers should be loaded into the map. It probably won't look
nice yet:

.. image:: ../../../../_static/vector/001.png

(We'll fix the ugly colors later.)

Layer Ordering
==============

Depending on the version of QGIS that you are using, you may have a checkbox
beneath your Layers list reading :guilabel:`Control rendering order`. This must
be checked (switched on) so that moving the layers up and down in the Layers
list will bring them to the front or send them to the back in the map.

Exercise: Reordering the layers
-------------------------------

The order in which the layers have been loaded into the map is probably not
logical at this stage. It's possible that the road layer is completely hidden
because other layers are on top of it.

For example, this layer order...

.. image:: ../../../../_static/vector/002.png

... would result in roads and places being hidden as they run *underneath*
urban areas.

To resolve this problem, simply click and drag on a layer in the Layers list.
Reorder them to look like this:

.. image:: ../../../../_static/vector/003.png

Check your results
..................

Verify that your Layers list resembles the one in the figure above.


|LS| Raster to Vector Conversion
===============================================================================

To combine a raster and vector analysis, you need to convert the one type of
data to the other. Let's convert the raster result of the previous lesson to a
vector.

**The goal for this lesson:** To get the raster result into a vector that can
be used to complete the analysis.

|FA| |moderate| The :guilabel:`Raster to Vector` Tool
-------------------------------------------------------------------------------

To access this tool, click on :menuselection:`Raster --> Conversion -->
Polygonize (Raster to Vector)`.

The tool dialog will appear. Set it up like this:

.. image:: ../_static/complete_analysis/001.png

Change the field name (describing the values of the raster) to :kbd:`suitable`.

Save the shapefile under :kbd:`exercise_data/residential_development` as
:kbd:`all_terrain.shp`.

Now you have a vector file which contains all the values of the raster, but
the only areas you're interested in are those that are suitable; i.e., those
polygons where the value of :kbd:`suitable` is :kbd:`1`.

.. _backlink-complete-analysis-1:

|moderate| |TY|
-------------------------------------------------------------------------------

Refer back to the module on vector analysis to a create a new vector file that
contains only the polygons where :kbd:`suitable` has the value of :kbd:`1`.
Save the new file under :kbd:`exercise_data/residential_development` as
:guilabel:`suitable_terrain.shp`.

:ref:`Check your results <complete-analysis-1>`



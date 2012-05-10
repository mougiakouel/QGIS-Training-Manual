|LS| Spatial Statistics
===============================================================================

.. note:: Add Siddique sponsorship message.

Spatial statistics allow you to analyze and understand what is going on in a
given vector dataset. QGIS includes several standard tools for statistical
analysis which prove useful in this regard.

**The goal for this lesson:** To know how to use QGIS' spatial statistics
tools.

|moderate| |FA| Create a Test Dataset
-------------------------------------------------------------------------------

In order to get a point dataset to work with, we'll need a point dataset. In
order to mimic a real dataset, let's create a random set of points.

To do so, you'll need a polygon dataset defining the extents of the area you
want to create the points in.

We'll use the area covered by streets. Into a new empty map, load the
:kbd:`roads_33S` layer from the :kbd:`exercise_data/projected_data` directory,
as well as the :kbd:`srtm_41_19.tif` raster found in
:kbd:`exercise_data/raster/SRTM/`. Use the :guilabel:`Convex hull(s)` tool
(available under :menuselection:`Vector --> Geoprocessing Tools`) to generate
an area enclosing all the roads:

.. image:: ../_static/vector_analysis/059.png
   :align: center

Save the output under :kbd:`exercise_data/spatial_statistics/` as
:kbd:`roads_hull.shp`. Add it to the TOC (:guilabel:`Layers list`) when
prompted.

Creating random points
...............................................................................

Now create random points in this area using the tool at :menuselection:`Vector
--> Research Tools --> Random points`:

.. image:: ../_static/vector_analysis/060.png
   :align: center

Save the output under :kbd:`exercise_data/spatial_statistics/` as
:kbd:`random_points.shp`. Add it to the TOC (:guilabel:`Layers list`) when
prompted:

.. image:: ../_static/vector_analysis/061.png
   :align: center

Sampling the data
...............................................................................

To create a sample dataset from the raster, you'll need to use the
:guilabel:`Point sampling tool` plugin. Refer ahead to the module on plugins if
necessary. Search for the phrase :kbd:`point sampling` and you will find the
plugin. Note that it is in a third-party repository at time of writing, so
you'll need to have third-party repositories enabled.

You will find the tool under :menuselection:`Plugins --> Analyses --> Point
sampling tool`:

.. image:: ../_static/vector_analysis/063.png
   :align: center

Select :guilabel:`random_points` as the layer containing sampling points, and
the SRTM raster as the band to get values from.

You'll be using this sample layer for the rest of the statistical exercises.

|moderate| |FA| Basic Statistics
-------------------------------------------------------------------------------

Now get the basic statistics for this layer by using the :menuselection:`Vector
--> Analysis Tools --> Basic statistics` tool. 

.. image:: ../_static/vector_analysis/062.png
   :align: center

|IC|
-------------------------------------------------------------------------------

@todo

|WN|
-------------------------------------------------------------------------------

Now that we've covered vector analysis, why not see what can be done with
rasters? That's what we'll do in the next module!

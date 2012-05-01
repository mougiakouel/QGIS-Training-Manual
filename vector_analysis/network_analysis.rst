|LS| Network Analysis
===============================================================================

Calculating the shortest distance between two points is a commonly cited use
for GIS. QGIS ships with this tool, but it's not visible by default and has a
trick to getting it started. In this brief lesson, we'll show you what you need
to get started.

**The goal for this lesson:** To activate, configure and use the
:guilabel:`Road Graph` plugin.

|basic| |FA| Activate the Tool
-------------------------------------------------------------------------------

QGIS has many plugins that add to its basic functions. Many of these plugins
are so useful that they ship along with the program straight out of the box.
They're still hidden by default, though. So in order to use them, you need to
activate them first.

To activate the :guilabel:`Road Graph` plugin, start the :guilabel:`Plugin
Manager` by clicking on the QGIS main window's menu item
:menuselection:`Plugins --> Manage Plugins`. A dialog appears. Select the
plugin like this:

.. image:: ../_static/vector_analysis/039.png
   :align: center

Click :guilabel:`OK` on the :guilabel:`Plugin Manager` dialog.

To see the plugin in your interface, go to :menuselection:`View --> Panels` and
ensure that :guilabel:`Shortest path` has a check mark next to it.

This panel will appear in your interface:

.. image:: ../_static/vector_analysis/042.png
   :align: center


|basic| |FA| Configure the Tool
-------------------------------------------------------------------------------

To have a layer to calculate on, first save your current map. Then create a new
map and load the layer :guilabel:`exercise_data/projected_data/roads_33S.shp`.

Since so many different configurations are possible when analyzing networks,
the plugin doesn't assume anything before you've set it up. Unfortunately, this
means that it won't do anything at all if you don't set it up first. To do
that, find and click on :menuselection:`Plugins --> Road graph --> Road graph
settings`.

A dialog will appear. Make sure it's set up like this (use defaults unless
otherwise specified):

.. image:: ../_static/vector_analysis/040.png
   :align: center

- :guilabel:`Time unit`: :guilabel:`hour`
- :guilabel:`Distance unit`: :guilabel:`kilometer`
- :guilabel:`Layer`: :guilabel:`roads_33S`
- :guilabel:`Speed field`: :guilabel:`Always use default` / :guilabel:`km/h`

.. image:: ../_static/vector_analysis/041.png
   :align: center

- :guilabel:`Direction`: :guilabel:`Two-way direction`
- :guilabel:`Speed`: :guilabel:`60`


|basic| |FA| Use the Tool
-------------------------------------------------------------------------------

Let's say you want to get from Barrydale to Bonnievale:

.. image:: ../_static/vector_analysis/043.png
   :align: center

In the plugin panel, click on the :guilabel:`Capture Point` button next to the
:guilabel:`Start` field:

.. image:: ../_static/vector_analysis/044.png
   :align: center

Then click somewhere in Barrydale. Next, use the :guilabel:`Capture Point`
button next to the :guilabel:`Stop` field and capture a point somewhere in
Bonnievale.

Now click on the :guilabel:`Calculate` button to see the solution:

.. image:: ../_static/vector_analysis/045.png
   :align: center

.. image:: ../_static/vector_analysis/046.png
   :align: center

|IC|
-------------------------------------------------------------------------------

Now you know how to use the :guilabel:`Road Graph` plugin to solve
shortest-path problems.

|WN|
-------------------------------------------------------------------------------

Now that we've covered vector analysis, why not see what can be done with
rasters? That's what we'll do in the next module!

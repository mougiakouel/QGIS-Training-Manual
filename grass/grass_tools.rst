|LS| GRASS Tools
===============================================================================

In this lesson we will present a selection of tools to give you an idea of the
capabilities of GRASS.

|basic| |FA| Set Raster Colors
-------------------------------------------------------------------------------

Open the :guilabel:`GRASS Tools` dialog. Look for the :kbd:`r.colors.table`
module by searching for it in the :guilabel:`Filter` field of the
:guilabel:`Modules List` tab.

Open the tool and set it up like this:

.. image:: ../_static/grass/020.png

When you run the tool, it will recolor your raster:

.. image:: ../_static/grass/021.png

|basic| |FA| Visualize Data in 3D
-------------------------------------------------------------------------------

GRASS allows you to use a DEM to visualize your data in three dimensions. The
tool you'll use for this operates on the GRASS Region, which at the moment is
set to the whole extent of South Africa, as you set it up before. To redefine
the extent to cover only our raster dataset, click this button:

.. image:: ../_static/grass/024.png

When this tool is activated, your cursor will turn into a cross whe over the
QGIS map canvas. Use it to click and drag a rectangle around the edges of the
GRASS raster. Click :guilabel:`OK` in the :guilabel:`GRASS Region Settings`
dialog when done.

Search for the :kbd:`nviz` tool:

.. image:: ../_static/grass/022.png

Set it up as shown:

.. image:: ../_static/grass/023.png

Remember to enable both :guilabel:`Use region of this map` buttons to the right
of the two raster selection dropdown menus. This will allow NVIZ to correctly
assess the resolution of the rasters.

Now click the :guilabel:`Run` button. NVIZ will set up a 3D environment using
the raster and vector selected. This may take some time, depending on your
hardware. When it's done, you will see the map rendered in 3D in a new window:

.. image:: ../_static/grass/025.png

Experiment with the :guilabel:`height`, :guilabel:`z-exag`, and :guilabel:`View
method` settings to change your view of the data. The navigation methods may
take some getting used to.

TODO: GRASS raster calculator

|IC|
-------------------------------------------------------------------------------

In this lesson, we have covered only a few of the many tools GRASS offers. To
explore the capabilities of GRASS for yourself, open the :guilabel:`GRASS
Tools` dialog and scroll down the :guilabel:`Modules List`. Or for a more
structured approach, look under the :guilabel:`Modules Tree` tab, which
organizes tools by type.

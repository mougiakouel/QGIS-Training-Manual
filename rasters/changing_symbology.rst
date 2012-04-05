|LS| Changing Raster Symbology
===============================================================================

Not all raster data consists of aerial photographs. There are many other forms
of raster data, and in many of those cases, it's essential to symbolize the
data properly so that it becomes properly visible and useful.

**The goal for this lesson:** To change the symbology for a raster layer.

|basic| |TY| loading the raster dataset
-------------------------------------------------------------------------------

Use the same approach you used to load raster datasets before. Into your
current map (which, following from the previous lesson, should be
:kbd:`analysis.qgs`) load the dataset :kbd:`srtm_41_19.tif` [1]_, found under
the directory :kbd:`exercise_data/raster/SRTM/`. Once it appears in the
:guilabel:`Layers list`, rename it to :guilabel:`SRTM`.

Once it's loaded, you'll notice that it's basically a gray rectangle. That's
because its symbology hasn't been customized. So that's what you should do
next.

Open the :guilabel:`Layer Properties` dialog for the :guilabel:`SRTM` layer and
switch to the :guilabel:`Style` tab.


.. [1] Data obtained from http://srtm.csi.cgiar.org/

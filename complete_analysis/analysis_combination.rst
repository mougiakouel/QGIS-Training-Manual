|LS| Combining the Analyses
===============================================================================

Using the vectorized results of the raster analysis will allow you to select
only those farms with suitable tarrain.

**The goal for this lesson:** To use the vectorized terrain results to select
suitable farms.

|moderate| |TY|
-------------------------------------------------------------------------------

Save your current map (:kbd:`raster_analysis.qgs`) and open the map in which
you did the vector analysis earlier (:kbd:`analysis.qgs`).

In the :guilabel:`Layers list`, enable these layers:
- :guilabel:`hillshade`,
- :guilabel:`solution`,
- :guilabel:`important_roads` and
- either :guilabel:`aerial_photos` or :guilabel:`DEM`.

In addition to these layers, which should already be loaded in the map from
when you worked on it before, also add the :kbd:`suitable_terrain.shp` dataset.

If necessary, refer back to the :ref:`select by location <select-by-location>`
exercise. Using the method from before, select all the farms (in the
:guilabel:`solution` layer) that intersect with the :kbd:`suitable_terrain`
layer. Save the selection as :kbd:`new_solution.shp`.

You should now have a layer with these farms as your solution:

.. image:: ../_static/complete_analysis/004.png


.. _backlink-complete-analysis-2:

|moderate| |TY| Inspecting the Results
-------------------------------------------------------------------------------

Look at each of the farms in your :guilabel:`new_solution` layer. Compare them
with the :guilabel:`suitable_terrain` layer by changing the symbology for the
:guilabel:`new_solution` layer so that it has outlines only. What do you notice
about some of the farms? Are they all suitable just because they intersect with
the :guilabel:`suitable_terrain` layer? Why or why not? Which ones would you
deem to be unsuitable?

:ref:`Check your results <complete-analysis-2>`


.. _backlink-complete-analysis-3:

|moderate| |TY| Refining the Analysis
-------------------------------------------------------------------------------

Now that you can see from the results that some farms were included that were
not really suitable, it becomes possible to refine the analysis. Save your
current map, then open the :guilabel:`raster_analysis.qgs` map again. Recall
that the :guilabel:`all_conditions_simple` layer was used to arrive at the new
solution, so to refine the analysis, we should decrease the area that is
considered suitable. This will prevent the farms that were just touching
suitable areas from being included.

Use the :guilabel:`Raster --> Analysis --> Proximity (Raster distance)` tool on
the :guilabel:`all_conditions_simple` layer to filter out all the suitable
pixels that are one pixel away from unsuitable pixels, then repeat the rest of
the analysis from that point on.

How do your results differ this time?

:ref:`Check your results <complete-analysis-3>`

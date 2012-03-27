Layer Ordering
==============

The layers in your Layers list are drawn on the map in a certain order. The
layer at the bottom of the list is drawn first, and the layer at the top is
drawn last. By changing the order that they are shown on the list, you can
change the order they are drawn in.

.. note:: Depending on the version of QGIS that you are using, you may have a
   checkbox beneath your Layers list reading :guilabel:`Control rendering
   order`. This must be checked (switched on) so that moving the layers up and
   down in the Layers list will bring them to the front or send them to the
   back in the map.

Exercise: Reordering the layers
-------------------------------

The order in which the layers have been loaded into the map is probably not
logical at this stage. It's possible that the road layer is completely hidden
because other layers are on top of it.

For example, this layer order...

.. image:: ../_static/vector/002.png

... would result in roads and places being hidden as they run *underneath*
urban areas.

To resolve this problem, simply click and drag on a layer in the Layers list.
Reorder them to look like this:

.. image:: ../_static/vector/003.png

Check your results
..................

Verify that your Layers list resembles the one in the figure above.

************************
Working with Vector Data
************************

Vector data represents features in terms of points, lines and polygons on a
coordinate plane. It is usually used to store discrete features, like roads and
city blocks.

Exercise: Loading vector data
=============================

Refer back to the introductory exercise in the previous section for
instructions on how to add vector layers.

Following a similar procedure, add all the provided vector layers into the map,
then save the map. As you add layers, random colors will be assigned.  They
won't necessarily be very pleasing to the eye, so in the next exercise we'll
have to remedy this situation.

Check your results
------------------

All the vector layers should be loaded into the map. It probably won't look
nice yet:

.. image:: ../../../../_static/vector/001.png

(We'll fix the ugly colors later.)

Exercise: Reordering the layers
===============================

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
------------------

Verify that your Layers list resembles the one in the figure above.


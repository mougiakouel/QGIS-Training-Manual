************************
Working with vector data
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

All the vector layers should be loaded into the map. It probably won't be much
to look at:

.. image:: ../../../../_static/vector/001.png

Exercise: Reordering the layers
===============================

The order in which the layers have been loaded into the map is probably not
logical at this stage. What we need to prevent is to have the features on any
one layer being hidden by a layer being drawn over it.

For example, this layer order...

.. image:: ../../../../_static/vector/002.png

... would result in roads and places being hidden as they run *underneath*
urban areas.

To resolve this problem, simply click and drag on a layer in the TOC. Reorder
them thus:

.. image:: ../../../../_static/vector/003.png



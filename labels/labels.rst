*************
Adding Labels
*************

Labels can be added to a map to show any information about an object. Any
vector layer can have labels associated with it. These labels rely on the
attribute data of a layer for their content.

Labels and Attribute Data
=========================

Up to now, none of the changes we have made to the map have been influenced by
the objects that are being shown. In other words, all the farms look alike, and
all the roads look alike. When looking at the map, the viewers don't know
anything about the roads they are seeing; only that there is a road of a
certain shape in a certain area.

But the whole strength of GIS is that all the objects that are visible on the
map, also have attributes. Maps in a GIS aren't just pictures. They represent
not only objects in locations, but also information about those objects.

Exercise: Attribute data
------------------------

Open the attribute table for the :guilabel:`places` layer (refer back to the
section *"Working with Vector Data"* if necessary). Which field would be the
most useful to represent in label form, and why?

Check your results
..................

The *NAME* field is the most useful to show as labels. This is because all its
values are unique for every object, and it contains no "null" values (i.e.,
fields with no value).

The Label Tool
===============

The :guilabel:`Layer Properties` dialog does have a :guilabel:`Labels` tag, but
for this example we will not be using it. Instead, we'll use the separate
:guilabel:`Label tool`, which has more options.

Exercise: Using labels
----------------------

Before being able to access the Label tool, you will need to ensure that it has
been activated. First, go to the menu item :menuselection:`View --> Toolbars`,
and ensure that the :guilabel:`Label` item has a check mark next to it. If it
doesn't, click on the :guilabel:`Label` item, and it will be activated.

Once it has been activated (or if it already had a check mark), click on the
:guilabel:`places` layer in the :guilabel:`Layers list`, so that it is
highlighted. Then look for the following toolbar button:

.. image:: ../_static/labels/001.png

This should give you the following dialog:

.. image:: ../_static/labels/002.png

Checking the box next to :guilabel:`Label this layer with...` will result in
this:

.. image:: ../_static/labels/003.png

You'll need to choose which field in the attributes will be used for the
labels. Previously, you decided it would be the *NAME* field. Select
:guilabel:`NAME` from the list:

.. image:: ../_static/labels/004.png

... and click :guilabel:`OK`. The map should now have labels like this:

.. image:: ../_static/labels/005.png



- changing font options etc. (global)

- get rid of points for layer, use "over point", other style options

- using STREETS layer:
  multipart objects - label each part
  setting label attrs from field (intermediate + advanced) - may require that we modify the data to put font sizes (e.g.) as an attribute


|LS| The Label Tool
===============================================================================

Labels can be added to a map to show any information about an object. Any
vector layer can have labels associated with it. These labels rely on the
attribute data of a layer for their content.

.. note:: The :guilabel:`Layer Properties` dialog does have a
   :guilabel:`Labels` tab, but for this example we will not be using it. It has
   too few options and may be difficult to work with, which is why it will
   probably be taken out of new versions of QGIS (after 1.8). Instead, for this
   lesson we'll use the separate :guilabel:`Label tool`, which has more options
   and is more user-friendly.

**The goal for this lesson:** To apply useful and good-looking labels to a
layer.

|basic| |FA| Using labels
-------------------------------------------------------------------------------

Before being able to access the Label tool, you will need to ensure that it has
been activated. First, go to the menu item :menuselection:`View --> Toolbars`,
and ensure that the :guilabel:`Label` item has a check mark next to it. If it
doesn't, click on the :guilabel:`Label` item, and it will be activated.

Once it has been activated (or if it already had a check mark), click on the
:guilabel:`places` layer in the :guilabel:`Layers list`, so that it is
highlighted. Then look for the following toolbar button:

.. image:: ../_static/labels/001.png

This gives you the following dialog:

.. image:: ../_static/labels/002.png

Checking the box next to :guilabel:`Label this layer with...` will result in
this:

.. image:: ../_static/labels/003.png

You'll need to choose which field in the attributes will be used for the
labels. In the previous lesson, you decided that the *NAME* field was the most
suitable one for this purpose. Select :guilabel:`NAME` from the list:

.. image:: ../_static/labels/004.png

... and click :guilabel:`OK`. The map should now have labels like this:

.. image:: ../_static/labels/005.png

|basic| |FA| Changing label options
-------------------------------------------------------------------------------

What we have so far is good, but as you can see, the labels are overlapping the
points that they are associated with. That doesn't look very nice. The text is
also a bit larger than it needs to be. Let's fix these problems!

Open the :guilabel:`Label tool` again by clicking on its button as before. To
change the text properties, click on the ellipsis (:guilabel:`...`) button:

.. image:: ../_static/labels/006.png

A standard text change dialog appears, similar to those in many other programs.
Change the font to :kbd:`Arial` size :kbd:`9`. Your labels will now look like
this:

.. image:: ../_static/labels/007.png

That's the font problem solved! Now let's look at the problem of the labels
overlapping the points, but before we do that, let's take a look at the
:guilabel:`Buffer` option. You'll see it in the :guilabel:`Label tool` dialog.
Deactivate the label buffer by clicking on the checkbox next to the text that
says :guilabel:`Buffer`, then clicking :guilabel:`Apply`. Note the effects in
the map:

.. image:: ../_static/labels/008.png

Now you can see why we usually need label buffers! Reactivate them by clicking
in the same checkbox as before, and then clicking :guilabel:`Apply`.

Back to the problem of the labels that overlap points. Go to the
:guilabel:`Advanced` tab and change the value of :guilabel:`Label distance` to
:kbd:`2`...

.. image:: ../_static/labels/009.png

... then click :guilabel:`Apply`. This is the result:

.. image:: ../_static/labels/010.png

|FA| |moderate| Using labels instead of layer symbology
-------------------------------------------------------------------------------

In many cases, the location of a point doesn't need to be very specific. For
example, most of the points in the :guilabel:`places` layer refer to entire
towns or suburbs, and the specific point associated with such features is not
that specific on a large scale. In fact, giving a point that is too specific is
often confusing for someone reading a map.

To name an example: on a map of the world, the point given for the European
Union may be somewhere in Poland, for instance. To someone reading the map,
seeing a point labeled *European Union* in Poland, it may seem that the capital
of the European Union is therefore in Poland.

So, to prevent this kind of misunderstanding, it's often useful to deactivate
the point symbols and replace them completely with labels.

In QGIS, you can do this by changing the position of the labels:

.. image:: ../_static/labels/011.png

Now hide the point symbols by editing the layer style as usual, and setting the
size of points to :kbd:`0`:

.. image:: ../_static/labels/012.png

Click :guilabel:`OK` and you'll see this result:

.. image:: ../_static/labels/013.png

As you can see, some of the labels are now missing to prevent overlap (at this
scale). Sometimes this is what you want when dealing with datasets that have
many points, but at other times you will lose useful information this way.
There is another possibility for handling cases like this, which we'll cover in
a later exercise in this lesson.

|TY| |moderate| Customize the labels
-------------------------------------------------------------------------------

First, return the label and symbol settings to the way they were before.



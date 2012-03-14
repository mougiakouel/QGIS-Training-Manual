*********
Symbology
*********

Exercise: Changing colors
=========================

Using the random palette automatically assigned when loading the layers, your
current map is probably not very pleasing to the eye. It would be preferable
to assign your own choice of colors and symbols.

To change a layer's symbology, open its :guilabel:`Layer Properties`. This is
done by right-clicking on the layer in the Layers list, and then selecting the
menu item :guilabel:`Properties` in the menu that appears. Let's begin by
changing the color of the :guilabel:`urban` layer.

.. note:: You can also access a layer's properties by double-clicking on the
   layer in the Layers list.

In the :guilabel:`Properties` window, select the :guilabel:`Style` tab at the
extreme left:

.. image:: ../../../../_static/symbology/004.svg

Click the :guilabel:`Change` button next to the :guilabel:`Color` label
(outlined in orange above).  A standard color dialog will appear:

.. image:: ../../../../_static/symbology/005.png

Choose a gray color and click :guilabel:`OK`. Click :guilabel:`OK` again in the
:guilabel:`Layer Properties` window, and you will see the color change being
applied to the layer.

Check your results
------------------

Verify that the colors are changing as you expect them to change. If you are a
Beginner, you need to change the colors of all the layers. If not, it is enough
to change only the :guilabel:`urban` layer for now.

.. note:: If you want to work on only one layer at a time and don't want the
   other layers to distract you, you can hide a layer by clicking in the check
   box next to its name in the Layers list.

Exercise: Changing symbology
============================

This is good stuff so far, but there's more to a layer's symbology than just
its color. Next we want to change the color of the farms (the :guilabel:`rural`
layer), but we also want to eliminate the lines between the different farms so
as to make the map less visually cluttered.

First, open the :guilabel:`Layer Properties` window again, but for the
:guilabel:`rural` layer this time. Under the :guilabel:`Style` tab, you will
see the same kind of dialog as before. This time, however, you're doing more
than just quickly changing the color. So click on the :guilabel:`Change...`
button below the color display, outlined in the image below:

.. image:: ../../../../_static/symbology/006.svg

This dialog will appear:

.. image:: ../../../../_static/symbology/007.png

First, change the color inside the polygons in the layer by clicking the button
next to the :guilabel:`Color` label. In the dialog that appears, choose a new
color (that seems to suit a farm) and click :guilabel:`OK`, but only once.

Next, we want to get rid of the lines between all the farms. To do this, click
on the :guilabel:`Border style` dropdown. At the moment, it should be showing a
short line and the words :guilabel:`Solid Line`. Change this to :guilabel:`No
Pen`. Then click :guilabel:`OK`, and then :guilabel:`OK` again. Now the
:guilabel:`rural` layer should not have any lines!

Check your results
------------------

Seen alone, your rural layer should look more or less like this:

.. image:: ../../../../_static/symbology/008.png

If you are a Beginner-level user, you may stop here. Use the method above to
change the colors and styles for all the remaining layers. Try using natural
colors for the objects. For example, a road should not be red or blue, but can
be gray or black. The :guilabel:`rural` layer, showing farms, should be green
or yellow, for example. And so on.

Also feel free to experiment with different :guilabel:`Fill Style` and
:guilabel:`Border Style` settings.

Exercise: Symbol layers
=======================

.. note:: Beginner-level users don't need to do this exercise, but it may be
   interesting to watch how it's done. This will give you an idea of the
   possibilities. You can also try to do this exercise if you like, but it's
   not necessary if you don't want to.

Go back to the :guilabel:`Symbol properties` dialog as before:

.. image:: ../../../../_static/symbology/009.svg

Note the highlighted button. Clicking on it should do something like this:

.. image:: ../../../../_static/symbology/010.png

Now there's a second symbol layer. Being a solid color, it will of
course completely hide the previous kind of symbol. Plus, it has a
:guilabel:`Solid Line` border style, which we don't want. Clearly this symbol
has to be changed.

.. note:: It's important not to get confused between a map layer and a symbol
   layer. A map layer is a vector (or raster) that has been loaded into the
   map. A symbol layer is part of the symbol used to represent a map layer.
   This course will usually refer to a map layer as just a layer, but a symbol
   layer will always be called a symbol layer, to prevent confusion.

First, set the border style to :guilabel:`No Pen`, as before.

Next, change the fill style to something other than :guilabel:`Solid` or
:guilabel:`No brush`. For example:

.. image:: ../../../../_static/symbology/011.png

Click :guilabel:`OK` in this dialog and :guilabel:`Apply` in the one after
that. Now you can see your results and tweak them as needed.

You can even add multiple extra symbol layers and create a kind of texture for
your layer that way.

.. image:: ../../../../_static/symbology/012.png

It's fun! But it probably has too many colors to use in a real map...

Check your results
------------------

Customize your layers as you like, but remember that it has to be easy to tell
different layers apart on the map.

Here's an example:

.. image:: ../../../../_static/symbology/013.png

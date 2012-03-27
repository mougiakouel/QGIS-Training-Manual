|L2| Symbol layers
===============================================================================

**Description:** Now that you know how to change simple symbology for layers,
the next step is to create more complex symbology. QGIS allows you to do this
using symbol layers.

**Goal:** To be able to add more layers to a symbol.

|medium| |L3| Exercise: Adding symbol layers
-------------------------------------------------------------------------------

.. note:: Users learing basic-level functions don't need to do this exercise,
   but it may be interesting to watch how it's done. This will give you an idea
   of the possibilities. You can also try to do this exercise if you like, but
   it's not necessary if you don't want to.

Go back to the :guilabel:`Symbol properties` dialog as before. In this example,
the current symbol has no outline (i.e., it uses the :guilabel:`No Pen` border
style).

.. image:: ../_static/symbology/009-diagram.png

Note the highlighted button. Clicking on it should do something like this:

.. image:: ../_static/symbology/010.png

Now there's a second symbol layer. Being a solid color, it will of course
completely hide the previous kind of symbol. Plus, it has a :guilabel:`Solid
Line` border style, which we don't want. Clearly this symbol has to be changed.

.. note:: It's important not to get confused between a map layer and a symbol
   layer. A map layer is a vector (or raster) that has been loaded into the
   map. A symbol layer is part of the symbol used to represent a map layer.
   This course will usually refer to a map layer as just a layer, but a symbol
   layer will always be called a symbol layer, to prevent confusion.

First, set the border style to :guilabel:`No Pen`, as before.

Next, change the fill style to something other than :guilabel:`Solid` or
:guilabel:`No brush`. For example:

.. image:: ../_static/symbology/011.png

Click :guilabel:`OK` in this dialog and :guilabel:`Apply` in the one after
that. Now you can see your results and tweak them as needed.

You can even add multiple extra symbol layers and create a kind of texture for
your layer that way.

.. image:: ../_static/symbology/012.png

It's fun! But it probably has too many colors to use in a real map...

|medium| |L3| Challenge
-------------------------------------------------------------------------------

Create a simple, but not distracting texture for the :guilabel:`rural` layer
using the methods above.

:ref:`Check your results <symbology-layers-1>`

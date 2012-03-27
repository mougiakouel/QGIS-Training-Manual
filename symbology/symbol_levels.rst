|medium| |L2| Symbol levels
===============================================================================

**Description:** When symbol layers are rendered, they are also rendered in a
sequence, similar to how the different map layers are rendered. This means that
in some cases, having many symbol layers in one symbol can cause unexpected
results.

**Goal:** To be able to manage symbol levels.

|medium| |L3| Exercise: Enabling symbol levels
-------------------------------------------------------------------------------

If you haven't done so already, try giving the :guilabel:`streets` layer an
extra symbol layer. Give the base line a thickness of 2, and then add another
symbol layer on top of it with a thickness of 0.5.

You'll notice that this happens:

.. image:: ../_static/symbology/014.png

Well that's not what we want at all!

To prevent this from happening, you can enable symbol levels, which will
control the order in which the different symbol layers are rendered. In the
:guilabel:`Layer Properties` dialog, click on this button:

.. image:: ../_static/symbology/015-diagram.png

The :guilabel:`Symbol Levels` dialog will appear. Alter its values to match
this example:

.. image:: ../_static/symbology/016.png

Click :guilabel:`OK`, then :guilabel:`OK` again.

If all goes well, the map will now look like this:

.. image:: ../_static/symbology/017.png

|medium| |L3| Challenge
-------------------------------------------------------------------------------

Change the appearance of the :guilabel:`streets` layer again.  The roads must
be dark gray or black, with a thin yellow outline, and a dashed white line
running in the middle to make them resemble a real road.

:ref:`Check your results <symbology-levels-1>`

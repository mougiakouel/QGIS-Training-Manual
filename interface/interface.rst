*************
The Interface
*************

Objectives
==========

After completing this section, you should be able to correctly identify the
main elements of the screen in QGIS and know what each of them does.

Preparation
===========

Before starting the next exercise, QGIS should be installed on your computer.
To begin the exercise, launch QGIS from its desktop shortcut, menu item, etc.,
depending on how you configured its installation.

.. note:: The screenshots for this course were taken in QGIS 1.8 running on
   Ubuntu Linux. Depending on your setup, the screens you encounter may well
   appear somewhat different. However, all the same buttons will still be
   available, and the instructions will work on any OS and recent QGIS
   version.

Exercise: Prepare a map
=======================

With QGIS open, look for the following button:

.. image:: ../../../../_static/interface/002.png

Click on it to open the following dialog:

.. image:: ../../../../_static/interface/003.png

Now click on the :guilabel:`Browse` button and navigate to the file
:kbd:`LINE_PATH`.  With this file selected, click :guilabel:`Open`. You will
see the original dialog, but with the file path filled in. Click
:guilabel:`Open` here as well. The data you specified will now load.

Congratulations! You now have a basic map. Now would be a good time to save
your work. Click on the :guilabel:`Save As` button:

.. image:: ../../../../_static/interface/004.png

Save the map under :kbd:`SAVE_PATH`, using your surname and initials as the
file name.

Check your results
------------------

You should see a lot of lines, symbolizing roads. All these lines are in the
vector layer that you just loaded to create a basic map.

Now you're already familiar with the function of the :guilabel:`Add Vector
Layer` button, but what about all the others? How does this interface work?
Before we go on with the more involved stuff, let's first take a good look at
the general layout of the QGIS interface.

An Overview of the Interface
============================

.. image:: ../../../../_static/interface/001-labeled.svg

The elements identified in the figure above are:

1. Table of Contents (TOC)

2. Toolbars

3. Map canvas

4. Status bar

The TOC
-------

In the TOC, you can see a list, at any time, of the layers available to you.

.. note:: A vector layer is a dataset, usually of a specific kind of object,
   such as roads, trees, etc. A vector layer can consist of either points,
   lines or polygons.

Expanding collapsed items (by clicking the arrow or plus symbol beside them)
will provide you with more information on the layer's current appearance.

Right-clicking on a layer will give you a menu with lots of extra options.
You'll be using some of them before long, so take a look around!

Some versions of QGIS have a separate :guilabel:`Control rendering order` checkbox just
underneath the TOC. Don't worry if you can't see it. It will be addressed
later.

Toolbars
--------

Your most oft-used sets of tools can be turned into toolbars for easy access.
For example, the File toolbar allows you to save, load, print, and start a new
project. You can easily customize the interface to see only the tools you use
most often, adding or removing toolnars as necessary via the
:menuselection:`View --> Toolbars` menu.

Even if they are not vsible in as a toolbar, all of your tools will remain
accessible via the menus. For example, if you remove the File toolbar (which
contains the Save button), you can still save your map by clicking on the
:kbd:`File` menu and then clicking on :kbd:`Save`.

The Map Canvas
--------------

This is where the map itself is displayed.

The Status Bar
--------------

Shows you information about the current map. Also allows you to adjust the map
scale and see the mouse cursor's coordinates on the map.

Exercise: Get to Know the Interface
===================================

Identify these elements on your own screen, without referring to the diagram
above. See if you can identify their names and functions. You will become more
familiar with these elements as you use them in the coming days.

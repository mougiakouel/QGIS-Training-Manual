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

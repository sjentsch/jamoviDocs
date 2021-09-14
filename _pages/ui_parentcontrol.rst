.. sectionauthor:: Jonathon Love

============================
``ParentControl`` (abstract)
============================

**Inherits from** |ui_basecontrol|_

**This control type is abstract and can not be used directly.**

Properties
----------

A control that inherits from a ``ParentControl`` supports the embedding
of child controls through the ``children`` property.

+--------------+--------------------------------------+----------------+
| Property     | Description                          | Form           |
+==============+======================================+================+
| ``children`` | An array of control definitions that | Array of valid |
|              | are to be embedded into the parent   | Controls_      |
|              | control.                             |                |
+--------------+--------------------------------------+----------------+

If the control is also a Display Control (e.i. ``RadioButton`` or
``CheckBox``) another property is available.

+-----------+---------------------------------------+------------------+
| Property  | Description                           | Form             |
+===========+=======================================+==================+
| ``style`` | Sets the layout position of child     | *enum*: list,    |
|           | controls relative the parent          | inline,          |
|           |                                       | list-inline,     |
|           |                                       | inline-list      |
+-----------+---------------------------------------+------------------+

Further Details
~~~~~~~~~~~~~~~

``style``

-  ``list``: Children are placed below the parent in a vertical list.
-  ``inline``: Children are placed to the right of the parent in a
   horizontal list.
-  ``list-inline``: Children are placed below the parent in a horizontal
   list.
-  ``inline-list``: Children are placed to the right of the parent in a
   vertical list.

Controls
--------

Below is a list of controls that inherit from ``ParentControl``.

.. toctree::
   :caption: Layout Controls
   :titlesonly:

   ui_layoutbox
   ui_collapsebox
   ui_supplier
   ui_variablesupplier
   ui_targetlayoutbox

   ui_parentcontrol_parentcontrols
      
.. --------------------------------------------------------------------

.. |ui_basecontrol|    replace:: ``BaseControl``
.. _ui_basecontrol:    ui_basecontrol.html


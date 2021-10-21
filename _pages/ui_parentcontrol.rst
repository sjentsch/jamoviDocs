.. sectionauthor:: Jonathon Love

============================
``ParentControl`` (abstract)
============================

**Inherits from** |BaseControl|_

**This control type is abstract and can not be used directly.**

Properties
----------

A control that inherits from a ``ParentControl`` supports the embedding of child controls through the ``children`` property.

+--------------+----------------------------------------------------------------------------------+------------------------------------------------+
| Property     | Description                                                                      | Form                                           |
+==============+==================================================================================+================================================+
| ``children`` | An array of control definitions that are to be embedded into the parent control. | Array of valid Controls_                       |
+--------------+----------------------------------------------------------------------------------+------------------------------------------------+

If the control is also a |DisplayControl|_ (i.e., |CheckBox|_ or |RadioButton|_) another property is available.

+--------------+----------------------------------------------------------------------------------+------------------------------------------------+
| Property     | Description                                                                      | Form                                           |
+==============+==================================================================================+================================================+
| ``style``    | Sets the layout position of child controls relative the parent.                  | *enum*: list, inline, list-inline, inline-list |
+--------------+----------------------------------------------------------------------------------+------------------------------------------------+

Further Details
~~~~~~~~~~~~~~~

``style``

-  ``list``: Children are placed below the parent in a vertical list.
-  ``inline``: Children are placed to the right of the parent in a horizontal list.
-  ``list-inline``: Children are placed below the parent in a horizontal list.
-  ``inline-list``: Children are placed to the right of the parent in a vertical list.

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

.. |BaseControl|       replace:: ``BaseControl``
.. _BaseControl:       ui_basecontrol.html

.. |DisplayControl|    replace:: ``DisplayControl``
.. _DisplayControl:    ui_displaycontrol.html

.. |CheckBox|          replace:: ``CheckBox``
.. _CheckBox:          ui_checkbox.html

.. |RadioButton|       replace:: ``RadioButton``
.. _RadioButton:       ui_radiobutton.html

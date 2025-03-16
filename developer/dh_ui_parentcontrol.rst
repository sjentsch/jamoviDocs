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

   dh_ui_layoutbox
   dh_ui_collapsebox
   dh_ui_supplier
   dh_ui_variablesupplier
   dh_ui_variableslistbox
   dh_ui_targetlayoutbox
   dh_ui_rmanovafactorsbox

- Parent Controls

  :doc:`dh_ui_checkbox`
  :doc:`dh_ui_radiobutton`
  :doc:`dh_ui_label`

      
.. --------------------------------------------------------------------

.. |BaseControl|       replace:: ``BaseControl``
.. _BaseControl:       dh_ui_basecontrol.html

.. |DisplayControl|    replace:: ``DisplayControl``
.. _DisplayControl:    dh_ui_displaycontrol.html

.. |CheckBox|          replace:: ``CheckBox``
.. _CheckBox:          dh_ui_checkbox.html

.. |RadioButton|       replace:: ``RadioButton``
.. _RadioButton:       dh_ui_radiobutton.html

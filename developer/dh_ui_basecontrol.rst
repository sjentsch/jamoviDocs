.. sectionauthor:: Jonathon Love

==========================
``BaseControl`` (abstract)
==========================

**This control type is abstract and can not be used directly.**

Every jamovi user control inherits from ``BaseControl``.

Properties
----------

All jamovi controls have the following properties.

+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| Property                | Description                                                                                    | Form                               |
+=========================+================================================================================================+====================================+
| ``type``                | Set the type of control, for a list of types click :doc:`here <dh_tut_32-advanced-design>`     | enum of valid Controls_            |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| ``name``                | The name of the control. This allows for access to the control when customizing behavior, for  | Unique string                      |
|                         | example enabling / disabling. It needs to be unique to all other controls.                     |                                    |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| ``stage``               | This is the stage of development. The control will only be visible in the appropriate jamovi   | 0: released (always visible); 1:   |
|                         | instance.                                                                                      | under development; 2: proposed     |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| ``margin``              | The level of spacing around the control when displayed.                                        | *enum*: small, normal, large, none |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| ``cell``                | The zero-based row and column index where the control is to be placed within the parent        | object consisting of ``row``: row  |
|                         | |LayoutBox|_.                                                                                  | index and ``column``: column index |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| ``stretchFactor``       | A stretch factor greater than zero will cause the control to fill the available horizontal     | number >= 0                        |
|                         | space by an amount proportional to the sum of all other sibling ``stretchFactors`` defined in  |                                    |
|                         | the same row. It is important to note that when specifying a non-zero ``stretchFactor`` on a   |                                    |
|                         | control, it is required that the parent of the control also have a non-zero ``stretchFactor``. |                                    |
|                         | Failing to do so will result in unhelpful layout.                                              |                                    |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| ``horizontalAlignment`` | Specifies the horizontal alignment of the control when placed in the parent |LayoutBox|_ cell. | *enum*: left, center, right        |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| ``verticalAlignment``   | Specifies the vertical alignment of the control when placed in the parent |LayoutBox|_ cell.   | *enum*: top, center, bottom        |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| ``minWidth``            | Specifies the minimum width of the |LayoutBox|_ cell into which the control will be placed.    | number >= 0                        |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| ``minHeight``           | Specifies the minimum height of the |LayoutBox|_ cell into which the control will be placed.   | number >= 0                        |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| ``maxWidth``            | Specifies the maximum width of the |LayoutBox|_ cell into which the control will be placed.    | number >= 0                        |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+
| ``maxHeight``           | Specifies the maximum height of the |LayoutBox|_ cell into which the control will be placed.   | number >= 0                        |
+-------------------------+------------------------------------------------------------------------------------------------+------------------------------------+

Controls
--------

Below is a list of controls that inherit from ``BaseControl``.

.. toctree::
   :titlesonly:
   
   dh_ui_parentcontrol
   dh_ui_optioncontrol
   dh_ui_displaycontrol

   dh_ui_output

.. ------------------------------------------------------------------------------------------------------------------------------------------------------------

.. |LayoutBox|                         replace:: ``LayoutBox``
.. _LayoutBox:                         dh_ui_layoutbox.html

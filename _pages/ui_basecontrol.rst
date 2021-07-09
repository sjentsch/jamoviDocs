.. sectionauthor:: Jonathon Love

==========================
``BaseControl`` (abstract)
==========================

**This control type is abstract and can not be used directly.**

Every jamovi user control inherits from ``BaseControl``.

Properties
----------

All jamovi controls have the following properties.

+---------------+---------------------------------------+---------------------+
| Property      | Description                           | Form                |
+===============+=======================================+=====================+
| ``type``      | Set the type of control, for a list   | enum of valid       |
|               | of types click `here <ui_advanced-    | Controls_           |
|               | design.html>`__.                      |                     |
+---------------+---------------------------------------+---------------------+
| ``name``      | The name of the control. This allows  | Unique string       |
|               | for access to the control when        |                     |
|               | customizing behavior, for example     |                     |
|               | enabling/disabling. It needs to be    |                     |
|               | unique to all other controls.         |                     |
+---------------+---------------------------------------+---------------------+
| ``stage``     | This is the stage of development. The | |stgLst|            |
|               | control will only be visible in the   |                     |
|               | appropriate jamovi instance.          |                     |
+---------------+---------------------------------------+---------------------+
| ``margin``    | The level of spacing around the       | *enum*: small,      |
|               | control when displayed.               | normal, large,      |
|               |                                       | none                |
+---------------+---------------------------------------+---------------------+
| ``cell``      | The zero-based row and column index   | |cllObj|            |
|               | where the control is to be placed     |                     |
|               | within the parent ``LayoutBox``.      |                     |
+---------------+---------------------------------------+---------------------+
| |strFac|      | A stretch factor greater than zero    | number >= 0         |
|               | will cause the control to fill the    |                     |
|               | available horizontal space by an      |                     |
|               | amount proportional to the sum of all |                     |
|               | other sibling ``stretchFactors``      |                     |
|               | defined in the same row. It is        |                     |
|               | important to note that when           |                     |
|               | specifying a non-zero                 |                     |
|               | ``stretchFactor`` on a control, it is |                     |
|               | required that the parent of the       |                     |
|               | control also have a non-zero          |                     |
|               | ``stretchFactor``. Failing to do so   |                     |
|               | will result in unhelpful layout.      |                     |
+---------------+---------------------------------------+---------------------+
| |hrzAlg|      | Specifies the horizontal alignment of | *enum*: left,       |
|               | the control when placed in the parent | center, right       |
|               | ``LayoutBox`` cell                    |                     |
+---------------+---------------------------------------+---------------------+
| |vrtAlg|      | Specifies the vertical alignment of   | *enum*: top,        |
|               | the control when placed in the parent | center, bottom      |
|               | ``LayoutBox`` cell                    |                     |
+---------------+---------------------------------------+---------------------+
| ``minWidth``  | Specifies the minimum width of the    | number >= 0         |
|               | ``LayoutBox`` cell into which the     |                     |
|               | control will be placed.               |                     |
+---------------+---------------------------------------+---------------------+
| ``minHeight`` | Specifies the minimum height of the   | number >= 0         |
|               | ``LayoutBox`` cell into which the     |                     |
|               | control will be placed.               |                     |
+---------------+---------------------------------------+---------------------+
| ``maxWidth``  | Specifies the maximum width of the    | number >= 0         |
|               | ``LayoutBox`` cell into which the     |                     |
|               | control will be placed.               |                     |
+---------------+---------------------------------------+---------------------+
| ``maxHeight`` | Specifies the maximum height of the   | number >= 0         |
|               | ``LayoutBox`` cell into which the     |                     |
|               | control will be placed.               |                     |
+---------------+---------------------------------------+---------------------+

Controls
--------

Below is a list of controls that inherit from ``BaseControl``.

.. toctree::
   :titlesonly:
   
   ui_parentcontrol
   ui_optioncontrol
   ui_displaycontrol

.. --------------------------------------------------------------------

.. |strFac|  replace:: ``stretchFactor``
.. |hrzAlg|  replace:: ``horizontalAlignment``
.. |vrtAlg|  replace::  ``verticalAlignment``
.. |stgLst|  replace:: 0: released (always visible); 1: under development; 2: proposed
.. |cllObj|  replace:: object consisting of ``row``: row index and ``column``: column index


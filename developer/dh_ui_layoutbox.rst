.. sectionauthor:: Jonathon Love

=============
``LayoutBox``
=============

**Inherits from:** |BaseControl|_, |ParentControl|_

A ``LayoutBox`` allows a designer to control the layout of its child controls. A ``LayoutBox`` does not display anything itself but purely serves as a frame
for placing other controls. It can be used as a list (default), inline list, or grid.

Properties
----------

In addition to any inherited properties, a ``LayoutBox`` supports:

+-----------+--------------------------------------------------------------+----------------------+
| Property  | Description                                                  | Form                 |
+===========+==============================================================+======================+
| ``style`` | Determines how the automatic layout behavior of the control. | *enum*: list, inline |
+-----------+--------------------------------------------------------------+----------------------+

Further Details
~~~~~~~~~~~~~~~

``style``

-  ``list``: Children will be added in a vertical manner starting at ``cell`` position ``column: 0, row: 0``.
-  ``inline``: Children will be added in a horizontal manner starting at ``cell`` position ``column: 0, row: 0``.

To add to a ``LayoutBox`` in a grid format, use the ``cell`` property of the child control. As the ``LayoutBox`` is positioning its ``children`` it will use
the ``cell`` property of the control to place it correctly. The ``cell`` property of a child control overrides the auto positioning of the ``style`` property.
If a child control does not have a ``cell`` property defined it will use the ``style`` property to automatically place it based on the position of the previous
child.

.. ------------------------------------------------------------------------------------------------------------------------------------------------------------

.. |BaseControl|       replace:: ``BaseControl``
.. _BaseControl:       dh_ui_basecontrol.html

.. |ParentControl|     replace:: ``ParentControl``
.. _ParentControl:     dh_ui_parentcontrol.html

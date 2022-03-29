.. sectionauthor:: Jonathon Love

=========
``Label``
=========

A ``Label`` is a simple control that displays text. It can take two inheritance forms depending on how it is setup. The first is a *static label* and the
second is an *option label*.

Option Label
------------

**Inherits from** |OptionControl|_, |ParentControl|_

A ``Label`` is by default an *option label* unless the ``label`` property is defined. An option ``Label`` will populate its display using the underlying option
to which it has been assigned. For further information about option binding see |OptionControl|_.

Properties
~~~~~~~~~~

When bound to an option, there are no ``Label`` specific properties. All behavior can be achieved using the inherited properties of |OptionControl|_ and
|ParentControl|_.


Static Label
------------

**Inherits from** |BaseControl|_, |ParentControl|_

A static ``Label`` is created when the ``label`` property of the control is defined. In this form the ``Label`` control acts like any old label.

Properties
~~~~~~~~~~

In addition to any inherited properties, a ``Label`` supports:

+-----------+--------------------------------------------------------------+----------------------+
| Property  | Description                                                  | Form                 |
+===========+==============================================================+======================+
| ``label`` | Sets the text to be displayed by the control.                | string               |
+-----------+--------------------------------------------------------------+----------------------+

Example
~~~~~~~

.. code-block:: yaml

   - type: Label
     label: Percentile Values
     children:
       - type: CheckBox
         name: quart
         
.. --------------------------------------------------------------------

.. |BaseControl|       replace:: ``BaseControl``
.. _BaseControl:       dh_ui_basecontrol.html

.. |ParentControl|     replace:: ``ParentControl``
.. _ParentControl:     dh_ui_parentcontrol.html

.. |OptionControl|     replace:: ``OptionControl``
.. _OptionControl:     dh_ui_optioncontrol.html

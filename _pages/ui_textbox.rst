.. sectionauthor:: Jonathon Love

===========
``TextBox``
===========

**Inherits from** |OptionControl|_

A ``TextBox`` allows for the displaying and editing of the value of an option in text form.

Properties
----------

In addition to any inherited properties, a ``TextBox`` supports:

+------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
| Property         | Description                                                                                         | Form                          |
+==================+=====================================================================================================+===============================+
| ``format``       | Sets the format definition that the ``TextBox`` should use to perform string manipulations with.    | Name of a: |StandardFormat|_, |
|                  | If no format is specified ``string`` is assumed.                                                    | |CustomFormat|_               |
+------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
| ``suffix``       | Sets the text to be placed to the right of the textbox.                                             | string                        |
+------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
| ``inputPattern`` | Sets the input string filter for determining valid inputs. For example, a number ``TextBox`` would  | regular expression, string    |
|                  | have ``inputPattern: '[0-9]+'``                                                                     |                               |
+------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
| ``alignText``    | Set the horizontal alignment of the text within the ``TextBox``.                                    | enum: left, center, right     |
+------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+
| ``borderless``   | Toggles whether the control has a visible border or not. This is mainly used when a ``TextBox`` is  | bool                          |
|                  | added to the ``template`` of a |ListBox|_.                                                          |                               |
+------------------+-----------------------------------------------------------------------------------------------------+-------------------------------+

.. toctree::
   :hidden:
   
   ui_standard-formats
   ui_custom-formats

Supported Option Types
----------------------

- ``String``
- ``Integer``
- ``Number``
- Any format that has both toString() and parsing capabilities.

Example
-------

.. code-block:: yaml

     - type: CheckBox
       name: logOdds
       children:
         - type: TextBox
           name: ciWidth
           suffix: '%'
           format: number
           inputPattern: '[0-9]+'
           enable: (logOdds)

The above example adds a ``TextBox`` as a child control to a |CheckBox|_.

.. ------------------------------------------------------------------------------------------------------------------------------------------------------------

.. |OptionControl|       replace:: ``OptionControl``
.. _OptionControl:       ui_optioncontrol.html

.. |StandardFormat|      replace:: ``StandardFormat``
.. _StandardFormat:      ui_standard-formats.html

.. |CustomFormat|        replace:: ``CustomFormat``
.. _CustomFormat:        ui_custom-formats.html

.. |CheckBox|          replace:: ``CheckBox``
.. _CheckBox:          ui_checkbox.html

.. |ListBox|           replace:: ``ListBox``
.. _ListBox:           ui_listbox.html

.. sectionauthor:: Jonathon Love

===========
``TextBox``
===========

**Inherits from** |ui_optioncontrol|_

A ``TextBox`` allows for the displaying and editing of the value of an
option in text form.

Properties
----------

In addition to any inherited properties, a ``TextBox`` supports:

+------------+---------------------------------------+--------------------------+
| Property   | Description                           | Form                     |
+============+=======================================+==========================+
| ``format`` | Sets the format definition that the   | Name of a:               |
|            | ``TextBox`` should use to perform     |                          |
|            | string manipulations with. If no      | |ui_standard-format|_    |
|            | format is specified ``string`` is     |                          |
|            | assumed.                              | |ui_custom-format|_      |
+------------+---------------------------------------+--------------------------+
| ``suffix`` | Sets the text to be placed to the     | string                   |
|            | right of the textbox.                 |                          |
+------------+---------------------------------------+--------------------------+
| |inpPtt|   | Sets the input string filter for      | regular expression,      |
|            | determining valid inputs. For         | string                   |
|            | example, a number ``TextBox`` would   |                          |
|            | have ``inputPattern: '[0-9]+'``       |                          |
+------------+---------------------------------------+--------------------------+
| |algTxt|   | Set the horizontal alignment of the   | enum: left, center,      |
|            | text within the ``TextBox``.          | right                    |
+------------+---------------------------------------+--------------------------+
| |brdLss|   | Toggles whether the control has a     | bool                     |
|            | visible border or not. This is mainly |                          |
|            | used when a ``TextBox`` is add to the |                          |
|            | ``template`` of a ``ListBox``.        |                          |
+------------+---------------------------------------+--------------------------+

.. toctree::
   :hidden:
   
   ui_standard-formats
   ui_custom-formats

Supported Option Types
----------------------

- ``String``
- ``Integer``
- ``Number``
-  Any format that has both toString() and parsing capabilities.

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

The above example adds a ``TextBox`` as a child control to a
``CheckBox``.

.. --------------------------------------------------------------------

.. |ui_optioncontrol|    replace:: ``OptionControl``
.. _ui_optioncontrol:    ui_optioncontrol.html

.. |ui_standard-format|  replace:: ``StandardFormat``
.. _ui_standard-format:  ui_standard-formats.html

.. |ui_custom-format|    replace:: ``CustomFormat``
.. _ui_custom-format:    ui_custom-formats.html

.. |inpPtt|              replace:: ``inputPattern``
.. |algTxt|              replace:: ``alignText``
.. |brdLss|              replace:: ``borderless``


.. sectionauthor:: Jonathon Love

============================
``OptionControl`` (abstract)
============================

**Inherits from** |BaseControl|_

**This control type is abstract and can not be used directly.**

This is the abstract base of all controls that can be bound to an option. These types of controls allow a user to see and / or set the value of an option that
has been defined in the ``*``\ |ayaml|_.

Properties
----------

In addition to any inherited properties, an ``OptionControl`` supports:

+----------------+-----------------------------------------------------------------------------------------------------------+--------------------------+
| Property       | Description                                                                                               | Form                     |
+================+===========================================================================================================+==========================+
| ``name``       | Sets the unique name for the control. If ``optionName`` is not defined ``name`` will be used to data-bind | Unique string (or option |
|                | to an option.                                                                                             | name)                    |
+----------------+-----------------------------------------------------------------------------------------------------------+--------------------------+
| ``optionName`` | Sets the name of the option to which the control is to be data bound. If this property is omitted and     | defined option name      |
|                | ``name`` property is used instead.                                                                        |                          |
+----------------+-----------------------------------------------------------------------------------------------------------+--------------------------+
| ``optionPart`` | Sets the name of the sub-option to which the control is to be data bound. Some controls don’t bind to a   | defined option part name |
|                | whole option but only to part. For example, a |RadioButton|_ binds to a sub-option of the underlying      |                          |
|                | ``List`` option (see |RadioButton|_ for an example).                                                      |                          |
+----------------+-----------------------------------------------------------------------------------------------------------+--------------------------+
| ``label``      | Sets the text to be displayed by the control’s label. NOTE: not all controls have labels. In the          | string                   |
|                | circumstance that a control does not have a label, a defined ``label`` property is ignored.               |                          |
+----------------+-----------------------------------------------------------------------------------------------------------+--------------------------+
| ``enable``     | Sets a data-binding string to control the enable state of the control.                                    | string                   |
+----------------+-----------------------------------------------------------------------------------------------------------+--------------------------+

Further Details
~~~~~~~~~~~~~~~

``enable``
^^^^^^^^^^

This property is what’s called a ‘data-binding’. Data-binding is where the value of a particular property is bound to the value of another UI control. When the
value of the control changes, so does the respective property value. For example we may want to bind to the value of a |CheckBox|_ (TRUE/FALSE) to the enabling
/ disabling feature of a |TextBox|_. This would be achieved by specifying the name of the control to which you would like to bind inside of parentheses (or
brackets).

.. code-block:: yaml

   - type: CheckBox
     name: pcEqGr
     label: Cut points for
     style: inline
     verticalAlignment: center
     children:
       - type: TextBox
         name: pcNEqGr
         label: ""
         suffix: equal groups
         format: number
         inputPattern: "[0-9]+"
         enable: (pcEqGr)

In the above example, the |TextBox|_ named ``pcNEqGr`` would enable when the |CheckBox|_ named ``pcEqGr`` is checked.

``label``
^^^^^^^^^

The ``label`` property of an ``OptionControl`` serves only to override the ``title`` property of the underlying option. If the ``label`` property is not
defined, the control will use the ``title`` property of the underlying option. This results in the UI control definition being minimal, only describing
information when necessary.

*Option Definition*

.. code-block:: yaml

   - name: descStats
     title: Descriptive statistics
     type: Bool
     default: false
     description:
         R: >
           `TRUE` or `FALSE` (default), provide descriptive statistics

*UI Control Definition*

.. code-block:: yaml

   - type: CheckBox
     name: descStats

Events
------

+------------+---------------------------------------------------------+
| Event      | Description                                             |
+============+=========================================================+
| *change*   | Fires when the value of the control has changed.        |
+------------+---------------------------------------------------------+
| *changing* | Fires when the value of the control is about to change. |
+------------+---------------------------------------------------------+

Controls
--------

Below is a list of controls that inherit from ``OptionControl``.

.. toctree::
   :titlesonly:

   dh_ui_textbox
   dh_ui_checkbox
   dh_ui_radiobutton
   dh_ui_combobox
   dh_ui_label
   dh_ui_listbox
   dh_ui_variablelabel
   dh_ui_termlabel


.. ------------------------------------------------------------------------------------------------------------------------------------------------------------

.. |BaseControl|                       replace:: ``BaseControl``
.. _BaseControl:                       dh_ui_basecontrol.html

.. |CheckBox|                          replace:: ``CheckBox``
.. _CheckBox:                          dh_ui_checkbox.html

.. |TextBox|                           replace:: ``TextBox``
.. _TextBox:                           dh_ui_textbox.html

.. |RadioButton|                       replace:: ``RadioButton``
.. _RadioButton:                       dh_ui_radiobutton.html
 
.. |ayaml|                             replace:: ``.a.yaml``
.. _ayaml:                             dh_api_analysis-definition.html

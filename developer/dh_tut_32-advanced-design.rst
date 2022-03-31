.. sectionauthor:: Jonathon Love

==================
Advanced UI Design
==================

Controls
--------

   There are three different categories of controls:

   - :doc:`Parent Controls <dh_ui_parentcontrol>`
   - :doc:`Option Controls <dh_ui_optioncontrol>`
   - :doc:`Display Controls <dh_ui_displaycontrol>`

   Layout controls are used to control the layout child controls in the UI. Option controls allow the user to change the values of options for analyses. We’ve
   already seen some of these; the |CheckBox|_, the |ComboBox|_, etc. Display controls are for presenting static information such as labels.


Option Controls
~~~~~~~~~~~~~~~

   As already seen earlier in this tutorial series, different option controls are ‘bound’ to different analysis options. The name of the option control typically
   needs to match the name of the option it is bound to. Changing the option control leads to changes to the underlying option, resulting in changes to the
   analysis.

   Not all controls can be bound to *any* option. It wouldn’t be meaningful to bind a checkbox to a ``List`` option for example. The following lists the different
   option types, and the control types that can be bound to each:

--------------


``Bool``
~~~~~~~~

   **You can use** : |CheckBox|_

   .. code-block:: yaml

      - type: CheckBox
        name: #optionName

   **or you can use** : |Label|_

   This control is read only.

   .. code-block:: yaml

      - type: Label
        name: #optionName
        format: bool

--------------


``Integer``
~~~~~~~~~~~

   **You can use** : |TextBox|_

   Allows for the value to be edited.

   .. code-block:: yaml

      - type: TextBox
        name: #optionName
        format: number

   **or you can use** : |Label|_

   This control is read only.

   .. code-block:: yaml

      - type: Label
        name: #optionName
        format: number

--------------


``Number``
~~~~~~~~~~

   **You can use** : |TextBox|_

   Allows for the value to be edited.

   .. code-block:: yaml

      - type: TextBox
        name: #optionName
        format: number

   **or you can use** : |Label|_

   This control is read only.

   .. code-block:: yaml

      - type: Label
        name: #optionName
        format: number

--------------


``String``
~~~~~~~~~~

   **You can use** : |TextBox|_

   Allows for the value to be edited.

   .. code-block:: yaml

      - type: TextBox
        name: #optionName

   **or you can use** : |Label|_

   This control is read only.

   .. code-block:: yaml

      - type: Label
        name: #optionName

--------------


``List``
~~~~~~~~

   **You can use** : |ComboBox|_

   .. code-block:: yaml

      - type: ComboBox
        name: #optionName

   **or you can use** : |RadioButton|_

   Use multiple |RadioButton|_\ ’s linked to the different sub-options.

   .. code-block:: yaml

      - type: RadioButton
        name: #uniqueName_1
        optionName: #optionName
        optionPart: #optionPartName_1

      - type: RadioButton
        name: #uniqueName_2
        optionName: #optionName
        optionPart: #optionPartName_2

      - type: RadioButton
        name: #uniqueName_N
        optionName: #optionName
        optionPart: #optionPartName_N

----------------


``NMXList``
~~~~~~~~~~~

   **You can use** : |CheckBox|_

   Use multiple CheckBox's linked to the different sub-options.

   .. code-block:: yaml

      - type: CheckBox
        name: #uniqueName_1
        optionName: #optionName
        optionPart: #optionPartName_1

      - type: CheckBox
        name: #uniqueName_2
        optionName: #optionName
        optionPart: #optionPartName_2

      - type: CheckBox
        name: #uniqueName_N
        optionName: #optionName
        optionPart: #optionPartName_N

--------------


``Variable``
~~~~~~~~~~~~

   **You can use** : |VariablesListBox|_

   .. code-block:: yaml

      - type: VariableListBox
        name: #optionName
        isTarget: true
        maxItemCount: 1

   **or you can use** : |ListBox|_

   .. code-block:: yaml

      - type: ListBox
        name: #optionName
        isTarget: true
        maxItemCount: 1
        template:
        - type: VariableLabel

--------------


``Variables``
~~~~~~~~~~~~~

   **You can use** : |VariablesListBox|_

   .. code-block:: yaml

      - type: VariableListBox
        isTarget: true
        name: #optionName

   **or you can use** : |ListBox|_

   .. code-block:: yaml

      - type: ListBox
        name: #optionName
        isTarget: true
        template:
        - type: VariableLabel

--------------


``Terms``
~~~~~~~~~

   **You can use** : |ListBox|_

   .. code-block:: yaml

      - type: ListBox
        name: #optionName
        isTarget: true
        template:
        - type: TermLabel

--------------


``Pairs``
~~~~~~~~~

   **You can use** : |VariablesListBox|_

   .. code-block:: yaml

      - type: VariablesListBox
        name: #optionName
        isTarget: true
        columns:
        - name: i1
          template:
          - type: VariableLabel
        - name: i2
          template:
          - type: VariableLabel

   **or you can use** : |ListBox|_

   .. code-block:: yaml

      - type: ListBox
        name: #optionName
        isTarget: true
        columns:
        - name: i1
          template:
          - type: VariableLabel
        - name: i2
          template:
          - type: VariableLabel

--------------


``Array``
~~~~~~~~~

   **You can use** : |ListBox|_

   .. code-block:: yaml

      - type: ListBox
        name: #optionName
        template:
        type: #depends on the option

   This is jamovi’s most complicated control. The setup of it’s UI definition depends heavily on the way the option is setup. A more detailed explanation can be
   found :doc:`here <dh_ui_listbox>`.


.. ------------------------------------------------------------------------------------------------------------------------------------------------------------

.. |Label|                             replace:: ``Label``
.. _Label:                             dh_ui_label.html

.. |CheckBox|                          replace:: ``CheckBox``
.. _CheckBox:                          dh_ui_checkbox.html

.. |ComboBox|                          replace:: ``ComboBox``
.. _ComboBox:                          dh_ui_combobox.html

.. |ListBox|                           replace:: ``ListBox``
.. _ListBox:                           dh_ui_listbox.html

.. |TextBox|                           replace:: ``TextBox``
.. _TextBox:                           dh_ui_textbox.html

.. |RadioButton|                       replace:: ``RadioButton``
.. _RadioButton:                       dh_ui_radiobutton.html

.. |VariablesListBox|                  replace:: ``VariablesListBox``
.. _VariablesListBox:                  dh_ui_variableslistbox.html

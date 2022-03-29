.. sectionauthor:: Jonathon Love

=============================================
<<<<<<< HEAD
User-interface definition (``.u.yaml``-files)
=======
User-interface definition (``.u.yaml`` files)
>>>>>>> master
=============================================

Overview
--------

<<<<<<< HEAD
   The UI definition is a YAML-file in the ``jamovi/`` directory, with the extension ``.u.yaml``. The UI definition is pretty straightforward. It follows a
   tree structure that defines the child/parent-relationship between the controls. The top level or root control is the first thing that is described by the UI
   YAML. The file is named to match the name of the analysis it describes, but converted to lowercase. An example is ``ttestis.u.yaml``.
=======
The UI YAML is pretty straight forward. It follows a tree structure that
defines the child/parent relationship between the controls. The top
level or root control is the first thing that is described by the UI
YAML.
>>>>>>> master


Properties
----------

<<<<<<< HEAD
   +------------------+----------------------------------------------------------------+-------------------------------------+
   | Property         | Description                                                    | Form                                |
   +==================+================================================================+=====================================+
   | ``name``         | The name of the analysis.                                      | Unique string                       |
   +------------------+----------------------------------------------------------------+-------------------------------------+
   | ``title``        | Sets the title to be displayed at the top of the option panel. | string                              |
   +------------------+----------------------------------------------------------------+-------------------------------------+
   | ``jus``          | Defines the syntax version used by the ``u.yaml``-file.        | string of form ‘number.number’      |
   +------------------+----------------------------------------------------------------+-------------------------------------+
   | ``stage``        | Sets the stage display filter.                                 | | 0 - Released                      |
   |                  |                                                                | | 1 - In development                |
   |                  |                                                                | | 2 - Proposed                      |
   +------------------+----------------------------------------------------------------+-------------------------------------+
   | ``compilerMode`` | Sets the compiler interaction mode.                            | *enum*: tame, aggressive            |
   +------------------+----------------------------------------------------------------+-------------------------------------+
   | ``children``     | Sets the child control definitions.                            | Array of valid control definitions. |
   +------------------+----------------------------------------------------------------+-------------------------------------+
=======
+------------------+----------------------------------------------------------------+-------------------------------------+
| Property         | Description                                                    | Form                                |
+==================+================================================================+=====================================+
| ``name``         | The name of the analysis.                                      | Unique string                       |
+------------------+----------------------------------------------------------------+-------------------------------------+
| ``title``        | Sets the title to be displayed at the top of the option panel. | string                              |
+------------------+----------------------------------------------------------------+-------------------------------------+
| ``jus``          | Defines the syntax version used by the u.yaml file.            | string of form ‘number.number’      |
+------------------+----------------------------------------------------------------+-------------------------------------+
| ``stage``        | Sets the stage display filter.                                 | | 0 - Released                      |
|                  |                                                                | | 1 - In development                |
|                  |                                                                | | 2 - Proposed                      |
+------------------+----------------------------------------------------------------+-------------------------------------+
| ``compilerMode`` | Sets the compiler interaction mode.                            | *enum*: tame, aggressive            |
+------------------+----------------------------------------------------------------+-------------------------------------+
| ``children``     | Sets the child control definitions.                            | Array of valid control definitions. |
+------------------+----------------------------------------------------------------+-------------------------------------+
>>>>>>> master


Example
~~~~~~~

<<<<<<< HEAD
   .. code-block:: yaml

      name:  descriptives
      title: Descriptives
      jus:   '2.0'
      stage: 0
      compilerMode: tame
      children:
      # array of child definitions
=======
.. code-block:: yaml

   name:  descriptives
   title: Descriptives
   jus:   '2.0'
   stage: 0
   compilerMode: tame
   children:
         #array of child definitions
>>>>>>> master


Further Detail
~~~~~~~~~~~~~~

<<<<<<< HEAD
   The root control is a |ParentControl|_ and as the name suggests serves as a parent to child controls. All parent controls contain the property ``children``
   which defines an array of control definitions to be embedded. All UI design happens within the ``children`` node of the root control. Control definitions
   are added here in the form we design.

   When controls are added to the root control they are added in a list form, from top to bottom of the options panel.
=======
The root control is a |ParentControl|_ and as the name suggests serves as a parent to child controls. All parent controls contain the property ``children``
which defines an array of control definitions to be embedded. All UI design happens within the ``children`` node of the root control. Control definitions are
added here in the form we design.

When controls are added to the root control they are added in a list form, from top to bottom of the options panel.
>>>>>>> master


Controls
--------

<<<<<<< HEAD
   There are many different controls that can be used within the jamovi options UI panel. Each control has been designed for a specific option type(s). For
   example, a |CheckBox|_ is designed around a ``Bool`` option type, where as a |ComboBox|_ displays and writes data to a ``List`` option. jamovi provides a
   solid array of basic controls to cover all the current option types. Controls will continue to be developed as jamovi grows but the current list covers most
   use cases.

   When adding child controls to any |ParentControl|_, at the very least the ``type`` property needs to be specified (as well as the minimum requirements for
   that control).

   .. code-block:: yaml

      name:  descriptives
      title: Descriptives
      jus:   '2.0'
      stage: 0
      compilerMode: tame
      children:
      - type: LayoutBox
        margin: large
        children:
        - type: Label
          label: jamovi is great?
        - type: Label
          label: Of cause it is!


   Now we can add, move or adjust any control to meet our needs. Here is a list of controls that can make that possible:

   .. toctree::
      :titlesonly:
      
      dh_ui_basecontrol
=======
There are many different controls that can be used within the jamovi options UI panel. Each control has been designed for a specific option type(s). For
example, a |CheckBox|_ is designed around a ``Bool`` option type, where as a |ComboBox|_ displays and writes data to a ``List`` option. jamovi provides a
solid array of basic controls to cover all the current option types. Controls will continue to be developed as jamovi grows but the current list covers most
use cases.

When adding child controls to any |ParentControl|_, at the very least the ``type`` property needs to be specified (as well as the minimum requirements for
that control).

.. code-block:: yaml

   name:  descriptives
   title: Descriptives
   jus:   '2.0'
   stage: 0
   compilerMode: tame
   children:
     - type: LayoutBox
       margin: large
       children:
       - type: Label
         label: jamovi is great?
       - type: Label
         label: Of cause it is!

Now we can add, move or adjust any control to meet our needs. Here is a list of controls that can make that possible:

.. toctree::
   :titlesonly:

   dh_ui_basecontrol
>>>>>>> master
   
.. ------------------------------------------------------------------------------------------------------------------------------------------------------------
   
.. |ParentControl|                     replace:: ``ParentControl``
.. _ParentControl:                     dh_ui_parentcontrol.html

.. |CheckBox|                          replace:: ``CheckBox``
.. _CheckBox:                          dh_ui_checkbox.html

.. |ComboBox|                          replace:: ``ComboBox``
.. _ComboBox:                          dh_ui_combobox.html

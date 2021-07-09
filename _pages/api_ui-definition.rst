.. sectionauthor:: Jonathon Love

=============================================
User-interface definition (``.u.yaml`` files)
=============================================

Overview
--------

The UI YAML is pretty straight forward. It follows a tree structure that
defines the child/parent relationship between the controls. The top
level or root control is the first thing that is described by the UI
YAML.

Properties
----------

+------------------+---------------------------------------+----------------------+
| Property         | Description                           | Form                 |
+==================+=======================================+======================+
| ``name``         | The name of the analysis.             | Unique string        |
+------------------+---------------------------------------+----------------------+
| ``title``        | Sets the title to be displayed at the | string               |
|                  | top of the option panel.              |                      |
+------------------+---------------------------------------+----------------------+
| ``jus``          | Defines the syntax version used by    | string of form       |
|                  | the u.yaml file.                      | ‘number.number’      |
+------------------+---------------------------------------+----------------------+
| ``stage``        | Sets the stage display filter.        | 0 - Released         |
|                  |                                       | 1 - In development   |
|                  |                                       | 2 - Proposed         |
+------------------+---------------------------------------+----------------------+
| ``compilerMode`` | Sets the compiler interaction mode.   | *enum*: tame,        |
|                  |                                       | aggressive           |
+------------------+---------------------------------------+----------------------+
| ``children``     | Sets the child control definitions.   | Array of valid       |
|                  |                                       | control definitions. |
+------------------+---------------------------------------+----------------------+

Example
~~~~~~~

.. code-block:: yaml

   name:  descriptives
   title: Descriptives
   jus:   '2.0'
   stage: 0
   compilerMode: tame
   children:
         #array of child definitions

Further Detail
~~~~~~~~~~~~~~

The root control is a ```ParentControl`` <ui_parentcontrol.html>`__ and
as the name suggests serves as a parent to child controls. All parent
controls contain the property ``children`` which defines an array of
control definitions to be embedded. All UI design happens within the
``children`` node of the root control. Control definitions are added
here in the form we design.

When controls are added to the root control they are added in a list
form, from top to bottom of the options panel.

Controls
--------

There are many different controls that can be used within the jamovi
options UI panel. Each control has been designed for a specific option
type(s). For example, a ``CheckBox`` is designed around a ``Bool``
option type, where as a ``ComboBox`` displays and writes data to a
``List`` option. Jamovi provides a solid array of basic controls to
cover all the current option types. Controls will continue to be
developed as jamovi grows but the current list covers most use cases.

When adding child controls to any ``ParentControl``, at the very least
the ``type`` property needs to be specified (as well as the minimum
requirements for that control).

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

Now we can add, move or adjust any control to meet our needs. Here is a
list of controls that can make that possible:

.. toctree::
   :titlesonly:

   ui_basecontrol

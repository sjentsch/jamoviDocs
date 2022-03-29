.. sectionauthor:: Jonathon Love

======================
Advanced Customisation
======================

Customizing UI controls
-----------------------

<<<<<<< HEAD
   Sometimes the |uyaml|_-file alone doesn’t provide enough flexibility for an analysis options UI. More complex UIs can be achieved through writing additional
   javascript that provides more complex behaviour. This allows much greater freedom and flexibility, and allows you to design an options UI completely from
   scratch if necessary.

   The options UI is customised through attaching javascript ‘event handler’ functions to the user interface. These then respond to events such as a UI
   ‘loaded’ event, or an option ‘changed’ event in response to a user interaction.

   Additional UI functions are defined in a javascript-file with a ``.js``-suffix, and are placed in the ``jamovi/js`` folder of the module. The name of the
   ``.js``-file should match the names of the other ``.yaml``-files for that analysis. For example:

   - ``ttest``\ |ayaml|_
   - ``ttest``\ |ryaml|_
   - ``ttest``\ |uyaml|_
   - ``js/ttest.js``

   The events ``.js``-files follow the ``CommonJS`` javascript module spec, assigning each of the event handlers and functions to an object which is assigned
   to ``module.exports``.

   *IMPORTANT:* For customisations to function, the ``jus`` property in the |uyaml|_-file needs to be set to ``3.0``.

   For example:

   .. code-block:: yaml

      name: ttest
      title: T-Test
      jus: '3.0'
      compilerMode: tame
      children:
      - type: ComboBox
        name: ttestType

   .. code-block:: javascript

      module.exports = {

          // event handlers and functions are defined here

          // this is an example of an event handler
          view_loaded: function(ui, event) {
              // do something
          },

          // this is another example of an event handler
          ttestType_changed: function(ui, event) {
              let value = this.calculateValue();
              // do something
          },

          // this is an example of an auxiliary function
          calculateValue: function() {
              // do something
          }
      };

   In the above example, the ``view_loaded(...)`` event handler is invoked with a ``loaded`` event when the analysis options UI is created for the first time.
   Similarly, a ``changed`` event is fired, and the event handler function ``ttestType_changed(...)`` is invoked when the user changes the value of the
   ``ttestType`` option.

   Note that jamovi ships with the Chrome developer tools, so it’s possible to invoke these, and have access to the debugger, DOM viewer, etc. The dev tools are
   invoked by pressing ``F10``. (Note that sometimes jamovi’s internal iframes prevent this key stroke from registering. You sometimes need to click the blue bar
   along the top to move the focus back to the main window, before the ``F10`` keystroke will register.)

=======
Sometimes the ``.u.yaml`` file alone doesn’t provide enough flexibility for an analysis options UI. More complex UIs can be achieved through writing additional
javascript that provides more complex behaviour. This allows much greater freedom and flexibility, and allows you to design an options UI completely from
scratch if necessary.

The options UI is customised through attaching javascript ‘event handler’ functions to the user interface. These then respond to events such as a UI ‘loaded’
event, or an option ‘changed’ event in response to a user interaction.

Additional UI functions are defined in a javascript file with a ``.js`` suffix, and are placed in the ``jamovi/js`` folder of the module. The name of the
.js-file should match the names of the other .yaml-files for that analysis. For example:

-  ``ttest.a.yaml``
-  ``ttest.r.yaml``
-  ``ttest.u.yaml``
-  ``js/ttest.js``

The events .js files follow the ``CommonJS`` javascript module spec, assigning each of the event handlers and functions to an object which is assigned to
``module.exports``.

*IMPORTANT:* For customisations to function, the ``jus`` property in the ``u.yaml`` file needs to be set to ``3.0``.

For example:

.. code-block:: yaml

   name: ttest
   title: T-Test
   jus: '3.0'
   compilerMode: tame
   children:
     - type: ComboBox
       name: ttestType

.. code-block:: javascript

       module.exports = {

           // event handlers and functions are defined here

           // this is an example of an event handler
           view_loaded: function(ui, event) {
               // do something
           },

           // this is another example of an event handler
           ttestType_changed: function(ui, event) {
               let value = this.calculateValue();
               // do something
           },

           // this is an example of an auxiliary function
           calculateValue: function() {
               // do something
           }
       };

In the above example, the ``view_loaded(...)`` event handler is invoked with a ``loaded`` event when the analysis options UI is created for the first time.
Similarly, a ``changed`` event is fired, and the event handler function ``ttestType_changed(...)`` is invoked when the user changes the value of the
``ttestType`` option.

Note that jamovi ships with the Chrome developer tools, so it’s possible to invoke these, and have access to the debugger, DOM viewer, etc. The dev tools are
invoked by pressing ``F10``. (Note that sometimes jamovi’s internal iframes prevent this key stroke from registering. You sometimes need to click the blue bar
along the top to move the focus back to the main window, before the ``F10`` keystroke will register.)
>>>>>>> master

Events
~~~~~~

<<<<<<< HEAD
   Event handlers are added by naming the function with the following pattern. Option name, followed by an underscore, followed by the event name 
   ``{optionName}_{eventName}``.

   For example: ``ttestType_changed``

   jamovi will automatically attach the event handler ``ttestType_changed(...)`` to the ``changed`` event of the ``ttestType`` option when the analysis is run.

=======
Event handlers are added by naming the function with the following pattern. Option name, followed by an underscore, followed by the event name 
``{optionName}_{eventName}``.

For example: ``ttestType_changed``

jamovi will automatically attach the event handler ``ttestType_changed(...)`` to the ``changed`` event of the ``ttestType`` option when the analysis is run.
>>>>>>> master

View
^^^^

<<<<<<< HEAD
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | Event                    | Description                                                                                                                       |
   +==========================+===================================================================================================================================+
   | creating                 | Invoked at the very beginning of the options panel creation, before anything is added to the DOM.                                 |
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | loaded                   | Invoked after the options panel has been created and the DOM has been populated. The same analysis options panel persists as long |
   |                          | as jamovi is still running, and is shared by all analyses of the same type, so this is only invoked once. This is the most common |
   |                          | event to use for  customising the UI.                                                                                             |
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | updated                  | Invoked when the user selects a different analysis (of the same type) and the options need to change to reflect the new analysis’ |
   |                          | option values (This is also called when the user inserts a new analysis, when an option panel for that analysis type already      |
   |                          | exists).                                                                                                                          |
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

=======
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Event                    | Description                                                                                                                       |
+==========================+===================================================================================================================================+
| creating                 | Invoked at the very beginning of the options panel creation, before anything is added to the DOM.                                 |
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| loaded                   | Invoked after the options panel has been created and the DOM has been populated. The same analysis options panel persists as long |
|                          | as jamovi is still running, and is shared by all analyses of the same type, so this is only invoked once. This is the most common |
|                          | event to use for  customising the UI.                                                                                             |
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| updated                  | Invoked when the user selects a different analysis (of the same type) and the options need to change to reflect the new analysis’ |
|                          | option values (This is also called when the user inserts a new analysis, when an option panel for that analysis type already      |
|                          | exists).                                                                                                                          |
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
>>>>>>> master

All controls
^^^^^^^^^^^^

<<<<<<< HEAD
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | Event                    | Description                                                                                                                       |
   +==========================+===================================================================================================================================+
   | changing                 | Invoked before the value of the control is changed.                                                                               |
   | changed                  | Invoked after the value of the control is changed.                                                                                |
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

=======
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Event                    | Description                                                                                                                       |
+==========================+===================================================================================================================================+
| changing                 | Invoked before the value of the control is changed.                                                                               |
| changed                  | Invoked after the value of the control is changed.                                                                                |
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
>>>>>>> master

ListBox
^^^^^^^

<<<<<<< HEAD
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | Event                    | Description                                                                                                                       |
   +==========================+===================================================================================================================================+
   | listItemAdded            | Invoked when a control is added to a list box.                                                                                    |
   | listItemRemoved          | Invoked when a control is removed from a list box.                                                                                |
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

=======
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Event                    | Description                                                                                                                       |
+==========================+===================================================================================================================================+
| listItemAdded            | Invoked when a control is added to a list box.                                                                                    |
| listItemRemoved          | Invoked when a control is removed from a list box.                                                                                |
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
>>>>>>> master

Suppliers
^^^^^^^^^

<<<<<<< HEAD
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | Event                    | Description                                                                                                                       |
   +==========================+===================================================================================================================================+
   | updated                  | Invoked when a variable name or level name is changes.                                                                            |
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

   *IMPORTANT NOTE:* The use of the ``updated`` event is required for all ``Supplier`` and ``VariableSupplier`` controls (under certain conditions). If it is not
   implemented then jamovi will display the following error:

   .. code:: text

      Error: The use of a ‘VariableSupplier’ control, with the property >
      populate: ‘manual’, requires an ‘updated’ event handler to be
      assigned.

   or:

   .. code:: text

      Error: The use of a ‘Supplier’ control requires an ‘updated’ event
      handler to be assigned.

   These suppliers require manual population and therefore need to be appropriately updated in response to variable or level name changes.

=======
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Event                    | Description                                                                                                                       |
+==========================+===================================================================================================================================+
| updated                  | Invoked when a variable name or level name is changes.                                                                            |
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

*IMPORTANT NOTE:* The use of the ``updated`` event is required for all ``Supplier`` and ``VariableSupplier`` controls (under certain conditions). If it is not
implemented then jamovi will display the following error::

   Error: The use of a ‘VariableSupplier’ control, with the property >
   populate: ‘manual’, requires an ‘updated’ event handler to be
   assigned.

or::

   Error: The use of a ‘Supplier’ control requires an ‘updated’ event
   handler to be assigned.

These suppliers require manual population and therefore need to be appropriately updated in response to variable or level name changes.
>>>>>>> master

Custom Control
^^^^^^^^^^^^^^

<<<<<<< HEAD
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | Event                    | Description                                                                                                                       |
   +==========================+===================================================================================================================================+
   | creating                 | Invoked during the creation phase of the options panel. Allows for access to the custom control for customisation before it is    |
   |                          | made visible.                                                                                                                     |
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | updated                  | Invoked when a variable name or level name is changes.                                                                            |
   +--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
=======
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Event                    | Description                                                                                                                       |
+==========================+===================================================================================================================================+
| creating                 | Invoked during the creation phase of the options panel. Allows for access to the custom control for customisation before it is    |
|                          | made visible.                                                                                                                     |
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| updated                  | Invoked when a variable name or level name is changes.                                                                            |
+--------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
>>>>>>> master


Event handlers
~~~~~~~~~~~~~~

<<<<<<< HEAD
   All event handlers are invoked with two arguments; the ``ui``, and the ``event``. The ui is a convenience object containing all the other controls in the
   options panel and the DOM. All the option controls are available in the ui argument as properties. For example:

   .. code-block:: javascript

      ttestType_changed(ui, event) {
          let ttype = ui.ttestType.value()
          if (ttype === 'welchs')
              ui.priorWidth.setValue(0.707)
      }

   In this example, when the user changes the ``ttestType`` option to ``welchs``, the ``priorWidth`` option is changed to ``0.707``. All options have the
   ``.value()`` and ``.setValue()`` methods.

   Note that each change to the values of the options triggers the re-running of the analysis. If multiple option values need to change in response to an event,
   it is better to batch these changes together, to prevent the analysis being restarted again and again. Option changes can be batched together with the
   ``ui.view.model.options`` ``beginEdit()`` and ``endEdit()`` functions as follows:

   .. code-block:: javascript

      ui.view.model.options.beginEdit();
      ui.figWidth.setValue(400);
      ui.figHeight.setValue(300);
      ui.view.model.options.endEdit();

   In this example, changing the ``figWidth`` and ``figHeight`` options only triggers the re-running of the analysis once.

=======
All event handlers are invoked with two arguments; the ``ui``, and the ``event``. The ui is a convenience object containing all the other controls in the
options panel and the DOM. All the option controls are available in the ui argument as properties. For example:

.. code-block:: javascript

       ttestType_changed(ui, event) {
           let ttype = ui.ttestType.value()
           if (ttype === 'welchs')
               ui.priorWidth.setValue(0.707)
       }

In this example, when the user changes the ``ttestType`` option to ``welchs``, the ``priorWidth`` option is changed to ``0.707``. All options have the
``.value()`` and ``.setValue()`` methods.

Note that each change to the values of the options triggers the re-running of the analysis. If multiple option values need to change in response to an event,
it is better to batch these changes together, to prevent the analysis being restarted again and again. Option changes can be batched together with the
``ui.view.model.options`` ``beginEdit()`` and ``endEdit()`` functions as follows:

.. code-block:: javascript

   ui.view.model.options.beginEdit();
   ui.figWidth.setValue(400);
   ui.figHeight.setValue(300);
   ui.view.model.options.endEdit();

In this example, changing the ``figWidth`` and ``figHeight`` options only triggers the re-running of the analysis once.
>>>>>>> master

Accessing the DOM
~~~~~~~~~~~~~~~~~

<<<<<<< HEAD
   The DOM for the root of options UI can be accessed from the ui through the ``view`` property:

   .. code-block:: javascript

      ui.view.el  | the root DOM node
      ui.view.$el | the root DOM node as a jQuery object

   It is also possible to inspect the DOM using the chrome dev tools shipped with jamovi (to access these, click the blue bar at the top of jamovi, and press
   ``F10``).

   Additionally, the DOM elements for most of the option controls are accessible through the ``el`` and ``$el`` property. i.e.

   .. code-block:: javascript

      let figWidth = ui.figWidth.el
      let $figWidth = ui.figWidth.$el

=======
The DOM for the root of options UI can be accessed from the ui through the ``view`` property:

.. code-block:: javascript

   ui.view.el  | the root DOM node
   ui.view.$el | the root DOM node as a jQuery object

It is also possible to inspect the DOM using the chrome dev tools shipped with jamovi (to access these, click the blue bar at the top of jamovi, and press
``F10``).

Additionally, the DOM elements for most of the option controls are accessible through the ``el`` and ``$el`` property. i.e.

.. code-block:: javascript

   let figWidth = ui.figWidth.el
   let $figWidth = ui.figWidth.$el
>>>>>>> master

Adding a custom control
-----------------------

<<<<<<< HEAD
   Sometimes the controls built into jamovi do not provide the behaviour your analysis requires. In this scenario, it’s possible to create a ‘custom control’
   which is placed within the DOM.

   A control of type ``CustomControl`` allows for this possibility, when added to the |uyaml|_-file, and the ``creating`` event is handled in the javascript.

   For example, the description of the control in the |uyaml|_

   .. code-block:: yaml

      - type: CustomControl
        name: ttestType

   and the event handler for the the ``.js``

   .. code-block:: javascript

      ttestType_creating: function(ui, event) {
          let $element = ui.ttestType.$el;
          // in this instance, the $element object represents the root DOM node
          // of the custom control. sub-nodes can be added to this node, and the
          // control will be laid out by the layout manager in the final options
          // UI
      }

=======
Sometimes the controls built into jamovi do not provide the behaviour your analysis requires. In this scenario, it’s possible to create a ‘custom control’
which is placed within the DOM.

A control of type ``CustomControl`` allows for this possibility, when added to the ``.u.yaml`` file, and the ``creating`` event is handled in the javascript.

For example,

the description of the control in the ``u.yaml``

.. code-block:: yaml

   - type: CustomControl
     name: ttestType

and the event handler for the the ``.js``

.. code-block:: javascript

       ttestType_creating: function(ui, event) {
           let $element = ui.ttestType.$el;
           // in this instance, the $element object represents the root DOM node
           // of the custom control. sub-nodes can be added to this node, and the
           // control will be laid out by the layout manager in the final options
           // UI
       }
>>>>>>> master

Options UI from scratch
-----------------------

<<<<<<< HEAD
   Sometimes an analysis requires a very radical UI design that can’t be accommodated by the standard UI controls or a custom control. If this is the case, an
   entirely custom UI may need to be developed.

   To achieve this, the options and their types are defined as usual in the |ayaml|_-file, however, each option is marked as ``hidden: true``. This prevents
   ``jmvtools`` from (re)adding the standard UI controls into the |uyaml|_-file, allowing you to implement them yourself.

   To construct the UI, all the DOM setup for the custom panel should occur in a ``creating`` event handler for the ``view`` control.

   .. code-block:: javascript

      'use strict';

      module.exports = {

          view_creating: function(ui, event) {
              let $panel = ui.view.$el;
              // in this instance, the $panel object represents the root DOM node
              // of the options panel. sub-nodes can be added to this node.
          }
      }

.. ------------------------------------------------------------------------------------------------------------------------------------------------------------

.. |ayaml|                             replace:: ``.a.yaml``
.. _ayaml:                             dh_api_analysis-definition.html

.. |ryaml|                             replace:: ``.r.yaml``
.. _ryaml:                             dh_api_results-definition.html

.. |uyaml|                             replace:: ``.u.yaml``
.. _uyaml:                             dh_api_ui-definition.html
=======
Sometimes an analysis requires a very radical UI design that can’t be accommodated by the standard UI controls or a custom control. If this is the case, an
entirely custom UI may need to be developed.

To achieve this, the options and their types are defined as usual in the ``.a.yaml`` file, however, each option is marked as ``hidden: true``. This prevents
``jmvtools`` from (re)adding the standard UI controls into the ``.u.yaml`` file, allowing you to implement them yourself.

To construct the UI, all the DOM setup for the custom panel should occur in a ``creating`` event handler for the ``view`` control.

.. code-block:: javascript

   'use strict';

   module.exports = {

       view_creating: function(ui, event) {
           let $panel = ui.view.$el;
           // in this instance, the $panel object represents the root DOM node
           // of the options panel. sub-nodes can be added to this node.
       }
   }

>>>>>>> master

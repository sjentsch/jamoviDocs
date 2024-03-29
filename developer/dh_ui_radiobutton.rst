.. sectionauthor:: Jonathon Love

===============
``RadioButton``
===============

**Inherits from** |ParentControl|_, |OptionControl|_

Properties
----------

There are no ``RadioButton`` specific properties. All behavior can be achieved using the inherited properties of |OptionControl|_ and |ParentControl|_.

Supported Option Types
----------------------

``List``
~~~~~~~~

When the option binding is to a ``List`` a few properties are needed for it to work.

The below example shows an option with the name ``plotError``. This option has a property called ``options`` which describes three mutually exclusive
sub-options that are possible values for the options output. A ``List`` returns the name of one of these sub-options as a string.

Now a ``RadioButton`` can be used to manipulate a ``List`` option by changing its value to a specified sub-option name.

*Option Definition*

.. code-block:: yaml

   - name: plotError
     title: Error Bar Definition
     type: List
     options:
       - name: none
         title: None
       - name: ci
         title: Confidence interval
       - name: se
         title: Standard Error
     default: ci
     description:
         R: >
           'none', 'ci' (default), or 'se'. Use no error bars, use confidence
           intervals, or use standard errors on the plots, respectively.

To achieve this two properties will need to be added to the ``RadioButton`` definition ``optionName`` and ``optionPart``. Both these properties are inherited
from |OptionControl|_. As has been described in |OptionControl|_ documentation, ``optionName`` is used to determine what option the ``RadioButton`` should bind
to. Under normal circumstances, it is not necessary to use ``optionName`` as the property ``name`` can be used for the same effect. This however, becomes a
problem for defining a ``RadioButton`` that is linked to an ``List`` as the ``name`` property also has the requirement to be unique to that UI control. It is
not allowed to have two radio buttons (or any other control for that matter) with the same name. Because of this, when binding to an ``List`` with a 
``RadioButton`` we are required to give that ``RadioButton`` a unique name and use the ``optionName`` to bind to the desired ``List``.

Now binding solely to a ``List`` is not a valid configuration for a ``RadioButton`` as it requires a boolean data type to operate correctly. To overcome this,
the ``RadioButton`` definition will need to not *just* bind to the ``List`` but also to one of the sub-options. This is achieved using the ``optionPart``
property. By assigning the name of the desired sub-option to this property, the ``RadioButton`` will operate base on that sub-options name.

*UI Control Definition*

.. code-block:: yaml

   - type: RadioButton
     name: plotError_none
     optionName: plotError
     optionPart: none
   - type: RadioButton
     name: plotError_ci
     optionName: plotError
     optionPart: ci
     children:
       - type: TextBox
         name: ciWidth
         label: Interval
         suffix: '%'
         format: number
         inputPattern: '[0-9]+'
         enable: (plotError_ci)
   - type: RadioButton
     name: plotError_se
     optionName: plotError
     optionPart: se

Three ``RadioButton``\ ’s for the three sub-options of the option bound ``List``.

.. ------------------------------------------------------------------------------------------------------------------------------------------------------------

.. |ParentControl|     replace:: ``ParentControl``
.. _ParentControl:     dh_ui_parentcontrol.html

.. |OptionControl|     replace:: ``OptionControl``
.. _OptionControl:     dh_ui_optioncontrol.html

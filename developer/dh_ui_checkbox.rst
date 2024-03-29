.. sectionauthor:: Jonathon Love

============
``CheckBox``
============

**Inherits from** |ParentControl|_, |OptionControl|_

Properties
----------

There are no ``CheckBox`` specific properties. All behavior can be achieved using the inherited properties of |OptionControl|_ and |ParentControl|_.

Supported Option Types
----------------------

-  ``Bool``
-  ``NMXList``

``Bool``
~~~~~~~~

When ``CheckBox`` is bound to a ``Bool`` option type the behavior is very simple. When the option is ``TRUE``, the ``CheckBox`` is checked.

Below is an example of a simple ``Bool`` option and a ``CheckBox`` that has been associated with it.

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

Note that the ``optionName`` property of the ``CheckBox`` is not specified and therefore the *option binding* will use the ``name`` property of the control for
the binding process instead (see |OptionControl|_ for more details).

There is also no need to specify the ``label`` property of this |OptionControl|_ as the ``title`` property of the option is adequate and will be automatically
used by the ``CheckBox``. This means that a ``CheckBox`` can be defined in two lines! If the ``title`` property of the option is not appropriate for the
control then a ``label`` property can be added to the ``CheckBox`` to override it.

--------------

``NMXList``
~~~~~~~~~~~

When ``CheckBox`` is bound to an ``NMXList`` a few more properties are needed for it to work.

The below example shows an option with the name ``effectSize``. This option has a property called ``options`` which describes three non-mutually exclusive
sub-options that are possible within the options output. An ``NMXList`` returns an array of one or all of these sub-options.

Now a ``CheckBox`` can be used to manipulate an ``NMXList`` option by adding or removing a specified sub-option from the underlying array.

*Option Definition*

.. code-block:: yaml

   - name: effectSize
     type: NMXList
     title: Effect Size
     options:
         - name: eta
           title: η²
         - name: partEta
           title: partial η²
         - name: omega
           title: ω²

To achieve this two properties will need to be added to the ``CheckBox`` definition: ``optionName`` and ``optionPart``. Both these properties are inherited
from |OptionControl|_. As has been described in |OptionControl|_ documentation, ``optionName`` is used to determine what option the ``CheckBox`` should bind
to. Under normal circumstances, it is not necessary to use ``optionName`` as the property ``name`` can be used for the same effect. This however, becomes a
problem for defining a ``CheckBox`` that is linked to an ``NMXList`` as the ``name`` property also has a requirement to be unique across all controls. It is
not allowed to have two checkboxes (or any other control for that matter) with the same name. Because of this, when binding to an ``MNXList`` we are required
to give the ``CheckBox`` a unique name and use the ``optionName`` to bind to the desired ``NMXList``.

Now binding solely to an ``NMXList`` is not a valid configuration for a ``CheckBox`` as it requires a boolean data type to operate correctly. To overcome this,
the ``CheckBox`` definition will need to not *just* bind to the ``NMXList`` but also to one of the sub-options. This is achieved using the ``optionPart``
property. By assigning the name of the desired sub-option to this property, the ``CheckBox`` will operate base on that sub-options existence in the underlying
array.

*UI Control Definition*

.. code-block:: yaml

   - type: CheckBox
     name: effectSize_eta
     optionName: effectSize
     optionPart: eta
     
   - type: CheckBox
     name: effectSize_partEta
     optionName: effectSize
     optionPart: partEta
     
   - type: CheckBox
     name: effectSize_omega
     optionName: effectSize
     optionPart: omega

Three ``CheckBox``\ ’s for the three sub-options of the option ``NMXList``.

.. ------------------------------------------------------------------------------------------------------------------------------------------------------------

.. |ParentControl|     replace:: ``ParentControl``
.. _ParentControl:     dh_ui_parentcontrol.html

.. |OptionControl|     replace:: ``OptionControl``
.. _OptionControl:     dh_ui_optioncontrol.html


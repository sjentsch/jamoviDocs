.. sectionauthor:: Jonathon Love

====================
``VariableSupplier``
====================

**Inherits from:** |BaseControl|_

**Cooming soon!**

Properties
----------

Supported Option Types
----------------------

Example
-------

Controls
--------

..
  - type: VariableSupplier
    stretchFactor: 1
    children:
      - type: TargetLayoutBox
        label: Factors
        children:
          - type: VariablesListBox
            name: factors
            isTarget: true
            events:
              change: './loglinear.events::onChange_factors'
      - type: TargetLayoutBox
        label: Counts (optional)
        children:
          - type: VariablesListBox
            name: counts
            isTarget: true
            maxItemCount: 1

.. ------------------------------------------------------------------------------------------------------------------------------------------------------------

.. |BaseControl|       replace:: ``BaseControl``
.. _BaseControl:       ui_basecontrol.html

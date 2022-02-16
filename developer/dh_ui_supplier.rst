.. sectionauthor:: Jonathon Love

============
``Supplier``
============

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

.. ancova.u.yaml
      - type: Supplier
        name: modelSupplier
        label: Components
        persistentItems: true
        stretchFactor: 1
        format: term
        events:
          update: './ancova.events::onUpdate_modelSupplier'
        children:
          - type: TargetLayoutBox
            transferAction: interactions
            children:
              - type: ListBox
                name: modelTerms
                valueFilter: unique
                isTarget: true
                itemDropBehaviour: emptyspace
                events:
                  change: './ancova.events::onChange_modelTerms'
                template:
                  type: TermLabel

      - type: Supplier
        name: postHocSupplier
        persistentItems: false
        stretchFactor: 1
        format: term
        events:
          change: './ancova.events::onChange_postHocSupplier'
          update: './ancova.events::onUpdate_postHocSupplier'
        children:
          - type: TargetLayoutBox
            label: ''
            children:
              - type: ListBox
                name: postHoc
                isTarget: true
                template:
                  type: TermLabel

.. --------------------------------------------------------------------

.. |BaseControl|       replace:: ``BaseControl``
.. _BaseControl:       dh_ui_basecontrol.html

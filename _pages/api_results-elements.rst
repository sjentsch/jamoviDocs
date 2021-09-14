.. sectionauthor:: Jonathon Love

========================================
Elements to assign results to (in ``R``)
========================================

Overview
--------

This document describes the properties and methods of the results
elements:

-  Table (most commonly used, therefore described `in detail <api_table.html>`__)
-  Image
-  Group
-  Array
-  Preformatted
-  Html

The values of properties can be accessed using the ``$`` operator. For
example, to retrieve the title of an element, one can go:

.. code-block:: R

   element$title

The methods of a results elements are called using the ``$`` operator as
well. For example:

.. code-block:: R

   element$setTitle('An awesome title')

Elements
--------

The following properties and methods are common to all results elements

Properties
~~~~~~~~~~

name
^^^^

a string specifying the name of the element

title
^^^^^

a string specifying the title of the element

visible
^^^^^^^

``TRUE`` or ``FALSE``, whether the element is visible or not

status
^^^^^^

a string, one of ``'complete'``, ``'error'``, ``'inited'``,
``'running'``

rowKeys
^^^^^^^

a list of 'keys'

state
^^^^^

the state

Methods
~~~~~~~

setStatus(status)
^^^^^^^^^^^^^^^^^

sets the element’s status, should be one of ``'complete'``, ``'error'``,
``'inited'``, ``'running'``

setVisible(visible=TRUE)
^^^^^^^^^^^^^^^^^^^^^^^^

overrides the elements default visibility

setTitle(title)
^^^^^^^^^^^^^^^

sets the element’s title

setError(message)
^^^^^^^^^^^^^^^^^

sets the element’s status to ‘error’, and assigns the error message

setState(object)
^^^^^^^^^^^^^^^^

sets the state object on the element

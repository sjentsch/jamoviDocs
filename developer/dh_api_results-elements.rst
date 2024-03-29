.. sectionauthor:: Jonathon Love

========================================
Elements to assign results to (in ``R``)
========================================

Overview
--------

   This document describes the properties and methods of the results elements:

   -  Table (most commonly used, therefore described :doc:`in detail <dh_api_table>`)
   -  Image
   -  Group
   -  Array
   -  Preformatted
   -  Html

   The values of properties can be accessed using the ``$`` operator. For example, to retrieve the title of an element, one can go:

   .. code-block:: R

      element$title

   The methods of a results elements are called using the ``$`` operator as well. For example:

   .. code-block:: R

      element$setTitle('An awesome title')


Elements
--------

   The following properties and methods are common to all results elements:

   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+
   | **Property**                 | Description                                                                                                               |
   +==============================+===========================================================================================================================+
   | ``name``                     | A string specifying the name of the element.                                                                              |
   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+
   | ``title``                    | A string specifying the title of the element.                                                                             |
   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+
   | ``visible``                  | Whether the element is visible or not (``true`` or ``false``, default: ``true``)                                          |
   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+
   | ``status``                   | A string, one of ``complete``, ``error``, ``inited``, ``running``.                                                        |
   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+
   | ``rowKeys``                  | A list of 'keys'.                                                                                                         |
   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+
   | ``state``                    | The state of the element                                                                                                  |
   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+


   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+
   | **Method**                   | Description                                                                                                               |
   +==============================+==================+========================================================================================================+
   | ``setStatus(status)``        | Sets the elements’ status; should be one of ``complete``, ``error``, ``inited``, ``running``.                             |
   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+
   | ``setVisible(visible=TRUE)`` | Overrides the elements default visibility.                                                                                |
   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+
   | ``setTitle(title)``          | Sets the element’s title.                                                                                                 |
   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+
   | ``setError(message)``        | Sets the element’s status to ``error``, and assigns the error message.                                                    |
   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+
   | ``setState(object)``         | Sets the state object on the element.                                                                                     |
   +------------------------------+---------------------------------------------------------------------------------------------------------------------------+

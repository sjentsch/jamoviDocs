.. sectionauthor:: `Jonathon Love <https://jona.thon.love/>`_

=======================================
Reads a data set from jamovi (``read``)
=======================================

Description
-----------

Reads a data set from jamovi

Usage
-----

.. code-block:: R

   read(id, columns)

Arguments
---------

=========== ================================================
``id``      the number, or the title of the data set to read
``columns`` (optional) only reads the columns named
=========== ================================================

Output
------

the data set as a data frame

Examples
--------

.. code-block:: R

   jmvconnect::what()

   #  Available Data Sets
   #  -------------------------------------
   #         Title           Rows    Cols
   #  -------------------------------------
   #    1    iris             150       5
   #    2    Tooth Growth      60       3
   #  -------------------------------------

   data <- jmvconnect::read('Tooth Growth')

   # or

   data <- jmvconnect::read(2)

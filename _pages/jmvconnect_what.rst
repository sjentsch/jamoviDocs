.. sectionauthor:: `Jonathon Love <https://jona.thon.love/>`_

====================================================
Lists the data sets available from jamovi (``what``)
====================================================

Description
-----------

Lists the data sets available from jamovi. Data sets can then be read
using the read() function.

Usage
-----

.. code-block:: r

   what()

Examples
--------

.. code-block:: r

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

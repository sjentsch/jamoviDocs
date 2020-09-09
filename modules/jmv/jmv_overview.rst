=============================================
``jmv``, ``jmvconnect``, and ``jmvReadWrite``
=============================================

jmv is the jamovi R package. All the analyses included with jamovi are
available from within R using this package. For examples on how to use jmv,
jamovi can be placed in ‘syntax mode’ (available from the top right menu).
Syntax mode produces the R syntax required to reproduce jamovi analyses in R.

jmv is available from CRAN here, and can be installed in R with:

.. code-block: r

   install.packages('jmv')

More information about the analyses jmv provides is available using the R help
system, or from the overview below.

Two further R-packages ``jmvconnect`` and ``jmvReadWrite`` make it easier to
exchange data between `jamovi <https://www.jamovi.org>`__ and R. ``jmvconnect``
permits to access data sets that you currently have opened in jamovi.
``jmvReadWrite`` enables you to read and write the ``.omv``-files jamovi
produces.

Those packages can be installed in R with:

.. code-block: r

   install.packages('jmvconnect')
   install.packages('jmvReadWrite')


-----------
Exploration
-----------

.. toctree::
   :titlesonly:
   :name: sec-exploration
   
   descriptives

-------
T-Tests
-------

.. toctree::
   :titlesonly:
   :name: sec-t_tests

   ttestIS
   ttestPS
   ttestOneS

-----
ANOVA
-----

.. toctree::
   :titlesonly:
   :name: sec-anova

   anovaOneW
   ANOVA
   anovaRM
   ancova
   mancova
   anovaNP
   anovaRMNP

----------
Regression
----------

.. toctree::
   :titlesonly:
   :name: sec-regression

   corrMatrix
   corrPart
   linReg
   logRegBin
   logRegMulti
   logRegOrd

-----------
Frequencies
-----------

.. toctree::
   :titlesonly:
   :name: sec-frequencies

   propTest2
   propTestN
   contTables
   contTablesPaired
   logLinear

---------------
Factor analyses
---------------

.. toctree::
   :titlesonly:
   :name: sec-factoranalyses

   reliability
   pca
   efa
   cfa
 
----------    
jmvconnect
----------

.. toctree::
   :titlesonly:
   :name: sec-jmvconnect

   jmvconnect_read
   jmvconnect_what

------------
jmvReadWrite
------------

.. toctree::
   :titlesonly:
   :name: sec-jmvreadwrite

   jmvRead
   jmvWrite


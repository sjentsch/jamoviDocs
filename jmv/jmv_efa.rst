.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

=====================================
Exploratory Factor Analysis (``efa``)
=====================================

Description
-----------

Exploratory Factor Analysis

Usage
-----

.. code-block:: R

   efa(
     data,
     vars,
     nFactorMethod = "parallel",
     nFactors = 1,
     minEigen = 1,
     extraction = "minres",
     rotation = "oblimin",
     hideLoadings = 0.3,
     sortLoadings = FALSE,
     screePlot = FALSE,
     eigen = FALSE,
     factorCor = FALSE,
     factorSummary = FALSE,
     modelFit = FALSE,
     kmo = FALSE,
     bartlett = FALSE
   )

Arguments
---------

+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``data``          | the data as a data frame                                                                                                                 |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``vars``          | a vector of strings naming the variables of interest in ``data``                                                                         |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``nFactorMethod`` | ``'parallel'`` (default), ``'eigen'`` or ``'fixed'``, the way to determine the number of factors                                         |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``nFactors``      | an integer (default: 1), the number of factors in the model                                                                              |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``minEigen``      | a number (default: 1), the minimal eigenvalue for a factor to be included in the model                                                   |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``extraction``    | ``'minres'`` (default), ``'ml'``, or ``'pa'`` use respectively 'minimum residual', 'maximum likelihood', or 'prinicipal axis' as the     |
|                   | factor extraction method                                                                                                                 |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``rotation``      | ``'none'``, ``'varimax'``, ``'quartimax'``, ``'promax'``, ``'oblimin'`` (default), or ``'simplimax'``, the rotation to use in estimation |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``hideLoadings``  | a number (default: 0.3), hide factor loadings below this value                                                                           |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``sortLoadings``  | ``TRUE`` or ``FALSE`` (default), sort the factor loadings by size                                                                        |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``screePlot``     | ``TRUE`` or ``FALSE`` (default), show scree plot                                                                                         |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``eigen``         | ``TRUE`` or ``FALSE`` (default), show eigenvalue table                                                                                   |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``factorCor``     | ``TRUE`` or ``FALSE`` (default), show factor correlations                                                                                |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``factorSummary`` | ``TRUE`` or ``FALSE`` (default), show factor summary                                                                                     |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``modelFit``      | ``TRUE`` or ``FALSE`` (default), show model fit measures and test                                                                        |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``kmo``           | ``TRUE`` or ``FALSE`` (default), show Kaiser-Meyer-Olkin (KMO) measure of sampling adequacy (MSA) results                                |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| ``bartlett``      | ``TRUE`` or ``FALSE`` (default), show Bartlett's test of sphericity results                                                              |
+-------------------+------------------------------------------------------------------------------------------------------------------------------------------+

Output
------

A results object containing:

================ ==============
``results$text`` a preformatted
================ ==============

Examples
--------

.. code-block:: R

   data('iris')

   efa(iris, vars = vars(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width))

   #
   #  EXPLORATORY FACTOR ANALYSIS
   #
   #  Factor Loadings
   #  ------------------------------------------------
   #                    1        2        Uniqueness
   #  ------------------------------------------------
   #    Sepal.Length    0.993                0.10181
   #    Sepal.Width              0.725       0.42199
   #    Petal.Length    0.933                0.00483
   #    Petal.Width     0.897                0.07088
   #  ------------------------------------------------
   #    Note. 'oblimin' rotation was used
   #

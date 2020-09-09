.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

======================================
Principal Component Analysis (``pca``)
======================================

Description
-----------

Principal Component Analysis

Usage
-----

.. code-block:: r

   pca(
     data,
     vars,
     nFactorMethod = "parallel",
     nFactors = 1,
     minEigen = 1,
     rotation = "varimax",
     hideLoadings = 0.3,
     sortLoadings = FALSE,
     screePlot = FALSE,
     eigen = FALSE,
     factorCor = FALSE,
     factorSummary = FALSE,
     kmo = FALSE,
     bartlett = FALSE
   )

Arguments
---------

+-------------------+-------------------------------------------------+
| ``data``          | the data as a data frame                        |
+-------------------+-------------------------------------------------+
| ``vars``          | a vector of strings naming the variables of     |
|                   | interest in ``data``                            |
+-------------------+-------------------------------------------------+
| ``nFactorMethod`` | ``'parallel'`` (default), ``'eigen'`` or        |
|                   | ``'fixed'``, the way to determine the number of |
|                   | factors                                         |
+-------------------+-------------------------------------------------+
| ``nFactors``      | an integer (default: 1), the number of          |
|                   | components in the model                         |
+-------------------+-------------------------------------------------+
| ``minEigen``      | a number (default: 1), the minimal eigenvalue   |
|                   | for a component to be included in the model     |
+-------------------+-------------------------------------------------+
| ``rotation``      | ``'none'``, ``'varimax'`` (default),            |
|                   | ``'quartimax'``, ``'promax'``, ``'oblimin'``,   |
|                   | or ``'simplimax'``, the rotation to use in      |
|                   | estimation                                      |
+-------------------+-------------------------------------------------+
| ``hideLoadings``  | a number (default: 0.3), hide loadings below    |
|                   | this value                                      |
+-------------------+-------------------------------------------------+
| ``sortLoadings``  | ``TRUE`` or ``FALSE`` (default), sort the       |
|                   | factor loadings by size                         |
+-------------------+-------------------------------------------------+
| ``screePlot``     | ``TRUE`` or ``FALSE`` (default), show scree     |
|                   | plot                                            |
+-------------------+-------------------------------------------------+
| ``eigen``         | ``TRUE`` or ``FALSE`` (default), show           |
|                   | eigenvalue table                                |
+-------------------+-------------------------------------------------+
| ``factorCor``     | ``TRUE`` or ``FALSE`` (default), show factor    |
|                   | correlations                                    |
+-------------------+-------------------------------------------------+
| ``factorSummary`` | ``TRUE`` or ``FALSE`` (default), show factor    |
|                   | summary                                         |
+-------------------+-------------------------------------------------+
| ``kmo``           | ``TRUE`` or ``FALSE`` (default), show           |
|                   | Kaiser-Meyer-Olkin (KMO) measure of sampling    |
|                   | adequacy (MSA) results                          |
+-------------------+-------------------------------------------------+
| ``bartlett``      | ``TRUE`` or ``FALSE`` (default), show           |
|                   | Bartlett's test of sphericity results           |
+-------------------+-------------------------------------------------+

Output
------

A results object containing:

===================================== ========
``results$loadings``                  a table
``results$factorStats$factorSummary`` a table
``results$factorStats$factorCor``     a table
``results$modelFit$fit``              a table
``results$assump$bartlett``           a table
``results$assump$kmo``                a table
``results$eigen$initEigen``           a table
``results$eigen$screePlot``           an image
===================================== ========

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$loadings$asDF``

``as.data.frame(results$loadings)``

Examples
--------

.. code-block:: r

   data('iris')

   pca(iris, vars = vars(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width))

   #
   #  PRINCIPAL COMPONENT ANALYSIS
   #
   #  Component Loadings
   #  ----------------------------------------
   #                    1         Uniqueness
   #  ----------------------------------------
   #    Sepal.Length     0.890        0.2076
   #    Sepal.Width     -0.460        0.7883
   #    Petal.Length     0.992        0.0168
   #    Petal.Width      0.965        0.0688
   #  ----------------------------------------
   #    Note. 'varimax' rotation was used
   #

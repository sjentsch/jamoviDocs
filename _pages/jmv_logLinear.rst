.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

=====================================
Log-Linear Regression (``logLinear``)
=====================================

Description
-----------

Log-Linear Regression

Usage
-----

.. code-block:: r

   logLinear(
     data,
     factors = NULL,
     counts = NULL,
     blocks = list(list()),
     refLevels = NULL,
     modelTest = FALSE,
     dev = TRUE,
     aic = TRUE,
     bic = FALSE,
     pseudoR2 = list("r2mf"),
     omni = FALSE,
     ci = FALSE,
     ciWidth = 95,
     RR = FALSE,
     ciRR = FALSE,
     ciWidthRR = 95,
     emMeans = list(list()),
     ciEmm = TRUE,
     ciWidthEmm = 95,
     emmPlots = TRUE,
     emmTables = FALSE,
     emmWeights = TRUE
   )

Arguments
---------

+----------------+----------------------------------------------------+
| ``data``       | the data as a data frame                           |
+----------------+----------------------------------------------------+
| ``factors``    | a vector of strings naming the factors from        |
|                | ``data``                                           |
+----------------+----------------------------------------------------+
| ``counts``     | a string naming a variable in ``data`` containing  |
|                | counts, or NULL if each row represents a single    |
|                | observation                                        |
+----------------+----------------------------------------------------+
| ``blocks``     | a list containing vectors of strings that name the |
|                | predictors that are added to the model. The        |
|                | elements are added to the model according to their |
|                | order in the list                                  |
+----------------+----------------------------------------------------+
| ``refLevels``  | a list of lists specifying reference levels of the |
|                | dependent variable and all the factors             |
+----------------+----------------------------------------------------+
| ``modelTest``  | ``TRUE`` or ``FALSE`` (default), provide the model |
|                | comparison between the models and the NULL model   |
+----------------+----------------------------------------------------+
| ``dev``        | ``TRUE`` (default) or ``FALSE``, provide the       |
|                | deviance (or -2LogLikelihood) for the models       |
+----------------+----------------------------------------------------+
| ``aic``        | ``TRUE`` (default) or ``FALSE``, provide Aikaike's |
|                | Information Criterion (AIC) for the models         |
+----------------+----------------------------------------------------+
| ``bic``        | ``TRUE`` or ``FALSE`` (default), provide Bayesian  |
|                | Information Criterion (BIC) for the models         |
+----------------+----------------------------------------------------+
| ``pseudoR2``   | one or more of ``'r2mf'``, ``'r2cs'``, or          |
|                | ``'r2n'``; use McFadden's, Cox & Snell, and        |
|                | Nagelkerke pseudo-R², respectively                 |
+----------------+----------------------------------------------------+
| ``omni``       | ``TRUE`` or ``FALSE`` (default), provide the       |
|                | omnibus likelihood ratio tests for the predictors  |
+----------------+----------------------------------------------------+
| ``ci``         | ``TRUE`` or ``FALSE`` (default), provide a         |
|                | confidence interval for the model coefficient      |
|                | estimates                                          |
+----------------+----------------------------------------------------+
| ``ciWidth``    | a number between 50 and 99.9 (default: 95)         |
|                | specifying the confidence interval width           |
+----------------+----------------------------------------------------+
| ``RR``         | ``TRUE`` or ``FALSE`` (default), provide the       |
|                | exponential of the log-rate ratio estimate, or the |
|                | rate ratio estimate                                |
+----------------+----------------------------------------------------+
| ``ciRR``       | ``TRUE`` or ``FALSE`` (default), provide a         |
|                | confidence interval for the model coefficient rate |
|                | ratio estimates                                    |
+----------------+----------------------------------------------------+
| ``ciWidthRR``  | a number between 50 and 99.9 (default: 95)         |
|                | specifying the confidence interval width           |
+----------------+----------------------------------------------------+
| ``emMeans``    | a list of lists specifying the variables for which |
|                | the estimated marginal means need to be calculate. |
|                | Supports up to three variables per term.           |
+----------------+----------------------------------------------------+
| ``ciEmm``      | ``TRUE`` (default) or ``FALSE``, provide a         |
|                | confidence interval for the estimated marginal     |
|                | means                                              |
+----------------+----------------------------------------------------+
| ``ciWidthEmm`` | a number between 50 and 99.9 (default: 95)         |
|                | specifying the confidence interval width for the   |
|                | estimated marginal means                           |
+----------------+----------------------------------------------------+
| ``emmPlots``   | ``TRUE`` (default) or ``FALSE``, provide estimated |
|                | marginal means plots                               |
+----------------+----------------------------------------------------+
| ``emmTables``  | ``TRUE`` or ``FALSE`` (default), provide estimated |
|                | marginal means tables                              |
+----------------+----------------------------------------------------+
| ``emmWeights`` | ``TRUE`` (default) or ``FALSE``, weigh each cell   |
|                | equally or weigh them according to the cell        |
|                | frequency                                          |
+----------------+----------------------------------------------------+

Output
------

A results object containing:

===================== ==================================
``results$modelFit``  a table
``results$modelComp`` a table
``results$models``    an array of model specific results
===================== ==================================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$modelFit$asDF``

``as.data.frame(results$modelFit)``

Examples
--------

.. code-block:: r

   data('mtcars')

   tab <- table('gear'=mtcars$gear, 'cyl'=mtcars$cyl)
   dat <- as.data.frame(tab)

   logLinear(data = dat, factors = vars(gear, cyl),  counts = Freq,
             blocks = list(list("gear", "cyl", c("gear", "cyl"))),
             refLevels = list(
                 list(var="gear", ref="3"),
                 list(var="cyl", ref="4")))

   #
   #  LOG-LINEAR REGRESSION
   #
   #  Model Fit Measures
   #  ---------------------------------------
   #    Model    Deviance    AIC     R²-McF
   #  ---------------------------------------
   #        1    4.12e-10    41.4     1.000
   #  ---------------------------------------
   #
   #
   #  MODEL SPECIFIC RESULTS
   #
   #  MODEL 1
   #
   #  Model Coefficients
   #  ------------------------------------------------------------------
   #    Predictor          Estimate     SE          Z            p
   #  ------------------------------------------------------------------
   #    Intercept          -4.71e-16        1.00    -4.71e-16    1.000
   #    gear:
   #    4 – 3                  2.079        1.06        1.961    0.050
   #    5 – 3                  0.693        1.22        0.566    0.571
   #    cyl:
   #    6 – 4                  0.693        1.22        0.566    0.571
   #    8 – 4                  2.485        1.04        2.387    0.017
   #    gear:cyl:
   #    (4 – 3):(6 – 4)       -1.386        1.37       -1.012    0.311
   #    (5 – 3):(6 – 4)       -1.386        1.73       -0.800    0.423
   #    (4 – 3):(8 – 4)      -26.867    42247.17    -6.36e -4    0.999
   #    (5 – 3):(8 – 4)       -2.485        1.44       -1.722    0.085
   #  ------------------------------------------------------------------
   #
   #

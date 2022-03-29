.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

===========================================
Ordinal Logistic Regression (``logRegOrd``)
===========================================

Description
-----------

Ordinal Logistic Regression

Usage
-----

.. code-block:: R

   logRegOrd(
     data,
     dep,
     covs = NULL,
     factors = NULL,
     blocks = list(list()),
     refLevels = NULL,
     modelTest = FALSE,
     dev = TRUE,
     aic = TRUE,
     bic = FALSE,
     pseudoR2 = list("r2mf"),
     omni = FALSE,
     thres = FALSE,
     ci = FALSE,
     ciWidth = 95,
     OR = FALSE,
     ciOR = FALSE,
     ciWidthOR = 95
   )

Arguments
---------

+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``data``      | the data as a data frame                                                                                                                    |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``dep``       | a string naming the dependent variable from ``data``, variable must be a factor                                                             |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``covs``      | a vector of strings naming the covariates from ``data``                                                                                     |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``factors``   | a vector of strings naming the fixed factors from ``data``                                                                                  |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``blocks``    | a list containing vectors of strings that name the predictors that are added to the model. The elements are added to the model according to |
|               | their order in the list                                                                                                                     |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``refLevels`` | a list of lists specifying reference levels of the dependent variable and all the factors                                                   |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``modelTest`` | ``TRUE`` or ``FALSE`` (default), provide the model comparison between the models and the NULL model                                         |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``dev``       | ``TRUE`` (default) or ``FALSE``, provide the deviance (or -2LogLikelihood) for the models                                                   |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``aic``       | ``TRUE`` (default) or ``FALSE``, provide Aikaike's Information Criterion (AIC) for the models                                               |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``bic``       | ``TRUE`` or ``FALSE`` (default), provide Bayesian Information Criterion (BIC) for the models                                                |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``pseudoR2``  | one or more of ``'r2mf'``, ``'r2cs'``, or ``'r2n'``; use McFadden's, Cox & Snell, and Nagelkerke pseudo-R², respectively                    |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``omni``      | ``TRUE`` or ``FALSE`` (default), provide the omnibus likelihood ratio tests for the predictors                                              |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``thres``     | ``TRUE`` or ``FALSE`` (default), provide the thresholds that are used as cut-off scores for the levels of the dependent variable            |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``ci``        | ``TRUE`` or ``FALSE`` (default), provide a confidence interval for the model coefficient estimates                                          |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``ciWidth``   | a number between 50 and 99.9 (default: 95) specifying the confidence interval width                                                         |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``OR``        | ``TRUE`` or ``FALSE`` (default), provide the exponential of the log-odds ratio estimate, or the odds ratio estimate                         |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``ciOR``      | ``TRUE`` or ``FALSE`` (default), provide a confidence interval for the model coefficient odds ratio estimates                               |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| ``ciWidthOR`` | a number between 50 and 99.9 (default: 95) specifying the confidence interval width                                                         |
+---------------+---------------------------------------------------------------------------------------------------------------------------------------------+

Output
------

A results object containing:

===================== ==================================
``results$modelFit``  a table
``results$modelComp`` a table
``results$models``    an array of model specific results
===================== ==================================

Tables can be converted to data frames with ``asDF`` or ``as.data.frame()``. For example:

``results$modelFit$asDF``

``as.data.frame(results$modelFit)``

Examples
--------

.. code-block:: R

   set.seed(1337)

   y <- factor(sample(1:3, 100, replace = TRUE))
   x1 <- rnorm(100)
   x2 <- rnorm(100)

   df <- data.frame(y=y, x1=x1, x2=x2)

   logRegOrd(data = df, dep = y,
             covs = vars(x1, x2),
             blocks = list(list("x1", "x2")))

   #
   #  ORDINAL LOGISTIC REGRESSION
   #
   #  Model Fit Measures
   #  ---------------------------------------
   #    Model    Deviance    AIC    R²-McF
   #  ---------------------------------------
   #        1         218    226    5.68e-4
   #  ---------------------------------------
   #
   #
   #  MODEL SPECIFIC RESULTS
   #
   #  MODEL 1
   #
   #  Model Coefficients
   #  ----------------------------------------------------
   #    Predictor    Estimate    SE       Z        p
   #  ----------------------------------------------------
   #    x1             0.0579    0.193    0.300    0.764
   #    x2             0.0330    0.172    0.192    0.848
   #  ----------------------------------------------------
   #
   #

.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

============================================
Binomial Logistic Regression (``logRegBin``)
============================================

Description
-----------

Binomial Logistic Regression

Usage
-----

.. code-block:: r

   logRegBin(
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
     ci = FALSE,
     ciWidth = 95,
     OR = FALSE,
     ciOR = FALSE,
     ciWidthOR = 95,
     emMeans = list(list()),
     ciEmm = TRUE,
     ciWidthEmm = 95,
     emmPlots = TRUE,
     emmTables = FALSE,
     emmWeights = TRUE,
     class = FALSE,
     acc = FALSE,
     spec = FALSE,
     sens = FALSE,
     auc = FALSE,
     rocPlot = FALSE,
     cutOff = 0.5,
     cutOffPlot = FALSE,
     collin = FALSE,
     boxTidwell = FALSE,
     cooks = FALSE
   )

Arguments
---------

+----------------+----------------------------------------------------+
| ``data``       | the data as a data frame                           |
+----------------+----------------------------------------------------+
| ``dep``        | a string naming the dependent variable from        |
|                | ``data``, variable must be a factor                |
+----------------+----------------------------------------------------+
| ``covs``       | a vector of strings naming the covariates from     |
|                | ``data``                                           |
+----------------+----------------------------------------------------+
| ``factors``    | a vector of strings naming the fixed factors from  |
|                | ``data``                                           |
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
| ``OR``         | ``TRUE`` or ``FALSE`` (default), provide the       |
|                | exponential of the log-odds ratio estimate, or the |
|                | odds ratio estimate                                |
+----------------+----------------------------------------------------+
| ``ciOR``       | ``TRUE`` or ``FALSE`` (default), provide a         |
|                | confidence interval for the model coefficient odds |
|                | ratio estimates                                    |
+----------------+----------------------------------------------------+
| ``ciWidthOR``  | a number between 50 and 99.9 (default: 95)         |
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
| ``class``      | ``TRUE`` or ``FALSE`` (default), provide a         |
|                | predicted classification table (or confusion       |
|                | matrix)                                            |
+----------------+----------------------------------------------------+
| ``acc``        | ``TRUE`` or ``FALSE`` (default), provide the       |
|                | predicted accuracy of outcomes grouped by the      |
|                | cut-off value                                      |
+----------------+----------------------------------------------------+
| ``spec``       | ``TRUE`` or ``FALSE`` (default), provide the       |
|                | predicted specificity of outcomes grouped by the   |
|                | cut-off value                                      |
+----------------+----------------------------------------------------+
| ``sens``       | ``TRUE`` or ``FALSE`` (default), provide the       |
|                | predicted sensitivity of outcomes grouped by the   |
|                | cut-off value                                      |
+----------------+----------------------------------------------------+
| ``auc``        | ``TRUE`` or ``FALSE`` (default), provide the rea   |
|                | under the ROC curve (AUC)                          |
+----------------+----------------------------------------------------+
| ``rocPlot``    | ``TRUE`` or ``FALSE`` (default), provide a ROC     |
|                | curve plot                                         |
+----------------+----------------------------------------------------+
| ``cutOff``     | ``TRUE`` or ``FALSE`` (default), set a cut-off     |
|                | used for the predictions                           |
+----------------+----------------------------------------------------+
| ``cutOffPlot`` | ``TRUE`` or ``FALSE`` (default), provide a cut-off |
|                | plot                                               |
+----------------+----------------------------------------------------+
| ``collin``     | ``TRUE`` or ``FALSE`` (default), provide VIF and   |
|                | tolerence collinearity statistics                  |
+----------------+----------------------------------------------------+
| ``boxTidwell`` | ``TRUE`` or ``FALSE`` (default), provide           |
|                | Box-Tidwell test for linearity of the logit        |
+----------------+----------------------------------------------------+
| ``cooks``      | ``TRUE`` or ``FALSE`` (default), provide summary   |
|                | statistics for the Cook's distance                 |
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

   data('birthwt', package='MASS')

   dat <- data.frame(
               low = factor(birthwt$low),
               age = birthwt$age,
               bwt = birthwt$bwt)

   logRegBin(data = dat, dep = low,
             covs = vars(age, bwt),
             blocks = list(list("age", "bwt")),
             refLevels = list(list(var="low", ref="0")))

   #
   #  BINOMIAL LOGISTIC REGRESSION
   #
   #  Model Fit Measures
   #  ---------------------------------------
   #    Model    Deviance    AIC     R²-McF
   #  ---------------------------------------
   #        1     4.97e-7    6.00     1.000
   #  ---------------------------------------
   #
   #
   #  MODEL SPECIFIC RESULTS
   #
   #  MODEL 1
   #
   #  Model Coefficients
   #  ------------------------------------------------------------
   #    Predictor    Estimate      SE          Z           p
   #  ------------------------------------------------------------
   #    Intercept    2974.73225    218237.2      0.0136    0.989
   #    age            -0.00653       482.7    -1.35e-5    1.000
   #    bwt            -1.18532        87.0     -0.0136    0.989
   #  ------------------------------------------------------------
   #    Note. Estimates represent the log odds of "low = 1"
   #    vs. "low = 0"
   #
   #

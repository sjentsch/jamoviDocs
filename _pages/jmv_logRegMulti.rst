.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

=================================================
Multinomial Logistic Regression (``logRegMulti``)
=================================================

Description
-----------

Multinomial Logistic Regression

Usage
-----

.. code-block:: R

   logRegMulti(
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
     emmWeights = TRUE
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

.. code-block:: R

   data('birthwt', package='MASS')

   dat <- data.frame(
               race = factor(birthwt$race),
               age = birthwt$age,
               low = factor(birthwt$low))

   logRegMulti(data = dat, dep = race,
               covs = age, factors = low,
               blocks = list(list("age", "low")),
               refLevels = list(
                   list(var="race", ref="1"),
                   list(var="low", ref="0")))

   #
   #  MULTINOMIAL LOGISTIC REGRESSION
   #
   #  Model Fit Measures
   #  --------------------------------------
   #    Model    Deviance    AIC    R²-McF
   #  --------------------------------------
   #        1         360    372    0.0333
   #  --------------------------------------
   #
   #
   #  MODEL SPECIFIC RESULTS
   #
   #  MODEL 1
   #
   #  Model Coefficients
   #  ---------------------------------------------------------------
   #    race     Predictor    Estimate    SE        Z         p
   #  ---------------------------------------------------------------
   #    2 - 1    Intercept      0.8155    1.1186     0.729    0.466
   #             age           -0.1038    0.0487    -2.131    0.033
   #             low:
   #             1 – 0          0.7527    0.4700     1.601    0.109
   #    3 - 1    Intercept      1.0123    0.7798     1.298    0.194
   #             age           -0.0663    0.0324    -2.047    0.041
   #             low:
   #             1 – 0          0.5677    0.3522     1.612    0.107
   #  ---------------------------------------------------------------
   #
   #

.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

==============================
Linear Regression (``linReg``)
==============================

Description
-----------

Linear regression is used to explore the relationship between a
continuous dependent variable, and one or more continuous and/or
categorical explanatory variables. Other statistical methods, such as
ANOVA and ANCOVA, are in reality just forms of linear regression.

Usage
-----

.. code-block:: R

   linReg(
     data,
     dep,
     covs = NULL,
     factors = NULL,
     blocks = list(list()),
     refLevels = NULL,
     intercept = "refLevel",
     r = TRUE,
     r2 = TRUE,
     r2Adj = FALSE,
     aic = FALSE,
     bic = FALSE,
     rmse = FALSE,
     modelTest = FALSE,
     anova = FALSE,
     ci = FALSE,
     ciWidth = 95,
     stdEst = FALSE,
     ciStdEst = FALSE,
     ciWidthStdEst = 95,
     coefPlot = FALSE,
     norm = FALSE,
     qqPlot = FALSE,
     resPlots = FALSE,
     durbin = FALSE,
     collin = FALSE,
     cooks = FALSE,
     emMeans = list(list()),
     ciEmm = TRUE,
     ciWidthEmm = 95,
     emmPlots = TRUE,
     emmTables = FALSE,
     emmWeights = TRUE
   )

Arguments
---------

+-------------------+-------------------------------------------------+
| ``data``          | the data as a data frame                        |
+-------------------+-------------------------------------------------+
| ``dep``           | the dependent variable from ``data``, variable  |
|                   | must be numeric                                 |
+-------------------+-------------------------------------------------+
| ``covs``          | the covariates from ``data``                    |
+-------------------+-------------------------------------------------+
| ``factors``       | the fixed factors from ``data``                 |
+-------------------+-------------------------------------------------+
| ``blocks``        | a list containing vectors of strings that name  |
|                   | the predictors that are added to the model. The |
|                   | elements are added to the model according to    |
|                   | their order in the list                         |
+-------------------+-------------------------------------------------+
| ``refLevels``     | a list of lists specifying reference levels of  |
|                   | the dependent variable and all the factors      |
+-------------------+-------------------------------------------------+
| ``intercept``     | ``'refLevel'`` (default) or ``'grandMean'``,    |
|                   | coding of the intercept. Either creates         |
|                   | contrast so that the intercept represents the   |
|                   | reference level or the grand mean               |
+-------------------+-------------------------------------------------+
| ``r``             | ``TRUE`` (default) or ``FALSE``, provide the    |
|                   | statistical measure ``R`` for the models        |
+-------------------+-------------------------------------------------+
| ``r2``            | ``TRUE`` (default) or ``FALSE``, provide the    |
|                   | statistical measure ``R-squared`` for the       |
|                   | models                                          |
+-------------------+-------------------------------------------------+
| ``r2Adj``         | ``TRUE`` or ``FALSE`` (default), provide the    |
|                   | statistical measure ``adjusted R-squared`` for  |
|                   | the models                                      |
+-------------------+-------------------------------------------------+
| ``aic``           | ``TRUE`` or ``FALSE`` (default), provide        |
|                   | Aikaike's Information Criterion (AIC) for the   |
|                   | models                                          |
+-------------------+-------------------------------------------------+
| ``bic``           | ``TRUE`` or ``FALSE`` (default), provide        |
|                   | Bayesian Information Criterion (BIC) for the    |
|                   | models                                          |
+-------------------+-------------------------------------------------+
| ``rmse``          | ``TRUE`` or ``FALSE`` (default), provide RMSE   |
|                   | for the models                                  |
+-------------------+-------------------------------------------------+
| ``modelTest``     | ``TRUE`` (default) or ``FALSE``, provide the    |
|                   | model comparison between the models and the     |
|                   | NULL model                                      |
+-------------------+-------------------------------------------------+
| ``anova``         | ``TRUE`` or ``FALSE`` (default), provide the    |
|                   | omnibus ANOVA test for the predictors           |
+-------------------+-------------------------------------------------+
| ``ci``            | ``TRUE`` or ``FALSE`` (default), provide a      |
|                   | confidence interval for the model coefficients  |
+-------------------+-------------------------------------------------+
| ``ciWidth``       | a number between 50 and 99.9 (default: 95)      |
|                   | specifying the confidence interval width        |
+-------------------+-------------------------------------------------+
| ``stdEst``        | ``TRUE`` or ``FALSE`` (default), provide a      |
|                   | standardized estimate for the model             |
|                   | coefficients                                    |
+-------------------+-------------------------------------------------+
| ``ciStdEst``      | ``TRUE`` or ``FALSE`` (default), provide a      |
|                   | confidence interval for the model coefficient   |
|                   | standardized estimates                          |
+-------------------+-------------------------------------------------+
| ``ciWidthStdEst`` | a number between 50 and 99.9 (default: 95)      |
|                   | specifying the confidence interval width        |
+-------------------+-------------------------------------------------+
| ``coefPlot``      | ``TRUE`` or ``FALSE`` (default), provide a      |
|                   | coefficient plot where for each predictor the   |
|                   | estimated coefficient and confidence intervals  |
|                   | are plotted.                                    |
+-------------------+-------------------------------------------------+
| ``norm``          | ``TRUE`` or ``FALSE`` (default), perform a      |
|                   | Shapiro-Wilk test on the residuals              |
+-------------------+-------------------------------------------------+
| ``qqPlot``        | ``TRUE`` or ``FALSE`` (default), provide a Q-Q  |
|                   | plot of residuals                               |
+-------------------+-------------------------------------------------+
| ``resPlots``      | ``TRUE`` or ``FALSE`` (default), provide        |
|                   | residual plots where the dependent variable and |
|                   | each covariate is plotted against the           |
|                   | standardized residuals.                         |
+-------------------+-------------------------------------------------+
| ``durbin``        | ``TRUE`` or ``FALSE`` (default), provide        |
|                   | results of the Durbin- Watson test for          |
|                   | autocorrelation                                 |
+-------------------+-------------------------------------------------+
| ``collin``        | ``TRUE`` or ``FALSE`` (default), provide VIF    |
|                   | and tolerence collinearity statistics           |
+-------------------+-------------------------------------------------+
| ``cooks``         | ``TRUE`` or ``FALSE`` (default), provide        |
|                   | summary statistics for the Cook's distance      |
+-------------------+-------------------------------------------------+
| ``emMeans``       | a formula containing the terms to estimate      |
|                   | marginal means for, supports up to three        |
|                   | variables per term                              |
+-------------------+-------------------------------------------------+
| ``ciEmm``         | ``TRUE`` (default) or ``FALSE``, provide a      |
|                   | confidence interval for the estimated marginal  |
|                   | means                                           |
+-------------------+-------------------------------------------------+
| ``ciWidthEmm``    | a number between 50 and 99.9 (default: 95)      |
|                   | specifying the confidence interval width for    |
|                   | the estimated marginal means                    |
+-------------------+-------------------------------------------------+
| ``emmPlots``      | ``TRUE`` (default) or ``FALSE``, provide        |
|                   | estimated marginal means plots                  |
+-------------------+-------------------------------------------------+
| ``emmTables``     | ``TRUE`` or ``FALSE`` (default), provide        |
|                   | estimated marginal means tables                 |
+-------------------+-------------------------------------------------+
| ``emmWeights``    | ``TRUE`` (default) or ``FALSE``, weigh each     |
|                   | cell equally or weigh them according to the     |
|                   | cell frequency                                  |
+-------------------+-------------------------------------------------+

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

   data('Prestige', package='carData')

   linReg(data = Prestige, dep = income,
          covs = vars(education, prestige, women),
          blocks = list(list('education', 'prestige', 'women')))

   #
   #  LINEAR REGRESSION
   #
   #  Model Fit Measures
   #  ---------------------------
   #    Model    R        R²
   #  ---------------------------
   #        1    0.802    0.643
   #  ---------------------------
   #
   #
   #  MODEL SPECIFIC RESULTS
   #
   #  MODEL 1
   #
   #
   #  Model Coefficients
   #  --------------------------------------------------------
   #    Predictor    Estimate    SE         t         p
   #  --------------------------------------------------------
   #    Intercept      -253.8    1086.16    -0.234     0.816
   #    women           -50.9       8.56    -5.948    < .001
   #    prestige        141.4      29.91     4.729    < .001
   #    education       177.2     187.63     0.944     0.347
   #  --------------------------------------------------------
   #

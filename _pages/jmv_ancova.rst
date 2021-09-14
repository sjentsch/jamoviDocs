.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

===================
ANCOVA (``ancova``)
===================

Description
-----------

The Analysis of Covariance (ANCOVA) is used to explore the relationship
between a continuous dependent variable, one or more categorical
explanatory variables, and one or more continuous explanatory variables
(or covariates). It is essentially the same analysis as ANOVA, but with
the addition of covariates.

Usage
-----

.. code-block:: r

   ancova(
     data,
     dep,
     factors = NULL,
     covs = NULL,
     effectSize = NULL,
     modelTest = FALSE,
     modelTerms = NULL,
     ss = "3",
     homo = FALSE,
     norm = FALSE,
     qq = FALSE,
     contrasts = NULL,
     postHoc = NULL,
     postHocCorr = list("tukey"),
     postHocES = list(),
     postHocEsCi = FALSE,
     postHocEsCiWidth = 95,
     emMeans = list(list()),
     emmPlots = TRUE,
     emmPlotData = FALSE,
     emmPlotError = "ci",
     emmTables = FALSE,
     emmWeights = TRUE,
     ciWidthEmm = 95,
     formula
   )

Arguments
---------

+----------------------+----------------------------------------------+
| ``data``             | the data as a data frame                     |
+----------------------+----------------------------------------------+
| ``dep``              | the dependent variable from ``data``,        |
|                      | variable must be numeric (not necessary when |
|                      | providing a formula, see examples)           |
+----------------------+----------------------------------------------+
| ``factors``          | the explanatory factors in ``data`` (not     |
|                      | necessary when providing a formula, see      |
|                      | examples)                                    |
+----------------------+----------------------------------------------+
| ``covs``             | the explanatory covariates (not necessary    |
|                      | when providing a formula, see examples)      |
+----------------------+----------------------------------------------+
| ``effectSize``       | one or more of ``'eta'``, ``'partEta'``, or  |
|                      | ``'omega'``; use eta², partial eta², and     |
|                      | omega² effect sizes, respectively            |
+----------------------+----------------------------------------------+
| ``modelTest``        | ``TRUE`` or ``FALSE`` (default); perform an  |
|                      | overall model test                           |
+----------------------+----------------------------------------------+
| ``modelTerms``       | a formula describing the terms to go into    |
|                      | the model (not necessary when providing a    |
|                      | formula, see examples)                       |
+----------------------+----------------------------------------------+
| ``ss``               | ``'1'``, ``'2'`` or ``'3'`` (default), the   |
|                      | sum of squares to use                        |
+----------------------+----------------------------------------------+
| ``homo``             | ``TRUE`` or ``FALSE`` (default), perform     |
|                      | homogeneity tests                            |
+----------------------+----------------------------------------------+
| ``norm``             | ``TRUE`` or ``FALSE`` (default), perform     |
|                      | Shapiro-Wilk tests of normality              |
+----------------------+----------------------------------------------+
| ``qq``               | ``TRUE`` or ``FALSE`` (default), provide a   |
|                      | Q-Q plot of residuals                        |
+----------------------+----------------------------------------------+
| ``contrasts``        | a list of lists specifying the factor and    |
|                      | type of contrast to use, one of              |
|                      | ``'deviation'``, ``'simple'``,               |
|                      | ``'difference'``, ``'helmert'``,             |
|                      | ``'repeated'`` or ``'polynomial'``           |
+----------------------+----------------------------------------------+
| ``postHoc``          | a formula containing the terms to perform    |
|                      | post-hoc tests on (see the examples)         |
+----------------------+----------------------------------------------+
| ``postHocCorr``      | one or more of ``'none'``, ``'tukey'``,      |
|                      | ``'scheffe'``, ``'bonf'``, or ``'holm'``;    |
|                      | provide no, Tukey, Scheffe, Bonferroni, and  |
|                      | Holm Post Hoc corrections respectively       |
+----------------------+----------------------------------------------+
| ``postHocES``        | a possible value of ``'d'``; provide cohen's |
|                      | d measure of effect size for the post-hoc    |
|                      | tests                                        |
+----------------------+----------------------------------------------+
| ``postHocEsCi``      | ``TRUE`` or ``FALSE`` (default), provide     |
|                      | confidence intervals for the post-hoc effect |
|                      | sizes                                        |
+----------------------+----------------------------------------------+
| ``postHocEsCiWidth`` | a number between 50 and 99.9 (default: 95),  |
|                      | the width of confidence intervals for the    |
|                      | post-hoc effect sizes                        |
+----------------------+----------------------------------------------+
| ``emMeans``          | a formula containing the terms to estimate   |
|                      | marginal means for (see the examples)        |
+----------------------+----------------------------------------------+
| ``emmPlots``         | ``TRUE`` (default) or ``FALSE``, provide     |
|                      | estimated marginal means plots               |
+----------------------+----------------------------------------------+
| ``emmPlotData``      | ``TRUE`` or ``FALSE`` (default), plot the    |
|                      | data on top of the marginal means            |
+----------------------+----------------------------------------------+
| ``emmPlotError``     | ``'none'``, ``'ci'`` (default), or ``'se'``. |
|                      | Use no error bars, use confidence intervals, |
|                      | or use standard errors on the marginal mean  |
|                      | plots, respectively                          |
+----------------------+----------------------------------------------+
| ``emmTables``        | ``TRUE`` or ``FALSE`` (default), provide     |
|                      | estimated marginal means tables              |
+----------------------+----------------------------------------------+
| ``emmWeights``       | ``TRUE`` (default) or ``FALSE``, weigh each  |
|                      | cell equally or weigh them according to the  |
|                      | cell frequency                               |
+----------------------+----------------------------------------------+
| ``ciWidthEmm``       | a number between 50 and 99.9 (default: 95)   |
|                      | specifying the confidence interval width for |
|                      | the estimated marginal means                 |
+----------------------+----------------------------------------------+
| ``formula``          | (optional) the formula to use, see the       |
|                      | examples                                     |
+----------------------+----------------------------------------------+

Output
------

A results object containing:

+-------------------------+------------------------------------+
| ``results$main``        | a table of ANCOVA results          |
+-------------------------+------------------------------------+
| ``results$model``       | The underlying ``aov`` object      |
+-------------------------+------------------------------------+
| ``results$assump$homo`` | a table of homogeneity tests       |
+-------------------------+------------------------------------+
| ``results$assump$norm`` | a table of normality tests         |
+-------------------------+------------------------------------+
| ``results$assump$qq``   | a q-q plot                         |
+-------------------------+------------------------------------+
| ``results$contrasts``   | an array of contrasts tables       |
+-------------------------+------------------------------------+
| ``results$postHoc``     | an array of post-hoc tables        |
+-------------------------+------------------------------------+
| ``results$emm``         | an array of the estimated marginal |
|                         | means plots + tables               |
+-------------------------+------------------------------------+

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$main$asDF``

``as.data.frame(results$main)``

Examples
--------

.. code-block:: r

   data('ToothGrowth')

   ancova(formula = len ~ supp + dose, data = ToothGrowth)

   #
   #  ANCOVA
   #
   #  ANCOVA
   #  -----------------------------------------------------------------------
   #                 Sum of Squares    df    Mean Square    F        p
   #  -----------------------------------------------------------------------
   #    supp                    205     1          205.4     11.4     0.001
   #    dose                   2224     1         2224.3    124.0    < .001
   #    Residuals              1023    57           17.9
   #  -----------------------------------------------------------------------
   #

   ancova(
       formula = len ~ supp + dose,
       data = ToothGrowth,
       postHoc = ~ supp,
       emMeans = ~ supp)

.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

=================
ANOVA (``ANOVA``)
=================

Description
-----------

The Analysis of Variance (ANOVA) is used to explore the relationship
between a continuous dependent variable, and one or more categorical
explanatory variables.

Usage
-----

.. code-block:: r

   ANOVA(
     data,
     dep,
     factors = NULL,
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

Details
-------

ANOVA assumes that the residuals are normally distributed, and that the
variances of all groups are equal. If one is unwilling to assume that
the variances are equal, then a Welch's test can be used instead
(However, the Welch's test does not support more than one explanatory
factor). Alternatively, if one is unwilling to assume that the data is
normally distributed, a non-parametric approach (such as Kruskal-Wallis)
can be used.

Output
------

A results object containing:

+-------------------------+----------------------------------------+
| ``results$main``        | a table of ANOVA results               |
+-------------------------+----------------------------------------+
| ``results$model``       | the underlying ``aov`` object          |
+-------------------------+----------------------------------------+
| ``results$assump$homo`` | a table of homogeneity tests           |
+-------------------------+----------------------------------------+
| ``results$assump$norm`` | a table of normality tests             |
+-------------------------+----------------------------------------+
| ``results$assump$qq``   | a q-q plot                             |
+-------------------------+----------------------------------------+
| ``results$contrasts``   | an array of contrasts tables           |
+-------------------------+----------------------------------------+
| ``results$postHoc``     | an array of post-hoc tables            |
+-------------------------+----------------------------------------+
| ``results$emm``         | an array of the estimated marginal     |
|                         | means plots + tables                   |
+-------------------------+----------------------------------------+

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$main$asDF``

``as.data.frame(results$main)``

Examples
--------

.. code-block:: r

   data('ToothGrowth')

   ANOVA(formula = len ~ dose * supp, data = ToothGrowth)

   #
   #  ANOVA
   #
   #  ANOVA
   #  -----------------------------------------------------------------------
   #                 Sum of Squares    df    Mean Square    F        p
   #  -----------------------------------------------------------------------
   #    dose                   2426     2         1213.2    92.00    < .001
   #    supp                    205     1          205.4    15.57    < .001
   #    dose:supp               108     2           54.2     4.11     0.022
   #    Residuals               712    54           13.2
   #  -----------------------------------------------------------------------
   #

   ANOVA(
       formula = len ~ dose * supp,
       data = ToothGrowth,
       emMeans = ~ supp + dose:supp, # est. marginal means for supp and dose:supp
       emmPlots = TRUE,              # produce plots of those marginal means
       emmTables = TRUE)             # produce tables of those marginal means

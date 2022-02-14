.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

=============================
One-Way ANOVA (``anovaOneW``)
=============================

Description
-----------

The Analysis of Variance (ANOVA) is used to explore the relationship
between a continuous dependent variable, and one or more categorical
explanatory variables. This 'One-Way ANOVA' is a simplified version of
the 'normal' ANOVA, allowing only a single explanatory factor, however
also providing a Welch's ANOVA. The Welch's ANOVA has the advantage that
it need not assume that the variances of all groups are equal.

Usage
-----

.. code-block:: R

   anovaOneW(
     data,
     deps,
     group,
     welchs = TRUE,
     fishers = FALSE,
     miss = "perAnalysis",
     desc = FALSE,
     descPlot = FALSE,
     norm = FALSE,
     qq = FALSE,
     eqv = FALSE,
     phMethod = "none",
     phMeanDif = TRUE,
     phSig = TRUE,
     phTest = FALSE,
     phFlag = FALSE,
     formula
   )

Arguments
---------

+---------------+-----------------------------------------------------+
| ``data``      | the data as a data frame                            |
+---------------+-----------------------------------------------------+
| ``deps``      | a string naming the dependent variables in ``data`` |
+---------------+-----------------------------------------------------+
| ``group``     | a string naming the grouping or independent         |
|               | variable in ``data``                                |
+---------------+-----------------------------------------------------+
| ``welchs``    | ``TRUE`` (default) or ``FALSE``, perform Welch's    |
|               | one-way ANOVA which does not assume equal variances |
+---------------+-----------------------------------------------------+
| ``fishers``   | ``TRUE`` or ``FALSE`` (default), perform Fisher's   |
|               | one-way ANOVA which assumes equal variances         |
+---------------+-----------------------------------------------------+
| ``miss``      | ``'perAnalysis'`` or ``'listwise'``, how to handle  |
|               | missing values; ``'perAnalysis'`` excludes missing  |
|               | values for individual dependent variables,          |
|               | ``'listwise'`` excludes a row from all analyses if  |
|               | one of its entries is missing.                      |
+---------------+-----------------------------------------------------+
| ``desc``      | ``TRUE`` or ``FALSE`` (default), provide            |
|               | descriptive statistics                              |
+---------------+-----------------------------------------------------+
| ``descPlot``  | ``TRUE`` or ``FALSE`` (default), provide            |
|               | descriptive plots                                   |
+---------------+-----------------------------------------------------+
| ``norm``      | ``TRUE`` or ``FALSE`` (default), perform            |
|               | Shapiro-Wilk test of normality                      |
+---------------+-----------------------------------------------------+
| ``qq``        | ``TRUE`` or ``FALSE`` (default), provide a Q-Q plot |
|               | of residuals                                        |
+---------------+-----------------------------------------------------+
| ``eqv``       | ``TRUE`` or ``FALSE`` (default), perform Levene's   |
|               | test for homogeneity of variances                   |
+---------------+-----------------------------------------------------+
| ``phMethod``  | ``'none'``, ``'gamesHowell'`` or ``'tukey'``, which |
|               | post-hoc tests to provide; ``'none'`` shows no      |
|               | post-hoc tests, ``'gamesHowell'`` shows             |
|               | Games-Howell post-hoc tests where no equivalence of |
|               | variances is assumed, and ``'tukey'`` shows Tukey   |
|               | post-hoc tests where equivalence of variances is    |
|               | assumed                                             |
+---------------+-----------------------------------------------------+
| ``phMeanDif`` | ``TRUE`` (default) or ``FALSE``, provide mean       |
|               | differences for post-hoc tests                      |
+---------------+-----------------------------------------------------+
| ``phSig``     | ``TRUE`` (default) or ``FALSE``, provide            |
|               | significance levels for post-hoc tests              |
+---------------+-----------------------------------------------------+
| ``phTest``    | ``TRUE`` or ``FALSE`` (default), provide test       |
|               | results (t-value and degrees of freedom) for        |
|               | post-hoc tests                                      |
+---------------+-----------------------------------------------------+
| ``phFlag``    | ``TRUE`` or ``FALSE`` (default), flag significant   |
|               | post-hoc comparisons                                |
+---------------+-----------------------------------------------------+
| ``formula``   | (optional) the formula to use, see the examples     |
+---------------+-----------------------------------------------------+

Details
-------

For convenience, this method allows specifying multiple dependent
variables, resulting in multiple independent tests.

Note that the Welch's ANOVA is the same procedure as the Welch's
independent samples t-test.

Output
------

A results object containing:

======================= =========================================
``results$anova``       a table of the test results
``results$desc``        a table containing the group descriptives
``results$assump$norm`` a table containing the normality tests
``results$assump$eqv``  a table of homogeneity of variances tests
``results$plots``       an array of groups of plots
``results$postHoc``     an array of post-hoc tables
======================= =========================================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$anova$asDF``

``as.data.frame(results$anova)``

Examples
--------

.. code-block:: R

   data('ToothGrowth')
   dat <- ToothGrowth
   dat$dose <- factor(dat$dose)

   anovaOneW(formula = len ~ dose, data = dat)

   #
   #  ONE-WAY ANOVA
   #
   #  One-Way ANOVA (Welch's)
   #  ----------------------------------------
   #           F       df1    df2     p
   #  ----------------------------------------
   #    len    68.4      2    37.7    < .001
   #  ----------------------------------------
   #

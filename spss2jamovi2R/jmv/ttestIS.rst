.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

========================================
Independent Samples T-Test (``ttestIS``)
========================================

Description
-----------

The Student's Independent samples t-test (sometimes called a two-samples
t-test) is used to test the null hypothesis that two groups have the
same mean. A low p-value suggests that the null hypothesis is not true,
and therefore the group means are different.

Usage
-----

.. code-block:: r

   ttestIS(
     data,
     vars,
     group,
     students = TRUE,
     bf = FALSE,
     bfPrior = 0.707,
     welchs = FALSE,
     mann = FALSE,
     hypothesis = "different",
     norm = FALSE,
     qq = FALSE,
     eqv = FALSE,
     meanDiff = FALSE,
     ci = FALSE,
     ciWidth = 95,
     effectSize = FALSE,
     ciES = FALSE,
     ciWidthES = 95,
     desc = FALSE,
     plots = FALSE,
     miss = "perAnalysis",
     formula
   )

Arguments
---------

+----------------+----------------------------------------------------+
| ``data``       | the data as a data frame                           |
+----------------+----------------------------------------------------+
| ``vars``       | the dependent variables (not necessary when using  |
|                | a formula, see the examples)                       |
+----------------+----------------------------------------------------+
| ``group``      | the grouping variable with two levels (not         |
|                | necessary when using a formula, see the examples)  |
+----------------+----------------------------------------------------+
| ``students``   | ``TRUE`` (default) or ``FALSE``, perform Student's |
|                | t-tests                                            |
+----------------+----------------------------------------------------+
| ``bf``         | ``TRUE`` or ``FALSE`` (default), provide Bayes     |
|                | factors                                            |
+----------------+----------------------------------------------------+
| ``bfPrior``    | a number between 0.5 and 2 (default 0.707), the    |
|                | prior width to use in calculating Bayes factors    |
+----------------+----------------------------------------------------+
| ``welchs``     | ``TRUE`` or ``FALSE`` (default), perform Welch's   |
|                | t-tests                                            |
+----------------+----------------------------------------------------+
| ``mann``       | ``TRUE`` or ``FALSE`` (default), perform           |
|                | Mann-Whitney U tests                               |
+----------------+----------------------------------------------------+
| ``hypothesis`` | ``'different'`` (default), ``'oneGreater'`` or     |
|                | ``'twoGreater'``, the alternative hypothesis;      |
|                | group 1 different to group 2, group 1 greater than |
|                | group 2, and group 2 greater than group 1          |
|                | respectively                                       |
+----------------+----------------------------------------------------+
| ``norm``       | ``TRUE`` or ``FALSE`` (default), perform           |
|                | Shapiro-Wilk tests of normality                    |
+----------------+----------------------------------------------------+
| ``qq``         | ``TRUE`` or ``FALSE`` (default), provide Q-Q plots |
|                | of residuals                                       |
+----------------+----------------------------------------------------+
| ``eqv``        | ``TRUE`` or ``FALSE`` (default), perform Levene's  |
|                | tests for homogeneity of variances                 |
+----------------+----------------------------------------------------+
| ``meanDiff``   | ``TRUE`` or ``FALSE`` (default), provide means and |
|                | standard errors                                    |
+----------------+----------------------------------------------------+
| ``ci``         | ``TRUE`` or ``FALSE`` (default), provide           |
|                | confidence intervals                               |
+----------------+----------------------------------------------------+
| ``ciWidth``    | a number between 50 and 99.9 (default: 95), the    |
|                | width of confidence intervals                      |
+----------------+----------------------------------------------------+
| ``effectSize`` | ``TRUE`` or ``FALSE`` (default), provide effect    |
|                | sizes                                              |
+----------------+----------------------------------------------------+
| ``ciES``       | ``TRUE`` or ``FALSE`` (default), provide           |
|                | confidence intervals for the effect-sizes          |
+----------------+----------------------------------------------------+
| ``ciWidthES``  | a number between 50 and 99.9 (default: 95), the    |
|                | width of confidence intervals for the effect sizes |
+----------------+----------------------------------------------------+
| ``desc``       | ``TRUE`` or ``FALSE`` (default), provide           |
|                | descriptive statistics                             |
+----------------+----------------------------------------------------+
| ``plots``      | ``TRUE`` or ``FALSE`` (default), provide           |
|                | descriptive plots                                  |
+----------------+----------------------------------------------------+
| ``miss``       | ``'perAnalysis'`` or ``'listwise'``, how to handle |
|                | missing values; ``'perAnalysis'`` excludes missing |
|                | values for individual dependent variables,         |
|                | ``'listwise'`` excludes a row from all analyses if |
|                | one of its entries is missing.                     |
+----------------+----------------------------------------------------+
| ``formula``    | (optional) the formula to use, see the examples    |
+----------------+----------------------------------------------------+

Details
-------

The Student's independent t-test assumes that the data from each group
are from a normal distribution, and that the variances of these groups
are equal. If unwilling to assume the groups have equal variances, the
Welch's t-test can be used in it's place. If one is additionally
unwilling to assume the data from each group are from a normal
distribution, the non-parametric Mann-Whitney U test can be used instead
(However, note that the Mann-Whitney U test has a slightly different
null hypothesis; that the distributions of each group is equal).

Output
------

A results object containing:

+------------------------+-------------------------------------------+
| ``results$ttest``      | a table containing the t-test results     |
+------------------------+-------------------------------------------+
| ``results$assum$norm`` | a table containing the normality tests    |
+------------------------+-------------------------------------------+
| ``results$assum$eqv``  | a table containing the homogeneity of     |
|                        | variances tests                           |
+------------------------+-------------------------------------------+
| ``results$desc``       | a table containing the group descriptives |
+------------------------+-------------------------------------------+
| ``results$plots``      | an array of groups of plots               |
+------------------------+-------------------------------------------+

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$ttest$asDF``

``as.data.frame(results$ttest)``

Examples
--------

.. code-block:: r

   data('ToothGrowth')

   ttestIS(formula = len ~ supp, data = ToothGrowth)

   #
   #  INDEPENDENT SAMPLES T-TEST
   #
   #  Independent Samples T-Test
   #  ----------------------------------------------------
   #                          statistic    df      p
   #  ----------------------------------------------------
   #    len    Student's t         1.92    58.0    0.060
   #  ----------------------------------------------------
   #

.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

=================
One Sample T-Test
=================

(``ttestOneS``)
===============

Description
-----------

    The Student's One-sample t-test is used to test the null hypothesis that the true mean is equal to a particular value (typically zero). A low p-value
    suggests that the null hypothesis is not true, and therefore the true mean must be different from the test value. 
    
Usage
-----

.. code-block:: R

   ttestOneS(
     data,
     vars,
     students = TRUE,
     bf = FALSE,
     bfPrior = 0.707,
     wilcoxon = FALSE,
     testValue = 0,
     hypothesis = "dt",
     norm = FALSE,
     qq = FALSE,
     meanDiff = FALSE,
     ci = FALSE,
     ciWidth = 95,
     effectSize = FALSE,
     ciES = FALSE,
     ciWidthES = 95,
     desc = FALSE,
     plots = FALSE,
     miss = "perAnalysis",
     mann = FALSE
   )

Arguments
---------

+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``data``       | the data as a data frame                                                                                                                   |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``vars``       | a vector of strings naming the variables of interest in ``data``                                                                           |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``students``   | ``TRUE`` (default) or ``FALSE``, perform Student's t-tests                                                                                 |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``bf``         | ``TRUE`` or ``FALSE`` (default), provide Bayes factors                                                                                     |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``bfPrior``    | a number between 0.5 and 2.0 (default 0.707), the prior width to use in calculating Bayes factors                                          |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``wilcoxon``   | ``TRUE`` or ``FALSE`` (default), perform Wilcoxon signed rank tests                                                                        |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``testValue``  | a number specifying the value of the null hypothesis                                                                                       |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``hypothesis`` | ``'dt'`` (default), ``'gt'`` or ``'lt'``, the alternative hypothesis; different to ``testValue``, greater than ``testValue``, and less     |
|                | than ``testValue`` respectively                                                                                                            |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``norm``       | ``TRUE`` or ``FALSE`` (default), perform Shapiro-wilk tests of normality                                                                   |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``qq``         | ``TRUE`` or ``FALSE`` (default), provide a Q-Q plot of residuals                                                                           |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``meanDiff``   | ``TRUE`` or ``FALSE`` (default), provide means and standard deviations                                                                     |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``ci``         | ``TRUE`` or ``FALSE`` (default), provide confidence intervals for the mean difference                                                      |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``ciWidth``    | a number between 50 and 99.9 (default: 95), the width of confidence intervals                                                              |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``effectSize`` | ``TRUE`` or ``FALSE`` (default), provide Cohen's d effect sizes                                                                            |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``ciES``       | ``TRUE`` or ``FALSE`` (default), provide confidence intervals for the effect-sizes                                                         |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``ciWidthES``  | a number between 50 and 99.9 (default: 95), the width of confidence intervals for the effect sizes                                         |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``desc``       | ``TRUE`` or ``FALSE`` (default), provide descriptive statistics                                                                            |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``plots``      | ``TRUE`` or ``FALSE`` (default), provide descriptive plots                                                                                 |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| ``miss``       | ``'perAnalysis'`` or ``'listwise'``, how to handle missing values; ``'perAnalysis'`` excludes missing values for individual dependent      |
|                | variables, ``'listwise'`` excludes a row from all analyses if one of its entries is missing.                                               |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------+

Details
-------

    The Student's One-sample t-test assumes that the data are from a normal distribution – in the case that one is unwilling to assume this, the non-parametric
    Wilcoxon signed-rank can be used in it's place (however, note that the Wilcoxon signed-rank has a slightly different null hypothesis; that the *median* is
    equal to the test value).

Output
------

A results object containing:

+--------------------------+-----------------------------------------------+
| ``results$ttest``        | a table containing the t-test results         |
+--------------------------+-----------------------------------------------+
| ``results$normality``    | a table containing the normality test results |
+--------------------------+-----------------------------------------------+
| ``results$descriptives`` | a table containing the descriptives           |
+--------------------------+-----------------------------------------------+
| ``results$plots``        | an image of the descriptive plots             |
+--------------------------+-----------------------------------------------+
| ``results$qq``           | an array of Q-Q plots                         |
+--------------------------+-----------------------------------------------+

Tables can be converted to data frames with ``asDF`` or ``as.data.frame()``. For example:

``results$ttest$asDF``

``as.data.frame(results$ttest)``

Examples
--------

.. code-block:: R

   data('ToothGrowth')

   ttestOneS(ToothGrowth, vars = vars(len, dose))

   #
   #  ONE SAMPLE T-TEST
   #
   #  One Sample T-Test
   #  ------------------------------------------------------
   #                           statistic    df      p
   #  ------------------------------------------------------
   #    len     Student's t         19.1    59.0    < .001
   #    dose    Student's t         14.4    59.0    < .001
   #  ------------------------------------------------------
   #

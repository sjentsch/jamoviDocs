.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

===================================
Paired Samples T-Test (``ttestPS``)
===================================

Description
-----------

    The Student's paired samples t-test (sometimes called a dependent-samples t-test) is used to test the null hypothesis that the difference between pairs
    of measurements is equal to zero. A low p-value suggests that the null hypothesis is not true, and that the difference between the measurement pairs is
    not zero.

Usage
-----

.. code-block:: R

   ttestPS(
     data,
     pairs,
     students = TRUE,
     bf = FALSE,
     bfPrior = 0.707,
     wilcoxon = FALSE,
     hypothesis = "different",
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
     miss = "perAnalysis"
   )

Arguments
---------

+----------------+----------------------------------------------------+
| ``data``       | the data as a data frame                           |
+----------------+----------------------------------------------------+
| ``pairs``      | a list of lists specifying the pairs of            |
|                | measurement in ``data``                            |
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
| ``wilcoxon``   | ``TRUE`` or ``FALSE`` (default), perform Wilcoxon  |
|                | signed rank tests                                  |
+----------------+----------------------------------------------------+
| ``hypothesis`` | ``'different'`` (default), ``'oneGreater'`` or     |
|                | ``'twoGreater'``, the alternative hypothesis;      |
|                | measure 1 different to measure 2, measure 1        |
|                | greater than measure 2, and measure 2 greater than |
|                | measure 1 respectively                             |
+----------------+----------------------------------------------------+
| ``norm``       | ``TRUE`` or ``FALSE`` (default), perform           |
|                | Shapiro-wilk normality tests                       |
+----------------+----------------------------------------------------+
| ``qq``         | ``TRUE`` or ``FALSE`` (default), provide a Q-Q     |
|                | plot of residuals                                  |
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
|                | one of its entries is missing                      |
+----------------+----------------------------------------------------+

Details
-------

    The Student's paired samples t-test assumes that pair differences follow a normal distribution – in the case that one is unwilling to assume this, the
    non-parametric Wilcoxon signed-rank can be used in it's place (however, note that the Wilcoxon signed-rank has a slightly different null hypothesis; that
    the two groups of measurements follow the same distribution).

Output
------

A results object containing:

================= =============================================
``results$ttest`` a table containing the t-test results
``results$norm``  a table containing the normality test results
``results$desc``  a table containing the descriptives
``results$plots`` an array of the descriptive plots
================= =============================================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$ttest$asDF``

``as.data.frame(results$ttest)``

Examples
--------

.. code-block:: R

   data('bugs', package = 'jmv')

   ttestPS(bugs, pairs = list(
           list(i1 = 'LDLF', i2 = 'LDHF')))

   #
   #  PAIRED SAMPLES T-TEST
   #
   #  Paired Samples T-Test
   #  --------------------------------------------------------------
   #                                   statistic    df      p
   #  --------------------------------------------------------------
   #    LDLF    LDHF    Student's t        -6.65    90.0    < .001
   #  --------------------------------------------------------------
   #

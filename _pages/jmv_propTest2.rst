.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

===========================================
Proportion Test (2 Outcomes; ``propTest2``)
===========================================

Description
-----------

The Binomial test is used to test the Null hypothesis that the
proportion of observations match some expected value. If the p-value is
low, this suggests that the Null hypothesis is false, and that the true
proportion must be some other value.

Usage
-----

.. code-block:: r

   propTest2(
     data,
     vars,
     areCounts = FALSE,
     testValue = 0.5,
     hypothesis = "notequal",
     ci = FALSE,
     ciWidth = 95,
     bf = FALSE,
     priorA = 1,
     priorB = 1,
     ciBayes = FALSE,
     ciBayesWidth = 95,
     postPlots = FALSE
   )

Arguments
---------

+------------------+--------------------------------------------------+
| ``data``         | the data as a data frame                         |
+------------------+--------------------------------------------------+
| ``vars``         | a vector of strings naming the variables of      |
|                  | interest in ``data``                             |
+------------------+--------------------------------------------------+
| ``areCounts``    | ``TRUE`` or ``FALSE`` (default), the variables   |
|                  | are counts                                       |
+------------------+--------------------------------------------------+
| ``testValue``    | a number (default: 0.5), the value for the null  |
|                  | hypothesis                                       |
+------------------+--------------------------------------------------+
| ``hypothesis``   | ``'notequal'`` (default), ``'greater'`` or       |
|                  | ``'less'``, the alternative hypothesis           |
+------------------+--------------------------------------------------+
| ``ci``           | ``TRUE`` or ``FALSE`` (default), provide         |
|                  | confidence intervals                             |
+------------------+--------------------------------------------------+
| ``ciWidth``      | a number between 50 and 99.9 (default: 95), the  |
|                  | confidence interval width                        |
+------------------+--------------------------------------------------+
| ``bf``           | ``TRUE`` or ``FALSE`` (default), provide Bayes   |
|                  | factors                                          |
+------------------+--------------------------------------------------+
| ``priorA``       | a number (default: 1), the beta prior 'a'        |
|                  | parameter                                        |
+------------------+--------------------------------------------------+
| ``priorB``       | a number (default: 1), the beta prior 'b'        |
|                  | parameter                                        |
+------------------+--------------------------------------------------+
| ``ciBayes``      | ``TRUE`` or ``FALSE`` (default), provide         |
|                  | Bayesian credible intervals                      |
+------------------+--------------------------------------------------+
| ``ciBayesWidth`` | a number between 50 and 99.9 (default: 95), the  |
|                  | credible interval width                          |
+------------------+--------------------------------------------------+
| ``postPlots``    | ``TRUE`` or ``FALSE`` (default), provide         |
|                  | posterior plots                                  |
+------------------+--------------------------------------------------+

Output
------

A results object containing:

===================== ===========================================
``results$table``     a table of the proportions and test results
``results$postPlots`` an array of the posterior plots
===================== ===========================================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$table$asDF``

``as.data.frame(results$table)``

Examples
--------

.. code-block:: r

   dat <- data.frame(x=c(8, 15))

   propTest2(dat, vars = x, areCounts = TRUE)

   #
   #  PROPORTION TEST (2 OUTCOMES)
   #
   #  Binomial Test
   #  -------------------------------------------------------
   #         Level    Count    Total    Proportion    p
   #  -------------------------------------------------------
   #    x    1            8       23         0.348    0.210
   #         2           15       23         0.652    0.210
   #  -------------------------------------------------------
   #    Note. Ha is proportion != 0.5
   #

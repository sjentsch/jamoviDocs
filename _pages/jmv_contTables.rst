.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

===================================
Contingency Tables (``contTables``)
===================================

Description
-----------

    The X² test of association (not to be confused with the X² goodness of fit) is used to test whether two categorical variables are independent or
    associated. If the p-value is low, it suggests the variables are not independent, and that there is a relationship between the two variables.

Usage
-----

.. code-block:: R

   contTables(
     data,
     rows,
     cols,
     counts = NULL,
     layers = NULL,
     chiSq = TRUE,
     chiSqCorr = FALSE,
     likeRat = FALSE,
     fisher = FALSE,
     contCoef = FALSE,
     phiCra = FALSE,
     logOdds = FALSE,
     odds = FALSE,
     relRisk = FALSE,
     ci = TRUE,
     ciWidth = 95,
     gamma = FALSE,
     taub = FALSE,
     obs = TRUE,
     exp = FALSE,
     pcRow = FALSE,
     pcCol = FALSE,
     pcTot = FALSE,
     formula
   )

Arguments
---------

+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``data``      | the data as a data frame                                                                                               |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``rows``      | the variable to use as the rows in the contingency table (not necessary when providing a formula, see the examples)    |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``cols``      | the variable to use as the columns in the contingency table (not necessary when providing a formula, see the examples) |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``counts``    | the variable to use as the counts in the contingency table (not necessary when providing a formula, see the examples)  |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``layers``    | the variables to use to split the contingency table (not necessary when providing a formula, see the examples)         |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``chiSq``     | ``TRUE`` (default) or ``FALSE``, provide X²                                                                            |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``chiSqCorr`` | ``TRUE`` or ``FALSE`` (default), provide X² with continuity correction                                                 |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``likeRat``   | ``TRUE`` or ``FALSE`` (default), provide the likelihood ratio                                                          |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``fisher``    | ``TRUE`` or ``FALSE`` (default), provide Fisher's exact test                                                           |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``contCoef``  | ``TRUE`` or ``FALSE`` (default), provide the contingency coefficient                                                   |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``phiCra``    | ``TRUE`` or ``FALSE`` (default), provide Phi and Cramer's V                                                            |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``logOdds``   | ``TRUE`` or ``FALSE`` (default), provide the log odds ratio (only available for 2x2 tables)                            |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``odds``      | ``TRUE`` or ``FALSE`` (default), provide the odds ratio (only available for 2x2 tables)                                |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``relRisk``   | ``TRUE`` or ``FALSE`` (default), provide the relative risk (only available for 2x2 tables)                             |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``ci``        | ``TRUE`` or ``FALSE`` (default), provide confidence intervals for the comparative measures                             |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``ciWidth``   | a number between 50 and 99.9 (default: 95), width of the confidence intervals to provide                               |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``gamma``     | ``TRUE`` or ``FALSE`` (default), provide gamma                                                                         |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``taub``      | ``TRUE`` or ``FALSE`` (default), provide Kendall's tau-b                                                               |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``obs``       | ``TRUE`` or ``FALSE`` (default), provide the observed counts                                                           |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``exp``       | ``TRUE`` or ``FALSE`` (default), provide the expected counts                                                           |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``pcRow``     | ``TRUE`` or ``FALSE`` (default), provide row percentages                                                               |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``pcCol``     | ``TRUE`` or ``FALSE`` (default), provide column percentages                                                            |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``pcTot``     | ``TRUE`` or ``FALSE`` (default), provide total percentages                                                             |
+---------------+------------------------------------------------------------------------------------------------------------------------+
| ``formula``   | (optional) the formula to use, see the examples                                                                        |
+---------------+------------------------------------------------------------------------------------------------------------------------+

Output
------

A results object containing:

================= ===========================================
``results$freqs``     a table of proportions
``results$chiSq``     a table of X² test results
``results$odds``      a table of comparative measures
``results$nom``       a table of the 'nominal' test results
``results$gamma``     a table of the gamma test results
``results$taub``      a table of the Kendall's tau-b test results
================= ===========================================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$freqs$asDF``

``as.data.frame(results$freqs)``

Examples
--------

.. code-block:: R

   data('HairEyeColor')
   dat <- as.data.frame(HairEyeColor)

   contTables(formula = Freq ~ Hair:Eye, dat)

   #
   #  CONTINGENCY TABLES
   #
   #  Contingency Tables
   #  -----------------------------------------------------
   #    Hair     Brown    Blue    Hazel    Green    Total
   #  -----------------------------------------------------
   #    Black       68      20       15        5      108
   #    Brown      119      84       54       29      286
   #    Red         26      17       14       14       71
   #    Blond        7      94       10       16      127
   #    Total      220     215       93       64      592
   #  -----------------------------------------------------
   #
   #
   #  X² Tests
   #  -------------------------------
   #          Value    df    p
   #  -------------------------------
   #    X²      138     9    < .001
   #    N       592
   #  -------------------------------
   #

   # Alternatively, omit the left of the formula (`Freq`) if each row
   # represents a single observation:

   contTables(formula = ~ Hair:Eye, dat)

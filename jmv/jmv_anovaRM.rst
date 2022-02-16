.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

=======================
Repeated Measures ANOVA
=======================

(``anovaRM``)
=============

Description
-----------

    The Repeated Measures ANOVA is used to explore the relationship between a continuous dependent variable and one or more categorical explanatory variables,
    where one or more of the explanatory variables are 'within subjects' (where multiple measurements are from the same subject). Additionally, this analysis
    allows the inclusion of covariates, allowing for repeated measures ANCOVAs as well.

Usage
-----

.. code-block:: R

   anovaRM(
     data,
     rm = list(list(label = "RM Factor 1", levels = list("Level 1", "Level 2"))),
     rmCells = NULL,
     bs = NULL,
     cov = NULL,
     effectSize = NULL,
     depLabel = "Dependent",
     rmTerms = NULL,
     bsTerms = NULL,
     ss = "3",
     spherTests = FALSE,
     spherCorr = list("none"),
     leveneTest = FALSE,
     contrasts = NULL,
     postHoc = NULL,
     postHocCorr = list("tukey"),
     emMeans = list(list()),
     emmPlots = TRUE,
     emmTables = FALSE,
     emmWeights = TRUE,
     ciWidthEmm = 95,
     emmPlotData = FALSE,
     emmPlotError = "ci",
     groupSumm = FALSE
   )

Arguments
---------

+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``data``         | the data as a data frame                                                                                               |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``rm``           | a list of lists, where each list describes the ``label`` (as a string) and the ``levels`` (as vector of strings) of a  |
|                  | particular repeated measures factor                                                                                    |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``rmCells``      | a list of lists, where each list decribes a repeated measure (as a string) from ``data`` defined as ``measure`` and    |
|                  | the particular combination of levels from ``rm`` that it belongs to (as a vector of strings) defined as ``cell``       |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``bs``           | a vector of strings naming the between subjects factors from ``data``                                                  |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``cov``          | a vector of strings naming the covariates from ``data``. Variables must be numeric                                     |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``effectSize``   | one or more of ``'eta'``, ``'partEta'``, or ``'omega'``; use eta², partial eta², and omega² effect sizes, respectively |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``depLabel``     | a string (default: 'Dependent') describing the label used for the dependent variable throughout the analysis           |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``rmTerms``      | a list of character vectors describing the repeated measures terms to go into the model                                |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``bsTerms``      | a list of character vectors describing the between subjects terms to go into the model                                 |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``ss``           | ``'2'`` or ``'3'`` (default), the sum of squares to use                                                                |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``spherTests``   | ``TRUE`` or ``FALSE`` (default), perform sphericity tests                                                              |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``spherCorr``    | one or more of ``'none'`` (default), ``'GG'``, or ``'HF'``; use no p-value correction, the Greenhouse-Geisser p-value  |
|                  | correction, and the Huynh-Feldt p-value correction for shericity, respectively                                         |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``leveneTest``   | ``TRUE`` or ``FALSE`` (default), test for homogeneity of variances (i.e., Levene's test)                               |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``contrasts``    | in development                                                                                                         |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``postHoc``      | a list of character vectors describing the post-hoc tests that need to be computed                                     |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``postHocCorr``  | one or more of ``'none'``, ``'tukey'`` (default), ``'scheffe'``, ``'bonf'``, or ``'holm'``; use no, Tukey, Scheffe,    |
|                  | Bonferroni and Holm posthoc corrections, respectively                                                                  |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``emMeans``      | a list of lists specifying the variables for which the estimated marginal means need to be calculate. Supports up to   |
|                  | three variables per term.                                                                                              |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``emmPlots``     | ``TRUE`` (default) or ``FALSE``, provide estimated marginal means plots                                                |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``emmTables``    | ``TRUE`` or ``FALSE`` (default), provide estimated marginal means tables                                               |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``emmWeights``   | ``TRUE`` (default) or ``FALSE``, weigh each cell equally or weigh them according to the cell frequency                 |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``ciWidthEmm``   | a number between 50 and 99.9 (default: 95) specifying the confidence interval width for the estimated marginal means   |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``emmPlotData``  | ``TRUE`` or ``FALSE`` (default), plot the data on top of the marginal means                                            |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``emmPlotError`` | ``'none'``, ``'ci'`` (default), or ``'se'``. Use no error bars, use confidence intervals, or use standard errors on    |
|                  | the marginal mean plots, respectively                                                                                  |
+------------------+------------------------------------------------------------------------------------------------------------------------+
| ``groupSumm``    | ``TRUE`` or ``FALSE`` (default), report a summary of the different groups                                              |
+------------------+------------------------------------------------------------------------------------------------------------------------+

Details
-------

This analysis requires that the data be in 'wide format', where each row
represents a subject (as opposed to long format, where each measurement
of the dependent variable is represented as a row).

A non-parametric equivalent of the repeated measures ANOVA also exists;
the Friedman test. However, it has the limitation of only being able to
test a single factor.

Output
------

A results object containing:

+--------------------------------+----------------------------------------+
| ``results$rmTable``            | a table                                |
+--------------------------------+----------------------------------------+
| ``results$bsTable``            | a table                                |
+--------------------------------+----------------------------------------+
| ``results$assump$spherTable``  | a table                                |
+--------------------------------+----------------------------------------+
| ``results$assump$leveneTable`` | a table                                |
+--------------------------------+----------------------------------------+
| ``results$contrasts``          | an array of tables                     |
+--------------------------------+----------------------------------------+
| ``results$postHoc``            | an array of tables                     |
+--------------------------------+----------------------------------------+
| ``results$emm``                | an array of the estimated marginal     |
|                                | means plots + tables                   |
+--------------------------------+----------------------------------------+
| ``results$groupSummary``       | a summary of the groups                |
+--------------------------------+----------------------------------------+

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$rmTable$asDF``

``as.data.frame(results$rmTable)``

Examples
--------

.. code-block:: R


   data('bugs', package = 'jmv')

   anovaRM(
       data = bugs,
       rm = list(
           list(
               label = 'Frightening',
               levels = c('Low', 'High'))),
       rmCells = list(
           list(
               measure = 'LDLF',
               cell = 'Low'),
           list(
               measure = 'LDHF',
               cell = 'High')),
       rmTerms = list(
           'Frightening'))

   #
   #  REPEATED MEASURES ANOVA
   #
   #  Within Subjects Effects
   #  -----------------------------------------------------------------------
   #                  Sum of Squares    df    Mean Square    F       p
   #  -----------------------------------------------------------------------
   #    Frightening              126     1         126.11    44.2    < .001
   #    Residual                 257    90           2.85
   #  -----------------------------------------------------------------------
   #    Note. Type 3 Sums of Squares
   #
   #
   #
   #  Between Subjects Effects
   #  -----------------------------------------------------------------
   #                Sum of Squares    df    Mean Square    F    p
   #  -----------------------------------------------------------------
   #    Residual               954    90           10.6
   #  -----------------------------------------------------------------
   #    Note. Type 3 Sums of Squares
   #

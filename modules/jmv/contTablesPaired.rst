.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

========================================================
Paired Samples Contingency Tables (``contTablesPaired``)
========================================================

Description
-----------

McNemar test

Usage
-----

.. code-block:: r

   contTablesPaired(
     data,
     rows,
     cols,
     counts = NULL,
     chiSq = TRUE,
     chiSqCorr = FALSE,
     exact = FALSE,
     pcRow = FALSE,
     pcCol = FALSE,
     formula
   )

Arguments
---------

+---------------+-----------------------------------------------------+
| ``data``      | the data as a data frame                            |
+---------------+-----------------------------------------------------+
| ``rows``      | the variable to use as the rows in the contingency  |
|               | table (not necessary when providing a formula, see  |
|               | the examples)                                       |
+---------------+-----------------------------------------------------+
| ``cols``      | the variable to use as the columns in the           |
|               | contingency table (not necessary when providing a   |
|               | formula, see the examples)                          |
+---------------+-----------------------------------------------------+
| ``counts``    | the variable to use as the counts in the            |
|               | contingency table (not necessary when providing a   |
|               | formula, see the examples)                          |
+---------------+-----------------------------------------------------+
| ``chiSq``     | ``TRUE`` (default) or ``FALSE``, provide X²         |
+---------------+-----------------------------------------------------+
| ``chiSqCorr`` | ``TRUE`` or ``FALSE`` (default), provide X² with    |
|               | continuity correction                               |
+---------------+-----------------------------------------------------+
| ``exact``     | ``TRUE`` or ``FALSE`` (default), provide an exact   |
|               | log odds ratio (requires exact2x2 to be installed)  |
+---------------+-----------------------------------------------------+
| ``pcRow``     | ``TRUE`` or ``FALSE`` (default), provide row        |
|               | percentages                                         |
+---------------+-----------------------------------------------------+
| ``pcCol``     | ``TRUE`` or ``FALSE`` (default), provide column     |
|               | percentages                                         |
+---------------+-----------------------------------------------------+
| ``formula``   | (optional) the formula to use, see the examples     |
+---------------+-----------------------------------------------------+

Output
------

A results object containing:

================= =======================
``results$freqs`` a proportions table
``results$test``  a table of test results
================= =======================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$freqs$asDF``

``as.data.frame(results$freqs)``

Examples
--------

.. code-block:: r

   dat <- data.frame(
       `1st survey` = c('Approve', 'Approve', 'Disapprove', 'Disapprove'),
       `2nd survey` = c('Approve', 'Disapprove', 'Approve', 'Disapprove'),
       `Counts` = c(794, 150, 86, 570),
       check.names=FALSE)

   contTablesPaired(formula = Counts ~ `1st survey`:`2nd survey`, data = dat)

   #
   #  PAIRED SAMPLES CONTINGENCY TABLES
   #
   #  Contingency Tables
   #  ------------------------------------------------
   #    1st survey    Approve    Disapprove    Total
   #  ------------------------------------------------
   #    Approve           794           150      944
   #    Disapprove         86           570      656
   #    Total             880           720     1600
   #  ------------------------------------------------
   #
   #
   #  McNemar Test
   #  -----------------------------------------------------
   #                                Value    df    p
   #  -----------------------------------------------------
   #    X²                           17.4     1    < .001
   #    X² continuity correction     16.8     1    < .001
   #  -----------------------------------------------------
   #


   # Alternatively, omit the left of the formula (`Counts`) from the
   # formula if each row represents a single observation:

   contTablesPaired(formula = ~ `1st survey`:`2nd survey`, data = dat)

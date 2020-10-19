.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

===================================
Correlation Matrix (``corrMatrix``)
===================================

Description
-----------

Correlation matrices are a way to examine linear relationships between
two or more continuous variables.

Usage
-----

.. code-block:: r

   corrMatrix(
     data,
     vars,
     pearson = TRUE,
     spearman = FALSE,
     kendall = FALSE,
     sig = TRUE,
     flag = FALSE,
     n = FALSE,
     ci = FALSE,
     ciWidth = 95,
     plots = FALSE,
     plotDens = FALSE,
     plotStats = FALSE,
     hypothesis = "corr"
   )

Arguments
---------

+----------------+----------------------------------------------------+
| ``data``       | the data as a data frame                           |
+----------------+----------------------------------------------------+
| ``vars``       | a vector of strings naming the variables to        |
|                | correlate in ``data``                              |
+----------------+----------------------------------------------------+
| ``pearson``    | ``TRUE`` (default) or ``FALSE``, provide Pearson's |
|                | R                                                  |
+----------------+----------------------------------------------------+
| ``spearman``   | ``TRUE`` or ``FALSE`` (default), provide           |
|                | Spearman's rho                                     |
+----------------+----------------------------------------------------+
| ``kendall``    | ``TRUE`` or ``FALSE`` (default), provide Kendall's |
|                | tau-b                                              |
+----------------+----------------------------------------------------+
| ``sig``        | ``TRUE`` (default) or ``FALSE``, provide           |
|                | significance levels                                |
+----------------+----------------------------------------------------+
| ``flag``       | ``TRUE`` or ``FALSE`` (default), flag significant  |
|                | correlations                                       |
+----------------+----------------------------------------------------+
| ``n``          | ``TRUE`` or ``FALSE`` (default), provide the       |
|                | number of cases                                    |
+----------------+----------------------------------------------------+
| ``ci``         | ``TRUE`` or ``FALSE`` (default), provide           |
|                | confidence intervals                               |
+----------------+----------------------------------------------------+
| ``ciWidth``    | a number between 50 and 99.9 (default: 95), the    |
|                | width of confidence intervals to provide           |
+----------------+----------------------------------------------------+
| ``plots``      | ``TRUE`` or ``FALSE`` (default), provide a         |
|                | correlation matrix plot                            |
+----------------+----------------------------------------------------+
| ``plotDens``   | ``TRUE`` or ``FALSE`` (default), provide densities |
|                | in the correlation matrix plot                     |
+----------------+----------------------------------------------------+
| ``plotStats``  | ``TRUE`` or ``FALSE`` (default), provide           |
|                | statistics in the correlation matrix plot          |
+----------------+----------------------------------------------------+
| ``hypothesis`` | one of ``'corr'`` (default), ``'pos'``, ``'neg'``  |
|                | specifying the alernative hypothesis; correlated,  |
|                | correlated positively, correlated negatively       |
|                | respectively.                                      |
+----------------+----------------------------------------------------+

Details
-------

For each pair of variables, a Pearson's r value indicates the strength
and direction of the relationship between those two variables. A
positive value indicates a positive relationship (higher values of one
variable predict higher values of the other variable). A negative
Pearson's r indicates a negative relationship (higher values of one
variable predict lower values of the other variable, and vice-versa). A
value of zero indicates no relationship (whether a variable is high or
low, does not tell us anything about the value of the other variable).

More formally, it is possible to test the null hypothesis that the
correlation is zero and calculate a p-value. If the p-value is low, it
suggests the correlation co-efficient is not zero, and there is a linear
(or more complex) relationship between the two variables.

Output
------

A results object containing:

================== ==========================
``results$matrix`` a correlation matrix table
``results$plot``   a correlation matrix plot
================== ==========================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$matrix$asDF``

``as.data.frame(results$matrix)``

Examples
--------

.. code-block:: r

   data('mtcars')

   corrMatrix(mtcars, vars = vars(mpg, cyl, disp, hp))

   #
   #  CORRELATION MATRIX
   #
   #  Correlation Matrix
   #  --------------------------------------------------------------
   #                           mpg      cyl       disp      hp
   #  --------------------------------------------------------------
   #    mpg     Pearson's r        —    -0.852    -0.848    -0.776
   #            p-value            —    < .001    < .001    < .001
   #
   #    cyl     Pearson's r                  —     0.902     0.832
   #            p-value                      —    < .001    < .001
   #
   #    disp    Pearson's r                            —     0.791
   #            p-value                                —    < .001
   #
   #    hp      Pearson's r                                      —
   #            p-value                                          —
   #  --------------------------------------------------------------
   #

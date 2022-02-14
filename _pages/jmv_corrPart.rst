.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

==================================
Partial Correlation (``corrPart``)
==================================

Description
-----------

Partial correlation matrices are a way to examine linear relationships
between two or more continuous variables while controlling for other
variables

Usage
-----

.. code-block:: R

   corrPart(
     data,
     vars,
     controls,
     pearson = TRUE,
     spearman = FALSE,
     kendall = FALSE,
     type = "part",
     sig = TRUE,
     flag = FALSE,
     n = FALSE,
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
| ``controls``   | a vector of strings naming the control variables   |
|                | in ``data``                                        |
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
| ``type``       | one of ``'part'`` (default) or ``'semi'``          |
|                | specifying the type of partial correlation to      |
|                | calculate; partial or semipartial correlation.     |
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

================== ========================================
``results$matrix`` a (semi)partial correlation matrix table
================== ========================================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$matrix$asDF``

``as.data.frame(results$matrix)``

Examples
--------

.. code-block:: R

   data('mtcars')

   corrPart(mtcars, vars = vars(mpg, cyl, disp), controls = vars(hp))

   #
   #  PARTIAL CORRELATION
   #
   #  Partial Correlation
   #  ----------------------------------------------------
   #                           mpg       cyl       disp
   #  ----------------------------------------------------
   #    mpg     Pearson's r         —
   #            p-value             —
   #
   #    cyl     Pearson's r    -0.590         —
   #            p-value        < .001         —
   #
   #    disp    Pearson's r    -0.606     0.719        —
   #            p-value        < .001    < .001        —
   #  ----------------------------------------------------
   #    Note. controlling for 'hp'
   #

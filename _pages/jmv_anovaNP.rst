.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

===========================================
One-Way ANOVA (non-parametric; ``anovaNP``)
===========================================

Description
-----------

The Kruskal-Wallis test is used to explore the relationship between a
continuous dependent variable, and a categorical explanatory variable.
It is analagous to ANOVA, but with the advantage of being non-parametric
and having fewer assumptions. However, it has the limitation that it can
only test a single explanatory variable at a time.

Usage
-----

.. code-block:: R

   anovaNP(data, deps, group, es = FALSE, pairs = FALSE, formula)

Arguments
---------

+-------------+-------------------------------------------------------+
| ``data``    | the data as a data frame                              |
+-------------+-------------------------------------------------------+
| ``deps``    | a string naming the dependent variable in ``data``    |
+-------------+-------------------------------------------------------+
| ``group``   | a string naming the grouping or independent variable  |
|             | in ``data``                                           |
+-------------+-------------------------------------------------------+
| ``es``      | ``TRUE`` or ``FALSE`` (default), provide effect-sizes |
+-------------+-------------------------------------------------------+
| ``pairs``   | ``TRUE`` or ``FALSE`` (default), perform pairwise     |
|             | comparisons                                           |
+-------------+-------------------------------------------------------+
| ``formula`` | (optional) the formula to use, see the examples       |
+-------------+-------------------------------------------------------+

Output
------

A results object containing:

======================= ======================================
``results$table``       a table of the test results
``results$comparisons`` an array of pairwise comparison tables
======================= ======================================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$table$asDF``

``as.data.frame(results$table)``

Examples
--------

.. code-block:: R

   data('ToothGrowth')

   anovaNP(formula = len ~ dose, data=ToothGrowth)

   #
   #  ONE-WAY ANOVA (NON-PARAMETRIC)
   #
   #  Kruskal-Wallis
   #  -------------------------------
   #           X²      df    p
   #  -------------------------------
   #    len    40.7     2    < .001
   #  -------------------------------
   #

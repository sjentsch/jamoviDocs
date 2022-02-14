.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

=======================================================
Repeated Measures ANOVA (non-parametric; ``anovaRMNP``)
=======================================================

Description
-----------

The Friedman test is used to explore the relationship between a
continuous dependent variable and a categorical explanatory variable,
where the explanatory variable is 'within subjects' (where multiple
measurements are from the same subject). It is analagous to Repeated
Measures ANOVA, but with the advantage of being non-parametric, and not
requiring the assumptions of normality or homogeneity of variances.
However, it has the limitation that it can only test a single
explanatory variable at a time.

Usage
-----

.. code-block:: R

   anovaRMNP(
     data,
     measures,
     pairs = FALSE,
     desc = FALSE,
     plots = FALSE,
     plotType = "means"
   )

Arguments
---------

+--------------+------------------------------------------------------+
| ``data``     | the data as a data frame                             |
+--------------+------------------------------------------------------+
| ``measures`` | a vector of strings naming the repeated measures     |
|              | variables                                            |
+--------------+------------------------------------------------------+
| ``pairs``    | ``TRUE`` or ``FALSE`` (default), perform pairwise    |
|              | comparisons                                          |
+--------------+------------------------------------------------------+
| ``desc``     | ``TRUE`` or ``FALSE`` (default), provide descriptive |
|              | statistics                                           |
+--------------+------------------------------------------------------+
| ``plots``    | ``TRUE`` or ``FALSE`` (default), provide a           |
|              | descriptive plot                                     |
+--------------+------------------------------------------------------+
| ``plotType`` | ``'means'`` (default) or ``'medians'``, the error    |
|              | bars to use in the plot                              |
+--------------+------------------------------------------------------+

Output
------

A results object containing:

================= ====================================
``results$table`` a table of the Friedman test results
``results$comp``  a table of the pairwise comparisons
``results$desc``  a table containing the descriptives
``results$plot``  a descriptives plot
================= ====================================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$table$asDF``

``as.data.frame(results$table)``

Examples
--------

.. code-block:: R

   data('bugs', package = 'jmv')

   anovaRMNP(bugs, measures = vars(LDLF, LDHF, HDLF, HDHF))

   #
   #  REPEATED MEASURES ANOVA (NON-PARAMETRIC)
   #
   #  Friedman
   #  ------------------------
   #    X²      df    p
   #  ------------------------
   #    55.8     3    < .001
   #  ------------------------
   #

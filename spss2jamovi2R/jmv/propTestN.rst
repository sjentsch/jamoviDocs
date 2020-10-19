.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

===========================================
Proportion Test (N Outcomes; ``propTestN``)
===========================================

Description
-----------

The X² Goodness of fit test (not to be confused with the X² test of
independence), tests the Null hypothesis that the proportions of
observations match some expected proportions. If the p-value is low,
this suggests that the Null hypothesis is false, and that the true
proportions are different to those tested.

Usage
-----

.. code-block:: r

   propTestN(data, var, counts = NULL, expected = FALSE, ratio = NULL, formula)

Arguments
---------

+--------------+------------------------------------------------------+
| ``data``     | the data as a data frame                             |
+--------------+------------------------------------------------------+
| ``var``      | the variable of interest in ``data`` (not necessary  |
|              | when using a formula, see the examples)              |
+--------------+------------------------------------------------------+
| ``counts``   | the counts in ``data``                               |
+--------------+------------------------------------------------------+
| ``expected`` | ``TRUE`` or ``FALSE`` (default), whether expected    |
|              | counts should be displayed                           |
+--------------+------------------------------------------------------+
| ``ratio``    | a vector of numbers: the expected proportions        |
+--------------+------------------------------------------------------+
| ``formula``  | (optional) the formula to use, see the examples      |
+--------------+------------------------------------------------------+

Output
------

A results object containing:

================= ===========================
``results$props`` a table of the proportions
``results$tests`` a table of the test results
================= ===========================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$props$asDF``

``as.data.frame(results$props)``

Examples
--------

.. code-block:: r

   data('HairEyeColor')
   dat <- as.data.frame(HairEyeColor)

   propTestN(formula = Freq ~ Eye, data = dat, ratio = c(1,1,1,1))

   #
   #  PROPORTION TEST (N OUTCOMES)
   #
   #  Proportions
   #  --------------------------------
   #    Level    Count    Proportion
   #  --------------------------------
   #    Brown      220         0.372
   #    Blue       215         0.363
   #    Hazel       93         0.157
   #    Green       64         0.108
   #  --------------------------------
   #
   #
   #  X² Goodness of Fit
   #  -----------------------
   #    X²     df    p
   #  -----------------------
   #    133     3    < .001
   #  -----------------------
   #

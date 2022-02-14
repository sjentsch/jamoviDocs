.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

======================================
Reliability Analysis (``reliability``)
======================================

Description
-----------

Reliability Analysis

Usage
-----

.. code-block:: R

   reliability(
     data,
     vars,
     alphaScale = TRUE,
     omegaScale = FALSE,
     meanScale = FALSE,
     sdScale = FALSE,
     corPlot = FALSE,
     alphaItems = FALSE,
     omegaItems = FALSE,
     meanItems = FALSE,
     sdItems = FALSE,
     itemRestCor = FALSE,
     revItems = NULL
   )

Arguments
---------

+-----------------+---------------------------------------------------+
| ``data``        | the data as a data frame                          |
+-----------------+---------------------------------------------------+
| ``vars``        | a vector of strings naming the variables of       |
|                 | interest in ``data``                              |
+-----------------+---------------------------------------------------+
| ``alphaScale``  | ``TRUE`` (default) or ``FALSE``, provide          |
|                 | Cronbach's alpha                                  |
+-----------------+---------------------------------------------------+
| ``omegaScale``  | ``TRUE`` or ``FALSE`` (default), provide          |
|                 | McDonald's omega                                  |
+-----------------+---------------------------------------------------+
| ``meanScale``   | ``TRUE`` or ``FALSE`` (default), provide the mean |
+-----------------+---------------------------------------------------+
| ``sdScale``     | ``TRUE`` or ``FALSE`` (default), provide the      |
|                 | standard deviation                                |
+-----------------+---------------------------------------------------+
| ``corPlot``     | ``TRUE`` or ``FALSE`` (default), provide a        |
|                 | correlation plot                                  |
+-----------------+---------------------------------------------------+
| ``alphaItems``  | ``TRUE`` or ``FALSE`` (default), provide what the |
|                 | Cronbach's alpha would be if the item was dropped |
+-----------------+---------------------------------------------------+
| ``omegaItems``  | ``TRUE`` or ``FALSE`` (default), provide what the |
|                 | McDonald's omega would be if the item was dropped |
+-----------------+---------------------------------------------------+
| ``meanItems``   | ``TRUE`` or ``FALSE`` (default), provide item     |
|                 | means                                             |
+-----------------+---------------------------------------------------+
| ``sdItems``     | ``TRUE`` or ``FALSE`` (default), provide item     |
|                 | standard deviations                               |
+-----------------+---------------------------------------------------+
| ``itemRestCor`` | ``TRUE`` or ``FALSE`` (default), provide          |
|                 | item-rest correlations                            |
+-----------------+---------------------------------------------------+
| ``revItems``    | a vector containing strings naming the varibales  |
|                 | that are reverse scaled                           |
+-----------------+---------------------------------------------------+

Output
------

A results object containing:

=================== ========
``results$scale``   a table
``results$items``   a table
``results$corPlot`` an image
=================== ========

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$scale$asDF``

``as.data.frame(results$scale)``

Examples
--------

.. code-block:: R

   data('iris')

   reliability(iris, vars = c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width'),
               omegaScale = TRUE)

   #
   #  RELIABILITY ANALYSIS
   #
   #  Scale Reliability Statistics
   #  -----------------------------------------
   #             Cronbach's alpha    McDonald's omega
   #  -----------------------------------------
   #    scale           0.708           0.848
   #  -----------------------------------------
   #

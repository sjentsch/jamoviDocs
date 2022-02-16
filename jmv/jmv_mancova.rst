.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

=====================
MANCOVA (``mancova``)
=====================

Description
-----------

Multivariate Analysis of (Co)Variance (MANCOVA) is used to explore the
relationship between multiple dependent variables, and one or more
categorical and/or continuous explanatory variables.

Usage
-----

.. code-block:: R

   mancova(
     data,
     deps,
     factors = NULL,
     covs = NULL,
     multivar = list("pillai", "wilks", "hotel", "roy"),
     boxM = FALSE,
     shapiro = FALSE,
     qqPlot = FALSE
   )

Arguments
---------

+--------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| ``data``     | the data as a data frame                                                                                                                     |
+--------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| ``deps``     | a string naming the dependent variable from ``data``, variable must be numeric                                                               |
+--------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| ``factors``  | a vector of strings naming the factors from ``data``                                                                                         |
+--------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| ``covs``     | a vector of strings naming the covariates from ``data``                                                                                      |
+--------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| ``multivar`` | one or more of ``'pillai'``, ``'wilks'``, ``'hotel'``, or ``'roy'``; use Pillai's Trace, Wilks' Lambda, Hotelling's Trace, and Roy's Largest |
|              | Root multivariate statistics, respectively                                                                                                   |
+--------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| ``boxM``     | ``TRUE`` or ``FALSE`` (default), provide Box's M test                                                                                        |
+--------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| ``shapiro``  | ``TRUE`` or ``FALSE`` (default), provide Shapiro-Wilk test                                                                                   |
+--------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| ``qqPlot``   | ``TRUE`` or ``FALSE`` (default), provide a Q-Q plot of multivariate normality                                                                |
+--------------+----------------------------------------------------------------------------------------------------------------------------------------------+

Output
------

A results object containing:

========================== ========
``results$multivar``       a table
``results$univar``         a table
``results$assump$boxM``    a table
``results$assump$shapiro`` a table
``results$assump$qqPlot``  an image
========================== ========

Tables can be converted to data frames with ``asDF`` or ``as.data.frame()``. For example:

``results$multivar$asDF``

``as.data.frame(results$multivar)``

Examples
--------

.. code-block:: R

   data('iris')

   mancova(data = iris,
       deps = vars(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width),
       factors = Species)

   #
   #  MANCOVA
   #
   #  Multivariate Tests
   #  ---------------------------------------------------------------------------
   #                                     value     F       df1    df2    p
   #  ---------------------------------------------------------------------------
   #    Species    Pillai's Trace          1.19    53.5      8    290    < .001
   #               Wilks' Lambda         0.0234     199      8    288    < .001
   #               Hotelling's Trace       32.5     581      8    286    < .001
   #               Roy's Largest Root      32.2    1167      4    145    < .001
   #  ---------------------------------------------------------------------------
   #
   #
   #  Univariate Tests
   #  -----------------------------------------------------------------------------------------------
   #                 Dependent Variable    Sum of Squares    df     Mean Square    F         p
   #  -----------------------------------------------------------------------------------------------
   #    Species      Sepal.Length                   63.21      2        31.6061     119.3    < .001
   #                 Sepal.Width                    11.34      2         5.6725      49.2    < .001
   #                 Petal.Length                  437.10      2       218.5514    1180.2    < .001
   #                 Petal.Width                    80.41      2        40.2067     960.0    < .001
   #    Residuals    Sepal.Length                   38.96    147         0.2650
   #                 Sepal.Width                    16.96    147         0.1154
   #                 Petal.Length                   27.22    147         0.1852
   #                 Petal.Width                     6.16    147         0.0419
   #  -----------------------------------------------------------------------------------------------
   #

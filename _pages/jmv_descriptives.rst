.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

===============================
Descriptives (``descriptives``)
===============================

Description
-----------

Descriptives are an assortment of summarising statistics, and
visualizations which allow exploring the shape and distribution of data.
It is good practice to explore your data with descriptives before
proceeding to more formal tests.

Usage
-----

.. code-block:: R

   descriptives(
     data,
     vars,
     splitBy = NULL,
     freq = FALSE,
     hist = FALSE,
     dens = FALSE,
     bar = FALSE,
     barCounts = FALSE,
     box = FALSE,
     violin = FALSE,
     dot = FALSE,
     dotType = "jitter",
     qq = FALSE,
     n = TRUE,
     missing = TRUE,
     mean = TRUE,
     median = TRUE,
     mode = FALSE,
     sum = FALSE,
     sd = TRUE,
     variance = FALSE,
     range = FALSE,
     min = TRUE,
     max = TRUE,
     se = FALSE,
     skew = FALSE,
     kurt = FALSE,
     sw = FALSE,
     quart = FALSE,
     pcEqGr = FALSE,
     pcNEqGr = 4,
     formula
   )

Arguments
---------

+---------------+-----------------------------------------------------+
| ``data``      | the data as a data frame                            |
+---------------+-----------------------------------------------------+
| ``vars``      | a vector of strings naming the variables of         |
|               | interest in ``data``                                |
+---------------+-----------------------------------------------------+
| ``splitBy``   | a vector of strings naming the variables used to    |
|               | split ``vars``                                      |
+---------------+-----------------------------------------------------+
| ``freq``      | ``TRUE`` or ``FALSE`` (default), provide frequency  |
|               | tables (nominal, ordinal variables only)            |
+---------------+-----------------------------------------------------+
| ``hist``      | ``TRUE`` or ``FALSE`` (default), provide histograms |
|               | (continuous variables only)                         |
+---------------+-----------------------------------------------------+
| ``dens``      | ``TRUE`` or ``FALSE`` (default), provide density    |
|               | plots (continuous variables only)                   |
+---------------+-----------------------------------------------------+
| ``bar``       | ``TRUE`` or ``FALSE`` (default), provide bar plots  |
|               | (nominal, ordinal variables only)                   |
+---------------+-----------------------------------------------------+
| ``barCounts`` | ``TRUE`` or ``FALSE`` (default), add counts to the  |
|               | bar plots                                           |
+---------------+-----------------------------------------------------+
| ``box``       | ``TRUE`` or ``FALSE`` (default), provide box plots  |
|               | (continuous variables only)                         |
+---------------+-----------------------------------------------------+
| ``violin``    | ``TRUE`` or ``FALSE`` (default), provide violin     |
|               | plots (continuous variables only)                   |
+---------------+-----------------------------------------------------+
| ``dot``       | ``TRUE`` or ``FALSE`` (default), provide dot plots  |
|               | (continuous variables only)                         |
+---------------+-----------------------------------------------------+
| ``dotType``   | .                                                   |
+---------------+-----------------------------------------------------+
| ``qq``        | ``TRUE`` or ``FALSE`` (default), provide Q-Q plots  |
|               | (continuous variables only)                         |
+---------------+-----------------------------------------------------+
| ``n``         | ``TRUE`` (default) or ``FALSE``, provide the sample |
|               | size                                                |
+---------------+-----------------------------------------------------+
| ``missing``   | ``TRUE`` (default) or ``FALSE``, provide the number |
|               | of missing values                                   |
+---------------+-----------------------------------------------------+
| ``mean``      | ``TRUE`` (default) or ``FALSE``, provide the mean   |
+---------------+-----------------------------------------------------+
| ``median``    | ``TRUE`` (default) or ``FALSE``, provide the median |
+---------------+-----------------------------------------------------+
| ``mode``      | ``TRUE`` or ``FALSE`` (default), provide the mode   |
+---------------+-----------------------------------------------------+
| ``sum``       | ``TRUE`` or ``FALSE`` (default), provide the sum    |
+---------------+-----------------------------------------------------+
| ``sd``        | ``TRUE`` (default) or ``FALSE``, provide the        |
|               | standard deviation                                  |
+---------------+-----------------------------------------------------+
| ``variance``  | ``TRUE`` or ``FALSE`` (default), provide the        |
|               | variance                                            |
+---------------+-----------------------------------------------------+
| ``range``     | ``TRUE`` or ``FALSE`` (default), provide the range  |
+---------------+-----------------------------------------------------+
| ``min``       | ``TRUE`` or ``FALSE`` (default), provide the        |
|               | minimum                                             |
+---------------+-----------------------------------------------------+
| ``max``       | ``TRUE`` or ``FALSE`` (default), provide the        |
|               | maximum                                             |
+---------------+-----------------------------------------------------+
| ``se``        | ``TRUE`` or ``FALSE`` (default), provide the        |
|               | standard error                                      |
+---------------+-----------------------------------------------------+
| ``skew``      | ``TRUE`` or ``FALSE`` (default), provide the        |
|               | skewness                                            |
+---------------+-----------------------------------------------------+
| ``kurt``      | ``TRUE`` or ``FALSE`` (default), provide the        |
|               | kurtosis                                            |
+---------------+-----------------------------------------------------+
| ``sw``        | ``TRUE`` or ``FALSE`` (default), provide            |
|               | Shapiro-Wilk p-value                                |
+---------------+-----------------------------------------------------+
| ``quart``     | ``TRUE`` or ``FALSE`` (default), provide quartiles  |
+---------------+-----------------------------------------------------+
| ``pcEqGr``    | ``TRUE`` or ``FALSE`` (default), provide quantiles  |
+---------------+-----------------------------------------------------+
| ``pcNEqGr``   | an integer (default: 4) specifying the number of    |
|               | equal groups                                        |
+---------------+-----------------------------------------------------+
| ``formula``   | (optional) the formula to use, see the examples     |
+---------------+-----------------------------------------------------+

Output
------

A results object containing:

======================== =====================================
``results$descriptives`` a table of the descriptive statistics
``results$frequencies``  an array of frequency tables
======================== =====================================

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$descriptives$asDF``

``as.data.frame(results$descriptives)``

Examples
--------

.. code-block:: R

   data('mtcars')
   dat <- mtcars

   # frequency tables can be provided for factors
   dat$gear <- as.factor(dat$gear)

   descriptives(dat, vars = vars(mpg, cyl, disp, gear), freq = TRUE)

   #
   #  DESCRIPTIVES
   #
   #  Descriptives
   #  -------------------------------------------
   #               mpg     cyl     disp    gear
   #  -------------------------------------------
   #    N            32      32      32      32
   #    Missing       0       0       0       0
   #    Mean       20.1    6.19     231    3.69
   #    Median     19.2    6.00     196    4.00
   #    Minimum    10.4    4.00    71.1       3
   #    Maximum    33.9    8.00     472       5
   #  -------------------------------------------
   #
   #
   #  FREQUENCIES
   #
   #  Frequencies of gear
   #  --------------------
   #    Levels    Counts
   #  --------------------
   #    3             15
   #    4             12
   #    5              5
   #  --------------------
   #

   # spliting by a variable
   descriptives(formula = disp + mpg ~ cyl, dat,
       median=F, min=F, max=F, n=F, missing=F)

   # providing histograms
   descriptives(formula = mpg ~ cyl, dat, hist=T,
       median=F, min=F, max=F, n=F, missing=F)

   # splitting by multiple variables
   descriptives(formula = mpg ~ cyl:gear, dat,
       median=F, min=F, max=F, missing=F)

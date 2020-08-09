.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Descriptive statistics
======================

Any time that you get a new data set to look at one of the first tasks
that you have to do is find ways of summarising the data in a compact,
easily understood fashion. This is what **descriptive statistics** (as
opposed to inferential statistics) is all about. In fact, to many people
the term “statistics” is synonymous with descriptive statistics. It is
this topic that we’ll consider in this chapter, but before going into
any details, let’s take a moment to get a sense of why we need
descriptive statistics. To do this, let’s open the ``aflsmall_margins``
file and see what variables are stored in the file.

.. ----------------------------------------------------------------------------

.. _fig-aflsmall_margins:
.. figure:: ../_images/lsj_aflsmall_margins.*
   :alt: Variables stored in the aflsmall margins.csv

   Screenshot of jamovi showing the variables stored in the file
   aflsmall_margins.csv
   
.. ----------------------------------------------------------------------------

In fact, there is just one variable here, ``afl.margins``. We’ll focus a
bit on this variable in this chapter, so I’d better tell you what it is.
Unlike most of the data sets in this book, this is actually real data,
relating to the Australian Football League (AFL).\ [#]_ The
``afl.margins`` variable contains the winning margin (number of points)
for all 176 home and away games played during the 2010 season.

This output doesn’t make it easy to get a sense of what the data are actually
saying. Just “looking at the data” isn’t a terribly effective way of
understanding data. In order to get some idea about what the data are actually
saying we need to calculate some descriptive statistics (this chapter) and draw
some nice pictures (Chapter `Drawing graphs <Ch05_Graphics.html>`__). Since the
descriptive statistics are the easier of the two topics I’ll start with those,
but nevertheless I’ll show you a histogram of the ``afl.margins`` data since it
should help you get a sense of what the data we’re trying to describe actually
look like, see :numref:`fig-aflMargins`. We’ll talk a lot more about how to
draw `histograms <Ch05_Graphics_1.html#histograms>`__. For now, it’s enough to
look at the histogram and note that it provides a fairly interpretable
representation of the ``afl.margins`` data.

.. ----------------------------------------------------------------------------

.. _fig-aflMargins:
.. figure:: ../_images/lsj_aflMargins.*
   :alt: Histogram of AFL 2010 winning margin data

   Histogram of the AFL 2010 winning margin data (the afl.margins variable).
   As you might expect, the larger the winning margin the less frequently you
   tend to see it.
   
.. ----------------------------------------------------------------------------

.. toctree::
   :hidden:

   Ch04_Descriptives_1
   Ch04_Descriptives_2
   Ch04_Descriptives_3
   Ch04_Descriptives_4
   Ch04_Descriptives_5
   Ch04_Descriptives_6

------

.. [#]
   Note for non-Australians: the AFL is an Australian rules football
   competition. You don’t need to know anything about Australian rules
   in order to follow this section.

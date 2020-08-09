.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Histograms
----------

Let’s begin with the humble **histogram**. Histograms are one of the
simplest and most useful ways of visualising data. They make most sense
when you have an interval or ratio scale variable (e.g., the
``afl.margins`` data that we used in `Descriptive statistics
<Ch04_Descriptives.html#descriptive-statistics>`__ ) and what you want
to do is get an overall impression of the variable. Most of you probably
know how histograms work, since they’re so widely used, but for the sake
of completeness I’ll describe them. All you do is divide up the possible
values into **bins** and then count the number of observations that fall
within each bin. This count is referred to as the frequency or density
of the bin and is displayed as a vertical bar. Ihe AFL winning margins
data there are 33 games in which the winning margin was less than 10
points and it is this fact that is represented by the height of the
leftmost bar that we showed earlier in `Descriptive statistics
<Ch04_Descriptives.html#descriptive-statistics>`__, and 
:numref:`fig-aflMargins`. With these earlier graphs we used an advanced
plotting package in R which, for now, is beyond the capability of jamovi. But
jamovi gets us close, and drawing this histogram in jamovi is pretty
straightforward. Open up the ``Plots`` options under ``Exploration`` → 
``Descriptives`` and click the ``Histogram`` check box, as shown in
:numref:`fig-jamovi_histogram`. jamovi defaults to labelling the y-axis as
‘density’ and the x-axis with the variable name. The **bins** are selected
automatically, and there is no scale, or count, information on the y-axis
unlike the previous :numref:`fig-aflMargins`. But this does not matter
too much because after all what we are really interested in is our
impression of the shape of the distribution: is it normally distributed
or is there a skew or kurtosis? Our first impressions of these
characteristics come from drawing a **histogram**.

.. ----------------------------------------------------------------------------

.. _fig-jamovi_histogram:
.. figure:: ../_images/lsj_jamovi_histogram.*
   :alt: Histogram check box in jamovi

   jamovi screen showing the histogram check box
   
.. ----------------------------------------------------------------------------

One additional feature that jamovi provides is the ability to plot a density
curve. You can do this by clicking the ``Density`` check box under the
``Plots`` options (and unchecking ``Histogram``), and this gives us the plot
shown in :numref:`fig-histogram2`. A density plot visualises the distribution
of data over a continuous interval or time period. This chart is a variation of
a histogram that uses **kernel smoothing** to plot values, allowing for
smoother distributions by smoothing out the noise. The peaks of a density plot
help display where values are concentrated over the interval. An advantage
density plots have over histograms is that they are better at determining the
distribution shape because they’re not affected by the number of bins used
(each bar used in a typical histogram). A histogram comprising of only 4 bins
wouldn’t produce a distinguishable enough shape of distribution as a 20-bin
histogram would. However, with density plots, this isn’t an issue.

.. ----------------------------------------------------------------------------

.. _fig-histogram2:
.. figure:: ../_images/lsj_histogram2.*
   :alt: Density plot of ``afl.margins``

   Density plot of the ``afl.margins`` variable plotted in jamovi
   
.. ----------------------------------------------------------------------------

Although this image would need a lot of cleaning up in order to make a good
presentation graphic (i.e., one you’d include in a report), it nevertheless
does a pretty good job of describing the data. In fact, the big strength of a
histogram or density plot is that (properly used) it does show the entire
spread of the data, so you can get a pretty good sense about what it looks
like. The downside to histograms is that they aren’t very compact. Unlike some
of the other plots I’ll talk about it’s hard to cram 20-30 histograms into a
single image without overwhelming the viewer. And of course, if your data are
nominal scale then histograms are useless.

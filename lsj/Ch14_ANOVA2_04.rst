.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Assumption checking
-------------------

As with one-way ANOVA, the key assumptions of factorial ANOVA are
homogeneity of variance (all groups have the same standard deviation),
normality of the residuals, and independence of the observations. The
first two are things we can check for. The third is something that you
need to assess yourself by asking if there are any special relationships
between different observations, for example repeated measures where the
independent variable is time so there is a relationship between the
observations at time one and time two: observations at different time
points are from the *same* people. Additionally, if you aren’t using a
saturated model (e.g., if you’ve omitted the interaction terms) then
you’re also assuming that the omitted terms aren’t important. Of course,
you can check this last one by running an ANOVA with the omitted terms
included and see if they’re significant, so that’s pretty easy. What
about homogeneity of variance and normality of the residuals? As it
turns out, these are pretty easy to check. It’s no different to the
checks we did for a one-way ANOVA.

Homogeneity of variance
~~~~~~~~~~~~~~~~~~~~~~~

As mentioned in Section `Checking the homogeneity of variance assumption
<Ch13_ANOVA_06.html#checking-the-homogeneity-of-variance-assumption>`__, it’s a
good idea to visually inspect a plot of the standard deviations compared across
different groups / categories, and also see if the Levene test is consistent
with the visual inspection. The theory behind the Levene test was discussed in
that section, so I won’t discuss it again. This test expects that you have a
saturated model (i.e., including all of the relevant terms), because the test
is primarily concerned with the within-group variance, and it doesn’t really
make a lot of sense to calculate this any way other than with respect to the
full model. The Levene test can be specified under the ANOVA ``Assumption
Checks`` → ``Homogeneity Tests`` option in jamovi, with the result shown as in
:numref:`fig-factorialanova5`. The fact that the Levene test is non-significant
means that, providing it is consistent with a visual inspection of the plot of
standard deviations, we can safely assume that the homogeneity of variance
assumption is not violated.

.. ----------------------------------------------------------------------------

.. _fig-factorialanova5:
.. figure:: ../_images/lsj_factorialanova5.*
   :alt: Checking assumptions in an ANOVA model

   Checking assumptions in an ANOVA model
   
.. ----------------------------------------------------------------------------

Normality of residuals
~~~~~~~~~~~~~~~~~~~~~~

As with one-way ANOVA we can test for the normality of residuals in a 
straightforward fashion (see `Checking the normality assumption
<Ch13_ANOVA_06.html#checking-the-normality-assumption>`__). Primarily though,
it’s generally a good idea to examine the residuals graphically using a
QQ-plot. See :numref:`fig-factorialanova5`.

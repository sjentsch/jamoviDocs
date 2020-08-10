.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Estimating a linear regression model
------------------------------------

.. ----------------------------------------------------------------------------

.. _fig-regression3:
.. figure:: ../_images/lsj_introPicSSE.*
   :alt: Residuals associated with the best and with a poor regression line

   Depiction of the residuals associated with the best fitting regression line
   (left panel), and the residuals associated with a poor regression line (right
   panel). The residuals are much smaller for the good regression line. Again,
   this is no surprise given that the good line is the one that goes right
   through the middle of the data.
      
.. ----------------------------------------------------------------------------

Okay, now let’s redraw our pictures but this time I’ll add some lines to show
the size of the residual for all observations. When the regression line is
good, our residuals (the lengths of the solid black lines) all look pretty
small, as shown in :numref:`fig-regression3` (left panel), but when the
regression line is a bad one the residuals are a lot larger, as you can see
from looking at :numref:`fig-regression3` (right panel). Hmm. Maybe what we
“want” in a regression model is *small* residuals. Yes, that does seem to make
sense. In fact, I think I’ll go so far as to say that the “best fitting”
regression line is the one that has the smallest residuals. Or, better yet,
since statisticians seem to like to take squares of everything why not say
that: The estimated regression coefficients, :math:`\hat{b}_0` and
:math:`\hat{b}_1`, are those that minimise the sum of the squared residuals,
which we could either write as

.. math:: \sum_i (Y_i - \hat{Y}_i)^2

or as

.. math:: \sum_i \epsilon_{i}^2

Yes, yes that sounds even better. And since I’ve indented it like that,
it probably means that this is the right answer. And since this is the
right answer, it’s probably worth making a note of the fact that our
regression coefficients are *estimates* (we’re trying to guess the
parameters that describe a population!), which is why I’ve added the
little hats, so that we get :math:`\hat{b}_0` and :math:`\hat{b}_1`
rather than *b*\ :sub:`0` and *b*\ :sub:`1`. Finally, I should also note
that, since there’s actually more than one way to estimate a regression
model, the more technical name for this estimation process is **ordinary
least squares (OLS) regression**.

At this point, we now have a concrete definition for what counts as our
“best” choice of regression coefficients, :math:`\hat{b}_0` and
:math:`\hat{b}_1`. The natural question to ask next is, if our optimal
regression coefficients are those that minimise the sum squared
residuals, how do we *find* these wonderful numbers? The actual answer
to this question is complicated and doesn’t help you understand the
logic of regression.\ [#]_ This time I’m going to let you off the hook.
Instead of showing you the long and tedious way first and then
“revealing” the wonderful shortcut that jamovi provides, let’s cut
straight to the chase and just use jamovi to do all the heavy lifting.

Linear regression in jamovi
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. ----------------------------------------------------------------------------

.. _fig-reg1:
.. figure:: ../_images/lsj_reg1.*
   :alt: jamovi screenshot showing a simple linear regression analysis

   jamovi screenshot showing a simple linear regression analysis
   
.. ----------------------------------------------------------------------------

To run my linear regression, open up the ``Regression`` - ``Linear Regression``
analysis in jamovi, using the ``parenthood`` dataset. Then specify
``dan.grump`` as the ``Dependent Variable`` and ``dan.sleep`` as the variable
entered in the ``Covariates`` box. This gives the results shown in
:numref:`fig-reg1`, showing an intercept :math:`\hat{b}_0` = 125.96 and the
slope :math:`\hat{b}_1` = -8.94. In other words, the best-fitting regression
line that I plotted in :numref:`fig-regression1` has this formula:

| *Ŷ*\ :sub:`i` = 125.96 + (-8.94 \ *X*\ :sub:`i`)

Interpreting the estimated model
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The most important thing to be able to understand is how to interpret these
coefficients. Let’s start with :math:`\hat{b}_1`, the slope. If we remember the
definition of the slope, a regression coefficient of :math:`\hat{b}_1` = -8.94
means that if I increase *X*\ :sub:`i` by 1, then I’m decreasing *Y*\ :sub:`i`
by 8.94. That is, each additional hour of sleep that I gain will improve my
mood, reducing my grumpiness by 8.94 grumpiness points. What about the
intercept? Well, since :math:`\hat{b}_0` corresponds to “the expected value of
*Y*\ :sub:`i` when *X*\ :sub:`i` equals 0”, it’s pretty straightforward. It
implies that if I get zero hours of sleep (*X*\ :sub:`i` = 0) then my
grumpiness will go off the scale, to an insane value of (*Y*\ :sub:`i` =
\125.96). Best to be avoided, I think.

------

.. [#]
   Or at least, I’m assuming that it doesn’t help most people. But on the
   off-chance that someone reading this is a proper kung fu master of linear
   algebra (and to be fair, I always have a few of these people in my
   intorductory statistics class), it *will* help *you* to know that the
   solution to the estimation problem turns out to be
   :math:`\hat{b} = (\mathbf{X}^\prime\mathbf{X})^{-1} \mathbf{X}^\prime y`,
   where :math:`\hat{b}` is a vector containing the estimated regression
   coefficients, **X** is the “design matrix” that contains
   the predictor variables (plus an additional column containing all
   ones; strictly **X** is a matrix of the regressors, but
   I haven’t discussed the distinction yet), and *y* is a vector
   containing the outcome variable. For everyone else, this isn’t
   exactly helpful and can be downright scary. However, since quite a
   few things in linear regression can be written in linear algebra
   terms, you’ll see a bunch of footnotes like this one in this chapter.
   If you can follow the maths in them, great. If not, ignore it.

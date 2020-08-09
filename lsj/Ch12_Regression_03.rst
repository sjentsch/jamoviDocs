.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

What is a linear regression model? [sec:introregression]
--------------------------------------------------------

Stripped to its bare essentials, linear regression models are basically
a slightly fancier version of the Pearson correlation
(Section `[sec:correl] <#sec:correl>`__), though as we’ll see regression
models are much more powerful tools.

| Since the basic ideas in regression are closely tied to correlation,
  we’ll return to the
| ``parenthood.csv`` file that we were using to illustrate how
  correlations work. Recall that, in this data set we were trying to
  find out why Dan is so very grumpy all the time and our working
  hypothesis was that I’m not getting enough sleep. We drew some
  scatterplots to help us examine the relationship between the amount of
  sleep I get and my grumpiness the following day, as in
  :numref:`fig:scatterplot2] <#fig:scatterplot2>`__, and as we saw
  previously this corresponds to a correlation of :math:`r=-.90`, but
  what we find ourselves secretly imagining is something that looks
  closer to :numref:`fig:regression1] <#fig:regression1>`__\ a. That is,
  we mentally draw a straight line through the middle of the data. In
  statistics, this line that we’re drawing is called a **regression
  line**. Notice that, since we’re not idiots, the regression line goes
  through the middle of the data. We don’t find ourselves imagining
  anything like the rather silly plot shown in
  :numref:`fig:regression1] <#fig:regression1>`__\ b.

=== ===
\   
(a) (b)
=== ===

This is not highly surprising. The line that I’ve drawn in
:numref:`fig:regression1] <#fig:regression1>`__\ b doesn’t “fit” the
data very well, so it doesn’t make a lot of sense to propose it as a way
of summarising the data, right? This is a very simple observation to
make, but it turns out to be very powerful when we start trying to wrap
just a little bit of maths around it. To do so, let’s start with a
refresher of some high school maths. The formula for a straight line is
usually written like this

.. math:: y = a + bx

Or, at least, that’s what it was when I went to high school all those
years ago. The two *variables* are *x* and *y*, and we have
two *coefficients*, :math:`a` and *b*.\ [#]_ The coefficient
:math:`a` represents the **y*-intercept* of the line, and
coefficient *b* represents the *slope* of the line. Digging
further back into our decaying memories of high school (sorry, for some
of us high school was a long time ago), we remember that the intercept
is interpreted as “the value of *y* that you get when
:math:`x=0`”. Similarly, a slope of *b* means that if you increase
the *x*-value by 1 unit, then the *y*-value goes up by
*b* units, and a negative slope means that the *y*-value
would go down rather than up. Ah yes, it’s all coming back to me now.
Now that we’ve remembered that it should come as no surprise to discover
that we use the exact same formula for a regression line. If *Y*
is the outcome variable (the DV) and *X* is the predictor variable
(the IV), then the formula that describes our regression is written like
this

.. math:: \hat{Y_i} = b_0 + b_1 X_i

Hmm. Looks like the same formula, but there’s some extra frilly bits in
this version. Let’s make sure we understand them. Firstly, notice that
I’ve written :math:`X_i` and :math:`Y_i` rather than just plain old
*X* and *Y*. This is because we want to remember that we’re
dealing with actual data. In this equation, :math:`X_i` is the value of
predictor variable for the i\ th observation (i.e., the number
of hours of sleep that I got on day i of my little study), and
:math:`Y_i` is the corresponding value of the outcome variable (i.e., my
grumpiness on that day). And although I haven’t said so explicitly in
the equation, what we’re assuming is that this formula works for all
observations in the data set (i.e., for all i). Secondly, notice
that I wrote :math:`\hat{Y}_i` and not :math:`Y_i`. This is because we
want to make the distinction between the *actual data* :math:`Y_i`, and
the *estimate* :math:`\hat{Y}_i` (i.e., the prediction that our
regression line is making). Thirdly, I changed the letters used to
describe the coefficients from :math:`a` and *b* to :math:`b_0`
and :math:`b_1`. That’s just the way that statisticians like to refer to
the coefficients in a regression model. I’ve no idea why they chose
*b*, but that’s what they did. In any case :math:`b_0` always
refers to the intercept term, and :math:`b_1` refers to the slope.

Excellent, excellent. Next, I can’t help but notice that, regardless of
whether we’re talking about the good regression line or the bad one, the
data don’t fall perfectly on the line. Or, to say it another way, the
data :math:`Y_i` are not identical to the predictions of the regression
model :math:`\hat{Y_i}`. Since statisticians love to attach letters,
names and numbers to everything, let’s refer to the difference between
the model prediction and that actual data point as a *residual*, and
we’ll refer to it as :math:`\epsilon_i`.\ [#]_ Written using mathematics,
the residuals are defined as

.. math:: \epsilon_i = Y_i - \hat{Y}_i

which in turn means that we can write down the complete linear
regression model as

.. math:: Y_i = b_0 + b_1 X_i + \epsilon_i

------

.. [#]
   Also sometimes written as :math:`y = mx + c` where m is the slope
   coefficient and c is the intercept (constant) coefficient.

.. [#]
   The :math:`\epsilon` symbol is the Greek letter epsilon. It’s
   traditional to use :math:`\epsilon_i` or :math:`e_i` to denote a
   residual.

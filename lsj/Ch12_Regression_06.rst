.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Quantifying the fit of the regression model [sec:r2]
----------------------------------------------------

So we now know how to estimate the coefficients of a linear regression
model. The problem is, we don’t yet know if this regression model is any
good. For example, the ``regression.1`` model *claims* that every hour
of sleep will improve my mood by quite a lot, but it might just be
rubbish. Remember, the regression model only produces a prediction
:math:`\hat{Y}_i` about what my mood is like, but my actual mood is
:math:`Y_i`. If these two are very close, then the regression model has
done a good job. If they are very different, then it has done a bad job.

The *R²* (R-squared) value [sec:rsquared]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once again, let’s wrap a little bit of mathematics around this. Firstly,
we’ve got the sum of the squared residuals

.. math:: \mbox{SS}_{res} = \sum_i (Y_i - \hat{Y}_i)^2

which we would hope to be pretty small. Specifically, what we’d like is
for it to be very small in comparison to the total variability in the
outcome variable

.. math:: \mbox{SS}_{tot} = \sum_i (Y_i - \bar{Y})^2

While we’re here, let’s calculate these values ourselves, not by hand
though. Let’s use something like Excel or another standard spreadsheet
programme. I have done this by opening up the ``parenthood.csv`` file in
Excel and saving it as ``parenthood_rsquared.xls`` so that I can work on
it. The first thing to do is calculate the :math:`\hat{Y}` values, and
for the simple model that uses only a single predictor we would do the
following:

. create a new column called ``Y.pred`` using the formula
``= 125.97 + (-8.94 * dan.sleep)``

Okay, now that we’ve got a variable which stores the regression model
predictions for how grumpy I will be on any given day, let’s calculate
our sum of squared residuals. We would do that using the following
formula:

| . calculate the SS(resid) by creating a new column called
  ``(Y - Y.pred) ^ 2`` using the formula
| ``= (dan.grump - Y.pred) ^ 2``.

| . Then, at the bottom of this column calculate the sum of these
  values,
| i.e. ``sum((Y - Y.pred) ^ 2)``.

This should give you a value of **1838.722**. Wonderful. A big number
that doesn’t mean very much. Still, let’s forge boldly onwards anyway
and calculate the total sum of squares as well. That’s also pretty
simple. Calculate the ``SS(tot)`` by:

| . At the bottom of the dan.grump column, calculate the mean value for
  ``dan.grump``
| (NB Excel uses the word ``AVERAGE`` rather than ``mean`` in its
  function).

| . Then create a new column, called ``(Y - mean(Y))^2 )`` using the
  formula
| ``= (dan.grump - AVERAGE(dan.grump)) ^ 2`` .

| . Then, at the bottom of this column calculate the sum of these
  values,
| i.e. ``sum((Y - mean(Y)) ^ 2)``.

This should give you a value of **9998.59**. Hmm. Well, it’s a much
bigger number than the last one, so this does suggest that our
regression model was making good predictions. But it’s not very
interpretable.

Perhaps we can fix this. What we’d like to do is to convert these two
fairly meaningless numbers into one number. A nice, interpretable
number, which for no particular reason we’ll call *R²*. What we
would like is for the value of *R²* to be equal to 1 if the
regression model makes no errors in predicting the data. In other words,
if it turns out that the residual errors are zero. That is, if
:math:`\mbox{SS}_{res} = 0` then we expect :math:`R^2 = 1`. Similarly,
if the model is completely useless, we would like *R²* to be
equal to 0. What do I mean by “useless”? Tempting as it is to demand
that the regression model move out of the house, cut its hair and get a
real job, I’m probably going to have to pick a more practical
definition. In this case, all I mean is that the residual sum of squares
is no smaller than the total sum of squares,
:math:`\mbox{SS}_{res} = \mbox{SS}_{tot}`. Wait, why don’t we do exactly
that? The formula that provides us with our *R²* value is pretty
simple to write down,

.. math:: R^2 = 1 - \frac{\mbox{SS}_{res}}{\mbox{SS}_{tot}}

and equally simple to calculate in Excel:

| . Calculate ``R.squared`` by typing into a blank cell the following:
| ``= 1 - (SS(resid) / SS(tot) )`` .

This gives a value for R² of **0.8161018**. The R²
value, sometimes called the **coefficient of determination**\ [#]_ has
a simple interpretation: it is the *proportion* of the variance in the
outcome variable that can be accounted for by the predictor. So, in this
case the fact that we have obtained :math:`R^2 = 0.816` means that the
predictor (``my.sleep``) explains 81.6% of the variance in the outcome
(``my.grump``).

Naturally, you don’t actually need to type all these commands into Excel
yourself if you want to obtain the *R²* value for your regression
model. As we’ll see later on in
Section `[sec:regressionsummary] <#sec:regressionsummary>`__, all you
need to do is specify this as an option in jamovi. However, let’s put
that to one side for the moment. There’s another property of *R²*
that I want to point out.

The relationship between regression and correlation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

At this point we can revisit my earlier claim that regression, in this
very simple form that I’ve discussed so far, is basically the same thing
as a correlation. Previously, we used the symbol *r* to denote a
Pearson correlation. Might there be some relationship between the value
of the correlation coefficient *r* and the *R²* value from
linear regression? Of course there is: the squared correlation
:math:`r^2` is identical to the *R²* value for a linear
regression with only a single predictor. In other words, running a
Pearson correlation is more or less equivalent to running a linear
regression model that uses only one predictor variable.

The adjusted *R²* (R-squared) value
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

One final thing to point out before moving on. It’s quite common for
people to report a slightly different measure of model performance,
known as “adjusted *R²*”. The motivation behind calculating the
adjusted *R²* value is the observation that adding more
predictors into the model will *always* cause the *R²* value to
increase (or at least not decrease).

The adjusted *R²* value introduces a slight change to the
calculation, as follows. For a regression model with K
predictors, fit to a data set containing *N* observations, the
adjusted *R²* is:

.. math:: \mbox{adj. } R^2 = 1 - \left(\frac{\mbox{SS}_{res}}{\mbox{SS}_{tot}} \times \frac{N-1}{N-K-1} \right)

This adjustment is an attempt to take the degrees of freedom into
account. The big advantage of the adjusted *R²* value is that
when you add more predictors to the model, the adjusted *R²*
value will only increase if the new variables improve the model
performance more than you’d expect by chance. The big disadvantage is
that the adjusted *R²* value *can’t* be interpreted in the
elegant way that *R²* can. :math:`R^2` has a simple
interpretation as the proportion of variance in the outcome variable
that is explained by the regression model. To my knowledge, no
equivalent interpretation exists for adjusted *R²*.

An obvious question then is whether you should report *R²* or
adjusted *R²*. This is probably a matter of personal preference.
If you care more about interpretability, then *R²* is better. If
you care more about correcting for bias, then adjusted *R²* is
probably better. Speaking just for myself, I prefer *R²*. My
feeling is that it’s more important to be able to interpret your measure
of model performance. Besides, as we’ll see in
Section `[sec:regressiontests] <#sec:regressiontests>`__, if you’re
worried that the improvement in *R²* that you get by adding a
predictor is just due to chance and not because it’s a better model,
well we’ve got hypothesis tests for that.

------

.. [#]
   And by “sometimes” I mean “almost never”. In practice everyone just calls it
   “*R*-squared”.

.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Model selection[sec:modelselreg]
--------------------------------

One fairly major problem that remains is the problem of “model
selection”. That is, if we have a data set that contains several
variables, which ones should we include as predictors, and which ones
should we not include? In other words, we have a problem of **variable
selection**. In general, model selection is a complex business but it’s
made somewhat simpler if we restrict ourselves to the problem of
choosing a subset of the variables that ought to be included in the
model. Nevertheless, I’m not going to try covering even this reduced
topic in a lot of detail. Instead, I’ll talk about two broad principles
that you need to think about, and then discuss one concrete tool that
jamovi provides to help you select a subset of variables to include in
your model. First, the two principles:

-  It’s nice to have an actual substantive basis for your choices. That
   is, in a lot of situations you the researcher have good reasons to
   pick out a smallish number of possible regression models that are of
   theoretical interest. These models will have a sensible
   interpretation in the context of your field. Never discount the
   importance of this. Statistics serves the scientific process, not the
   other way around.

-  To the extent that your choices rely on statistical inference, there
   is a trade off between simplicity and goodness of fit. As you add
   more predictors to the model you make it more complex. Each predictor
   adds a new free parameter (i.e., a new regression coefficient), and
   each new parameter increases the model’s capacity to “absorb” random
   variations. So the goodness of fit (e.g., *R²*) continues to
   rise, sometimes trivially or by chance, as you add more predictors no
   matter what. If you want your model to be able to generalise well to
   new observations you need to avoid throwing in too many variables.

This latter principle is often referred to as **Ockham’s razor** and is
often summarised in terms of the following pithy saying: *do not
multiply entities beyond necessity*. In this context, it means don’t
chuck in a bunch of largely irrelevant predictors just to boost your
*R²*. Hmm. Yeah, the original was better.

In any case, what we need is an actual mathematical criterion that will
implement the qualitative principle behind Ockham’s razor in the context
of selecting a regression model. As it turns out there are several
possibilities. The one that I’ll talk about is the **Akaike information
criterion** (AIC; `Akaike, 1974 <References.html#akaike-1974>`__\ )
simply because it’s available as an option in jamovi.

In the context of a linear regression model (and ignoring terms that
don’t depend on the model in any way!), the AIC for a model that has
K predictor variables plus an intercept is

.. math:: \mbox{AIC} = \displaystyle\frac{\mbox{SS}_{res}}{\hat{\sigma}^2} + 2K

The smaller the AIC value, the better the model performance. If we
ignore the low level details it’s fairly obvious what the AIC does. On
the left we have a term that increases as the model predictions get
worse; on the right we have a term that increases as the model
complexity increases. The best model is the one that fits the data well
(low residuals, left hand side) using as few predictors as possible (low
K, right hand side). In short, this is a simple implementation
of Ockham’s razor.

AIC can be added to the ``Model Fit Measures`` output Table when the ``AIC``
checkbox is clicked, and a rather clunky way of assessing different
models is seeing if the ``AIC`` value is lower if you remove one or more
of the predictors in the regression model. This is the only way
currently implemented in jamovi, but there are alternatives in other
more powerful programmes, such as R. These alternative methods can
automate the process of selectively removing (or adding) predictor
variables to find the best AIC. Although these methods are not
implemented in jamovi, I will mention them briefly below just so you
know about them.

Backward elimination
~~~~~~~~~~~~~~~~~~~~

In backward elimination you start with the complete regression model,
including all possible predictors. Then, at each “step” we try all
possible ways of removing one of the variables, and whichever of these
is best (in terms of lowest AIC value) is accepted. This becomes our new
regression model, and we then try all possible deletions from the new
model, again choosing the option with lowest AIC. This process continues
until we end up with a model that has a lower AIC value than any of the
other possible models that you could produce by deleting one of its
predictors.

Forward selection
~~~~~~~~~~~~~~~~~

As an alternative, you can also try **forward selection**. This time
around we start with the smallest possible model as our start point, and
only consider the possible additions to the model. However, there’s one
complication. You also need to specify what the largest possible model
you’re willing to entertain is.

Although backward and forward selection can lead to the same conclusion,
they don’t always.

A caveat
~~~~~~~~

Automated variable selection methods are seductive things, especially
when they’re bundled up in (fairly) simple functions in powerful
statistical programmes. They provide an element of objectivity to your
model selection, and that’s kind of nice. Unfortunately, they’re
sometimes used as an excuse for thoughtlessness. No longer do you have
to think carefully about which predictors to add to the model and what
the theoretical basis for their inclusion might be. Everything is solved
by the magic of AIC. And if we start throwing around phrases like
Ockham’s razor, well it sounds like everything is wrapped up in a nice
neat little package that no-one can argue with.

Or, perhaps not. Firstly, there’s very little agreement on what counts
as an appropriate model selection criterion. When I was taught backward
elimination as an undergraduate, we used *F*-tests to do it,
because that was the default method used by the software. I’ve described
using AIC, and since this is an introductory text that’s the only method
I’ve described, but the AIC is hardly the Word of the Gods of
Statistics. It’s an approximation, derived under certain assumptions,
and it’s guaranteed to work only for large samples when those
assumptions are met. Alter those assumptions and you get a different
criterion, like the BIC for instance (also available in jamovi). Take a
different approach again and you get the NML criterion. Decide that
you’re a Bayesian and you get model selection based on posterior odds
ratios. Then there are a bunch of regression specific tools that I
haven’t mentioned. And so on. All of these different methods have
strengths and weaknesses, and some are easier to calculate than others
(AIC is probably the easiest of the lot, which might account for its
popularity). Almost all of them produce the same answers when the answer
is “obvious” but there’s a fair amount of disagreement when the model
selection problem becomes hard.

What does this mean in practice? Well, you *could* go and spend several
years teaching yourself the theory of model selection, learning all the
ins and outs of it so that you could finally decide on what you
personally think the right thing to do is. Speaking as someone who
actually did that, I wouldn’t recommend it. You’ll probably come out the
other side even more confused than when you started. A better strategy
is to show a bit of common sense. If you’re staring at the results of an
automated backwards or forwards selection procedure, and the model that
makes sense is close to having the smallest AIC but is narrowly defeated
by a model that doesn’t make any sense, then trust your instincts.
Statistical model selection is an inexact tool, and as I said at the
beginning, *interpretability matters*.

Comparing two regression models
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An alternative to using automated model selection procedures is for the
researcher to explicitly select two or more regression models to compare
to each other. You can do this in a few different ways, depending on
what research question you’re trying to answer. Suppose we want to know
whether or not the amount of sleep that my son got has any relationship
to my grumpiness, over and above what we might expect from the amount of
sleep that I got. We also want to make sure that the day on which we
took the measurement has no influence on the relationship. That is,
we’re interested in the relationship between ``baby.sleep`` and
``dan.grump``, and from that perspective ``dan.sleep`` and ``day`` are
nuisance variable or **covariates** that we want to control for. In this
situation, what we would like to know is whether
``dan.grump ~ dan.sleep + day + baby.sleep`` (which I’ll call Model 2,
or ``M2``) is a better regression model for these data than
``dan.grump ~ dan.sleep + day`` (which I’ll call Model 1, or ``M1``).
There are two different ways we can compare these two models, one based
on a model selection criterion like AIC, and the other based on an
explicit hypothesis test. I’ll show you the AIC based approach first
because it’s simpler, and follows naturally from discussion in the last
section. The first thing I need to do is actually run the two
regressions, note the AIC for each one, and then select the model with
the smaller AIC value as it is judged to be the better model for these
data. Actually, don’t do this just yet. Read on because there is an easy
way in jamovi to get the AIC values for different models included in one
table.\ [#]_

A somewhat different approach to the problem comes out of the hypothesis
testing framework. Suppose you have two regression models, where one of
them (Model 1) contains a *subset* of the predictors from the other one
(Model 2). That is, Model 2 contains all of the predictors included in
Model 1, plus one or more additional predictors. When this happens we
say that Model 1 is **nested** within Model 2, or possibly that Model 1
is a **submodel** of Model 2. Regardless of the terminology, what this
means is that we can think of Model 1 as a null hypothesis and Model 2
as an alternative hypothesis. And in fact we can construct an *F*
test for this in a fairly straightforward fashion.

We can fit both models to the data and obtain a residual sum of squares
for both models. I’ll denote these as SS\ :math:`_{res}^{(1)}` and
SS\ :math:`_{res}^{(2)}` respectively. The superscripting here just
indicates which model we’re talking about. Then our *F* statistic
is

.. math:: F = \frac{(\mbox{SS}_{res}^{(1)} - \mbox{SS}_{res}^{(1)})/k}{(\mbox{SS}_{res}^{(2)})/(N-p-1)}

where *N* is the number of observations, *p* is the number
of predictors in the full model (not including the intercept), and
k is the difference in the number of parameters between the two
models.\ [#]_ The degrees of freedom here are k and
:math:`N-p-1`. Note that it’s often more convenient to think about the
difference between those two SS values as a sum of squares in its own
right. That is

.. math:: \mbox{SS}_\Delta = \mbox{SS}_{res}^{(1)} - \mbox{SS}_{res}^{(2)}

The reason why this is helpful is that we can express
:math:`\mbox{SS}_\Delta` as a measure of the extent to which the two
models make different predictions about the the outcome variable.
Specifically,

.. math:: \mbox{SS}_\Delta  = \sum_{i} \left(\hat{y}_i^{(2)} - \hat{y}_i^{(1)} \right)^2

where :math:`\hat{y}_i^{(1)}` is the fitted value for :math:`y_i`
according to model :math:`M_1` and :math:`\hat{y}_i^{(2)}` is the fitted
value for :math:`y_i` according to model :math:`M_2`.

[fig:reg8]

Okay, so that’s the hypothesis test that we use to compare two
regression models to one another. Now, how do we do it in jamovi? The
answer is to use the ``Model Builder`` option and specify the Model 1
predictors ``dan.sleep`` and ``day`` in ``Block 1`` and then add the
additional predictor from Model 2 (``baby.sleep``) in ``Block 2``, as in
:numref:`[fig:reg8] <#fig:reg8>`__. This shows, in the ``Model
Comparisons`` Table, that for the comparisons between Model 1 and Model
2, *F*\ (1,96) = 0.00, *p* = 0.954. Since we have
:math:`p>.05` we retain the null hypothesis (``M1``). This approach to
regression, in which we add all of our covariates into a null model,
then *add* the variables of interest into an alternative model, and then
compare the two models in a hypothesis testing framework, is often
referred to as **hierarchical regression**.

We can also use this ``Model Comparison`` option to display a table that
shows the AIC and BIC for each model, making it easy to compare and
identify which model has the lowest value, as in :numref:`fig:reg8] <#fig:reg8>`__.

------

.. [#]
   While I’m on this topic I should point out that the empirical evidence
   suggests that BIC is a better criterion than AIC. In most simulation studies
   that I’ve seen, BIC does a much better job of selecting the correct model.

.. [#]
   It’s worth noting in passing that this same *F*-statistic can be used to
   test a much broader range of hypotheses than those that I’m mentioning here.
   Very briefly, notice that the nested model M1 corresponds to the full model
   M2 when we constrain some of the regression coefficients to zero. It is
   sometimes useful to construct sub-models by placing other kinds of
   constraints on the regression coefficients. For instance, maybe two
   different coefficients might have to sum to zero, or something like that.
   You can construct hypothesis tests for those kind of constraints too, but it
   is somewhat more complicated and the sampling distribution for *F* can end
   up being something known as the non-central *F*-distribution, which is
   waaaaay beyond the scope of this book! All I want to do is alert you to this
   possibility.

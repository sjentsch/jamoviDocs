.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

The one-sample *z*-test
-----------------------

In this section I’ll describe one of the most useless tests in all of
statistics: the **z-test**. Seriously – this test is almost
never used in real life. Its only real purpose is that, when teaching
statistics, it’s a very convenient stepping stone along the way towards
the *t*-test, which is probably the most (over)used tool in all
statistics.

The inference problem that the test addresses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To introduce the idea behind the *z*-test, let’s use a simple
example. A friend of mine, Dr Zeppo, grades his introductory statistics
class on a curve. Let’s suppose that the average grade in his class is
67.5, and the standard deviation is 9.5. Of his many hundreds of
students, it turns out that 20 of them also take psychology classes. Out
of curiosity, I find myself wondering if the psychology students tend to
get the same grades as everyone else (i.e., mean 67.5) or do they tend
to score higher or lower? He emails me the ``zeppo`` dataset, which I
use to look at the ``grades`` of those students, in the jamovi
spreadsheet view,

.. code-block::

   50 60 60 64 66 66 67 69 70 74 76 76 77 79 79 79 81 82 82 89

and then calculate the mean in ``Exploration`` → ``Descriptives``\ [#]_. The
mean value is 72.3.

Hmm. It *might* be that the psychology students are scoring a bit higher than
normal. That sample mean of :math:`\bar{X}` = 72.3 is a fair bit higher than
the hypothesised population mean of µ = 67.5 but, on the other hand, a sample
size of *N* = 20 isn’t all that big. Maybe it’s pure chance.

To answer the question, it helps to be able to write down what it is
that I think I know. Firstly, I know that the sample mean is
:math:`\bar{X}` = 72.3. If I’m willing to assume that the psychology
students have the same standard deviation as the rest of the class then
I can say that the population standard deviation is σ = 9.5. I’ll also assume
that since Dr Zeppo is grading to a curve, the psychology student grades are
normally distributed.

Next, it helps to be clear about what I want to learn from the data. In
this case my research hypothesis relates to the *population* mean *µ* for the
psychology student grades, which is unknown. Specifically, I want to know if
*µ* = 67.5 or not. Given that this is what I know, can we devise a hypothesis
test to solve our problem? The data, along with the hypothesised distribution
from which they are thought to arise, are shown in :numref:`fig-zeppo`. Not
entirely obvious what the right answer is, is it? For this, we are going to
need some statistics.

.. ----------------------------------------------------------------------------

.. _fig-zeppo:
.. figure:: ../_images/lsj_Zeppo.*
   :alt: Theoretical and empirical distribution of student grades

   The theoretical distribution (solid line) from which the psychology student
   grades (bars) are supposed to have been generated.
   
.. ----------------------------------------------------------------------------

Constructing the hypothesis test
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The first step in constructing a hypothesis test is to be clear about
what the null and alternative hypotheses are. This isn’t too hard to do.
Our null hypothesis, H\ :sub:`0`, is that the true population mean
*µ* for psychology student grades is 67.5%, and our alternative
hypothesis is that the population mean *isn’t* 67.5%. If we write this
in mathematical notation, these hypotheses become:

| H\ :sub:`0`: *µ* = 67.5
| H\ :sub:`1`: *µ* ≠ 67.5

though to be honest this notation doesn’t add much to our understanding
of the problem, it’s just a compact way of writing down what we’re
trying to learn from the data. The null hypotheses H\ :sub:`0` and the
alternative hypothesis H\ :sub:`1` for our test are both illustrated in
:numref:`fig-ztesthyp`. In addition to providing us
with these hypotheses, the scenario outlined above provides us with a
fair amount of background knowledge that might be useful. Specifically,
there are two special pieces of information that we can add:

#. The psychology grades are normally distributed.

#. The true standard deviation of these scores *σ* is known
   to be 9.5.

For the moment, we’ll act as if these are absolutely trustworthy facts.
In real life, this kind of absolutely trustworthy background knowledge
doesn’t exist, and so if we want to rely on these facts we’ll just have
make the *assumption* that these things are true. However, since these
assumptions may or may not be warranted, we might need to check them.
For now though, we’ll keep things simple.

.. ----------------------------------------------------------------------------

.. _fig-ztesthyp:
.. figure:: ../_images/lsj_oneSampleZTestHyp.*
   :alt: One-sample z-test: Illustration of the null and alternative hypotheses

   Graphical illustration of the null and alternative hypotheses assumed by the
   one sample z-test (the two sided version, that is). The null and alternative
   hypotheses both assume that the population distribution is normal, and
   additionally assumes that the population standard deviation is known (fixed
   at some value σ\ :sub:`0`\). The null hypothesis (left) is that the
   population mean μ is equal to some specified value μ\ :sub:`0`. The
   alternative hypothesis is that the population mean differs from this value,
   μ ≠ μ\ :sub:`0`.

.. ----------------------------------------------------------------------------

The next step is to figure out what we would be a good choice for a
diagnostic test statistic, something that would help us discriminate
between H\ :sub:`0` and H\ :sub:`1`. Given that the hypotheses all refer
to the population mean *µ*, you’d feel pretty confident that the
sample mean :math:`\bar{X}` would be a pretty useful place to start.
What we could do is look at the difference between the sample mean
:math:`\bar{X}` and the value that the null hypothesis predicts for the
population mean. In our example that would mean we calculate
:math:`\bar{X}` - 67.5. More generally, if we let *µ*\ :sub:`0` refer to
the value that the null hypothesis claims is our population mean, then
we’d want to calculate

| :math:`\bar{X}` - *µ*\ :sub:`0`

If this quantity equals or is very close to 0, things are looking good
for the null hypothesis. If this quantity is a long way away from 0,
then it’s looking less likely that the null hypothesis is worth
retaining. But how far away from zero should it be for us to reject
H\ :sub:`0`?

To figure that out we need to be a bit more sneaky, and we’ll need to
rely on those two pieces of background knowledge that I wrote down
previously; namely that the raw data are normally distributed and that
we know the value of the population standard deviation *σ*.
If the null hypothesis is actually true, and the true mean is
*µ*\ :sub:`0`, then these facts together mean that we know the complete
population distribution of the data: a normal distribution with mean *µ*\ :sub:`0`
and standard deviation *σ*. Adopting the notation from Section
`Normal distribution <Ch07_Probability_5.html#the-normal-distribution>`__,
a statistician might write this as:

| X ~ Normal(*µ*\ :sub:`0`, σ²)

Okay, if that’s true, then what can we say about the distribution of
:math:`\bar{X}`? Well, as we discussed earlier (see `The central limit theorem 
<Ch08_Estimation_3.html#the-central-limit-theorem>`__), the sampling
distribution of the mean :math:`\bar{X}` is also normal, and has mean *µ*. But
the standard deviation of this sampling distribution
:math:`\mbox{\textsc{se}}(\bar{X})`, which is called the *standard error
of the mean*, is

.. math:: \mbox{\textsc{se}}(\bar{X}) = \frac{\sigma}{\sqrt{N}}

In other words, if the null hypothesis is true then the sampling
distribution of the mean can be written as follows:

.. math:: \bar{X} \sim \mbox{Normal}(\mu_0,\mbox{\textsc{se}}(\bar{X}))

Now comes the trick. What we can do is convert the sample mean :math:`\bar{X}`
into a `standard score <Ch04_Descriptives_5.html#standard-scores>`__. This is
conventionally written as *z*, but for now I’m going to refer to it as
:math:`z_{\bar{X}}`. (The reason for using this expanded notation is to help
you remember that we’re calculating a standardised version of a sample mean,
*not* a standardised version of a single observation, which is what a *z*-score
usually refers to). When we do so the *z*-score for our sample mean is:

.. math:: z_{\bar{X}} = \frac{\bar{X} - \mu_0}{\mbox{\textsc{se}}(\bar{X})}

or, equivalently:

.. math:: z_{\bar{X}} =  \frac{\bar{X} - \mu_0}{\sigma / \sqrt{N}}

This *z*-score is our test statistic. The nice thing about using this as our
test statistic is that like all *z*-scores, it has a standard normal
distribution:

| :math:`z_{\bar{X}}` ~ Normal(0, 1)

(again, see Section `Standard scores <Ch04_Descriptives_5.html#standard-scores>`__
if you’ve forgotten why this is true). In other words, regardless of what scale
the original data are on, the *z*-statistic itself always has the same
interpretation: it’s equal to the number of standard errors that separate the
observed sample mean :math:`\bar{X}` from the population mean *µ*\ :sub:`0`
predicted by the null hypothesis. Better yet, regardless of what the population
parameters for the raw scores actually are, the 5% critical regions for the
*z*-test are always the same, as illustrated in :numref:`fig-ztest`. And what
this meant, way back in the days where people did all their statistics by hand,
is that someone could publish a table like this:

+-------------------+----------------+----------------+                                          
| desired *α* level | two-sided test | one-sided test |
+===================+================+================+                                          
| 0.1               | 1.644854       | 1.281552       |
+-------------------+----------------+----------------+
| 0.05              | 1.959964       | 1.644854       |
+-------------------+----------------+----------------+
| 0.01              | 2.575829       | 2.326348       |
+-------------------+----------------+----------------+
| 0.001             | 3.290527       | 3.090232       |
+-------------------+----------------+----------------+

This, in turn, meant that researchers could calculate their
*z*-statistic by hand and then look up the critical value in a
text book.

.. ----------------------------------------------------------------------------

.. _fig-ztest:
.. figure:: ../_images/lsj_zTestOneTwoTailed.*
   :alt: Rejection regions for the two- and one-sided z-tests

   Rejection regions for the two-sided z-test (left panel) and the one-sided
   z-test (right panel)
   
.. ----------------------------------------------------------------------------

A worked example, by hand
~~~~~~~~~~~~~~~~~~~~~~~~~

Now, as I mentioned earlier, the *z*-test is almost never used in
practice. It’s so rarely used in real life that the basic installation
of jamovi doesn’t have a built in function for it. However, the test is
so incredibly simple that it’s really easy to do one manually. Let’s go
back to the data from Dr Zeppo’s class. Having loaded the ``grades``
data, the first thing I need to do is calculate the sample mean, which
I’ve already done (72.3). We already have the known population standard
deviation (*σ* = 9.5`), and the value of the population mean
that the null hypothesis specifies (*µ*\ :sub:`0` = 67.5), and we know
the sample size (*N* = 20).

Next, let’s calculate the (true) standard error of the mean (easily done
with a calculator):

.. code-block:: R

       sem.true = sd.true / sqrt(N) 
            = 9.5 / sqrt(20) 
            = 2.124265

And finally, we calculate our *z*-score:

.. code-block:: R

       z.score  = (sample.mean - mu.null) / sem.true 
            = (72.3 - 67.5) / 2.124265 
            = 2.259606

At this point, we would traditionally look up the value 2.26 in our
table of critical values. Our original hypothesis was two-sided (we
didn’t really have any theory about whether psych students would be
better or worse at statistics than other students) so our hypothesis
test is two-sided (or two-tailed) also. Looking at the little table that
I showed earlier, we can see that 2.26 is bigger than the critical value
of 1.96 that would be required to be significant at
*α* = 0.05, but smaller than the value of 2.58 that would be
required to be significant at a level of *α* = 0.01.
Therefore, we can conclude that we have a significant effect, which we
might write up by saying something like this:

   With a mean grade of 73.2 in the sample of psychology students, and
   assuming a true population standard deviation of 9.5, we can conclude
   that the psychology students have significantly different statistics
   scores to the class average (*z* = 2.26, *N* = 20, *p* < 0.05).

Assumptions of the *z*-test
~~~~~~~~~~~~~~~~~~~~~~~~~~~

As I’ve said before, all statistical tests make assumptions. Some tests make
reasonable assumptions, while other tests do not. The test I’ve just described,
the one sample *z*-test, makes three basic assumptions. These are:

-  *Normality*. As usually described, the *z*-test assumes that the true
   population distribution is normal.\ [#]_ This is often a pretty reasonable
   assumption, and it’s also an assumption that we can check if we feel worried
   about it (see Section `Checking the normality of a sample 
   <Ch11_tTest_08.html#checking-the-normality-of-a-sample>`__).

-  *Independence*. The second assumption of the test is that the
   observations in your data set are not correlated with each other, or
   related to each other in some funny way. This isn’t as easy to check
   statistically, it relies a bit on good experimental design. An
   obvious (and stupid) example of something that violates this
   assumption is a data set where you “copy” the same observation over
   and over again in your data file so that you end up with a massive
   “sample size”, which consists of only one genuine observation. More
   realistically, you have to ask yourself if it’s really plausible to
   imagine that each observation is a completely random sample from the
   population that you’re interested in. In practice this assumption is
   never met, but we try our best to design studies that minimise the
   problems of correlated data.

-  *Known standard deviation*. The third assumption of the
   *z*-test is that the true standard deviation of the population
   is known to the researcher. This is just stupid. In no real world
   data analysis problem do you know the standard deviation
   *σ* of some population but are completely ignorant about
   the mean *µ*. In other words, this assumption is *always*
   wrong.

In view of the stupidity of assuming that *σ* is known, let’s
see if we can live without it. This takes us out of the dreary domain of
the *z*-test, and into the magical kingdom of the *t*-test,
with unicorns and fairies and leprechauns!

------

.. [#]
   In order to do this I had to change the measurement level for ``X``
   to ‘Continuous’, as during the opening / import of the csv file
   jamovi made this a nominal level variable, which isn’t right for my
   analysis

.. [#]
   Actually this is too strong. Strictly speaking the z test
   only requires that the sampling distribution of the mean be normally
   distributed. If the population is normal then it necessarily follows
   that the sampling distribution of the mean is also normal. However,
   as we saw when talking about the central limit theorem, it’s quite
   possible (even commonplace) for the sampling distribution to be
   normal even if the population distribution itself is non-normal.
   However, in light of the sheer ridiculousness of the assumption that
   the true standard deviation is known, there really isn’t much point
   in going into details on this front!

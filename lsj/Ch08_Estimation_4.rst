.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Estimating population parameters
--------------------------------

In all the IQ examples in the previous sections we actually knew the
population parameters ahead of time. As every undergraduate gets taught
in their very first lecture on the measurement of intelligence, IQ
scores are *defined* to have mean 100 and standard deviation 15.
However, this is a bit of a lie. How do we know that IQ scores have a
true population mean of 100? Well, we know this because the people who
designed the tests have administered them to very large samples, and
have then “rigged” the scoring rules so that their sample has mean 100.
That’s not a bad thing of course, it’s an important part of designing a
psychological measurement. However, it’s important to keep in mind that
this theoretical mean of 100 only attaches to the population that the
test designers used to design the tests. Good test designers will
actually go to some lengths to provide “test norms” that can apply to
lots of different populations (e.g., different age groups, nationalities
etc).

This is very handy, but of course almost every research project of
interest involves looking at a different population of people to those
used in the test norms. For instance, suppose you wanted to measure the
effect of low level lead poisoning on cognitive functioning in Port
Pirie, a South Australian industrial town with a lead smelter. Perhaps
you decide that you want to compare IQ scores among people in Port Pirie
to a comparable sample in Whyalla, a South Australian industrial town
with a steel refinery.\ [#]_ Regardless of which town you’re thinking
about, it doesn’t make a lot of sense simply to *assume* that the true
population mean IQ is 100. No-one has, to my knowledge, produced
sensible norming data that can automatically be applied to South
Australian industrial towns. We’re going to have to **estimate** the
population parameters from a sample of data. So how do we do this?

Estimating the population mean
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Suppose we go to Port Pirie and 100 of the locals are kind enough to sit
through an IQ test. The average IQ score among these people turns out to
be :math:`\bar{X}` = 98.5. So what is the true mean IQ for the entire
population of Port Pirie? Obviously, we don’t know the answer to that
question. It could be 97.2, but it could also be 103.5.
Our sampling isn’t exhaustive so we cannot give a definitive answer.
Nevertheless, if I was forced at gunpoint to give a “best guess” I’d
have to say 98.5. That’s the essence of statistical estimation:
giving a best guess.

In this example estimating the unknown poulation parameter is
straightforward. I calculate the sample mean and I use that as my
**estimate of the population mean**. It’s pretty simple, and in the next
section I’ll explain the statistical justification for this intuitive
answer. However, for the moment what I want to do is make sure you
recognise that the sample statistic and the estimate of the population
parameter are conceptually different things. A sample statistic is a
description of your data, whereas the estimate is a guess about the
population. With that in mind, statisticians often different notation to
refer to them. For instance, if the true population mean is denoted
*µ*, then we would use :math:`\hat\mu` to refer to our estimate
of the population mean. In contrast, the sample mean is denoted
:math:`\bar{X}` or sometimes *m*. However, in simple random
samples the estimate of the population mean is identical to the sample
mean. If I observe a sample mean of :math:`\bar{X}` = 98.5 then my
estimate of the population mean is also :math:`\hat\mu` = 98.5. To help
keep the notation clear, here’s a handy table:

+-------------------+-----------------------+-------------------------------+
| Symbol            | What is it?           | Do we know what it is?        |
+===================+=======================+===============================+
| :math:`\bar{X}`   | Sample mean           | Yes, calculated from the raw  |
|                   |                       |  data                         |
+-------------------+-----------------------+-------------------------------+
| *µ*               | True population mean  | Almost never known for sure   |
+-------------------+-----------------------+-------------------------------+
| :math:`\hat{\mu}` | Estimate of the       | Yes, identical to the sample  |
|                   | population mean       | mean in simple random samples |
+-------------------+-----------------------+-------------------------------+

Estimating the population standard deviation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

So far, estimation seems pretty simple, and you might be wondering why I
forced you to read through all that stuff about sampling theory. In the case of
the mean our estimate of the population parameter (i.e. :math:`\hat\mu`) turned
out to identical to the corresponding sample statistic (i.e. :math:`\bar{X}`).
However, that’s not always true. To see this, let’s have a think about how to
construct an **estimate of the population standard deviation**, which we’ll
denote :math:`\hat\sigma`. What shall we use as our estimate in this case? Your
first thought might be that we could do the same thing we did when estimating
the mean, and just use the sample statistic as our estimate. That’s almost the
right thing to do, but not quite.

Here’s why. Suppose I have a sample that contains a single observation. For
this example, it helps to consider a sample where you have no intuitions at all
about what the true population values might be, so let’s use something
completely fictitious. Suppose the observation in question measures the
*cromulence* of my shoes. It turns out that my shoes have a cromulence of 20.
So here’s my sample:

``20``

This is a perfectly legitimate sample, even if it does have a sample
size of *N* = 1. It has a sample mean of 20 and because every
observation in this sample is equal to the sample mean (obviously!) it
has a sample standard deviation of 0. As a description of the *sample*
this seems quite right, the sample contains a single observation and
therefore there is no variation observed within the sample. A sample
standard deviation of *s* = 0 is the right answer here. But as an
estimate of the *population* standard deviation it feels completely
insane, right? Admittedly, you and I don’t know anything at all about
what “cromulence” is, but we know something about data. The only reason
that we don’t see any variability in the *sample* is that the sample is
too small to display any variation! So, if you have a sample size of
*N* = 1 it *feels* like the right answer is just to say “no idea at all”.

Notice that you *don’t* have the same intuition when it comes to the
sample mean and the population mean. If forced to make a best guess
about the population mean it doesn’t feel completely insane to guess
that the population mean is 20. Sure, you probably wouldn’t feel very
confident in that guess because you have only the one observation to
work with, but it’s still the best guess you can make.

Let’s extend this example a little. Suppose I now make a second
observation. My data set now has *N* = 2 observations of the
cromulence of shoes, and the complete sample now looks like this:

``20, 22``

This time around, our sample is *just* large enough for us to be able to
observe some variability: two observations is the bare minimum number
needed for any variability to be observed! For our new data set, the
sample mean is :math:`\bar{X}` = 21, and the sample standard deviation is
*s* = 1. What intuitions do we have about the population? Again, as
far as the population mean goes, the best guess we can possibly make is
the sample mean. If forced to guess we’d probably guess that the
population mean cromulence is 21. What about the standard deviation?
This is a little more complicated. The sample standard deviation is only
based on two observations, and if you’re at all like me you probably
have the intuition that, with only two observations we haven’t given the
population “enough of a chance” to reveal its true variability to us.
It’s not just that we suspect that the estimate is *wrong*, after all
with only two observations we expect it to be wrong to some degree. The
worry is that the error is *systematic*. Specifically, we suspect that
the sample standard deviation is likely to be smaller than the
population standard deviation.

This intuition feels right, but it would be nice to demonstrate this somehow.
There are in fact mathematical proofs that confirm this intuition, but unless
you have the right mathematical background they don’t help very much. Instead,
what I’ll do is simulate the results of some experiments. With that in mind,
let’s return to our IQ studies. Suppose the true population mean IQ is 100 and
the standard deviation is 15. First I’ll conduct an experiment in which I
measure *N* = 2 IQ scores and I’ll calculate the sample standard deviation.
If I do this over and over again, and plot a histogram of these sample standard
deviations, what I have is the *sampling distribution of the standard
deviation*. I’ve plotted this distribution in 
:numref:`fig-samplingDistSampleSD`. Even though the true population standard
deviation is 15 the average of the *sample* standard deviations is only 8.5.
Notice that this is a very different result to what we found in 
:numref:`fig-samplingDistDiffN` (middle panel) when we plotted the sampling
distribution of the mean, where the population mean is 100 and the average of
the sample means is also 100.

.. ----------------------------------------------------------------------------

.. _fig-samplingDistSampleSD:
.. figure:: ../_images/lsj_samplingDistSampleSD.*
   :alt: Sampling distrib. of the std. dev. for a “two IQ scores” experiment

   Sampling distribution of the sample standard deviation for a “two IQ
   scores” experiment. The true population standard deviation is 15 (dashed
   line), but as you can see from the histogram the vast majority of
   experiments will produce a much smaller sample standard deviation than this.
   On average, this experiment would produce a sample standard deviation of
   only 8.5, well below the true value! In other words, the sample standard
   deviation is a biased estimate of the population standard deviation.
   
.. ----------------------------------------------------------------------------

Now let’s extend the simulation. Instead of restricting ourselves to the
situation where *N* = 2, let’s repeat the exercise for sample sizes
from 1 to 10. If we plot the average sample mean and average sample
standard deviation as a function of sample size, you get the results
shown in :numref:`fig-biasMeanSD`. On the
left hand side (panel a) I’ve plotted the average sample mean and on the
right hand side (panel b) I’ve plotted the average standard deviation.
The two plots are quite different:*on average*, the average sample mean
is equal to the population mean. It is an **unbiased estimator**, which
is essentially the reason why your best estimate for the population mean
is the sample mean.\ [#]_ The plot on the right is quite different: on
average, the sample standard deviation *s* is *smaller* than the
population standard deviation *σ*. It is a **biased estimator**. In other
words, if we want to make a “best guess” :math:`\hat\sigma` about the value
of the population standard deviation *σ* we should make sure our guess is a
little bit larger than the sample standard deviation *s*.

.. ----------------------------------------------------------------------------

.. _fig-biasMeanSD:
.. figure:: ../_images/lsj_biasMeanSD.*
   :alt: Sample size: Mean (un-biased) and standard deviation (biased)

   Illustration of the fact that the sample mean is an unbiased estimator of
   the population mean (left panel), but the sample standard deviation is a
   biased estimator of the population standard deviation (right panel). For
   the figure, I generated 10,000 simulated data sets with 1 observation each,
   10,000 more with 2 observations, and so on up to a sample size of 10.
   Each data set consisted of fake IQ data, that is the data were normally
   distributed with a true population mean of 100 and standard deviation 15.
   On average, the sample means turn out to be 100, regardless of sample size
   (left panel). However, the sample standard deviations turn out to be
   systematically too small (right panel), especially for small sample sizes.
   
.. ----------------------------------------------------------------------------

The fix to this systematic bias turns out to be very simple. Here’s how it
works. Before tackling the standard deviation let’s look at the variance. If
you recall from `Measures of variability
<Ch04_Descriptives_2.html#measures-of-variability>`__, the
sample variance is defined to be the average of the squared deviations
from the sample mean. That is:

.. math:: s^2 = \frac{1}{N} \sum_{i=1}^N (X_i - \bar{X})^2

The sample variance *s*² is a biased estimator of the population variance 
*σ*². But as it turns out, we only need to make a tiny tweak to transform this
into an unbiased estimator. All we have to do is divide by *N* - 1 rather than
by *N*. If we do that, we obtain the following formula:

.. math:: \hat\sigma^2 = \frac{1}{N-1} \sum_{i=1}^N (X_i - \bar{X})^2

This is an unbiased estimator of the population variance *σ*.
Moreover, this finally answers the question we raised in `Measures of
variability <Ch04_Descriptives_2.html#measures-of-variability>`__. Why did
jamovi give us slightly different answers for variance? It’s because jamovi
calculates :math:`\hat\sigma^2` not *s*², that’s why. A similar story
applies for the standard deviation. If we divide by *N* - 1 rather
than *N* our estimate of the population standard deviation
becomes:

.. math:: \hat\sigma = \sqrt{\frac{1}{N-1} \sum_{i=1}^N (X_i - \bar{X})^2}

and when we use jamovi’s built in standard deviation function, what it’s
doing is calculating :math:`\hat\sigma`, not *s*.\ [#]_

One final point. In practice, a lot of people tend to refer to
:math:`\hat{\sigma}` (i.e., the formula where we divide by *N* - 1)
as the *sample* standard deviation. Technically, this is incorrect. The
*sample* standard deviation should be equal to *s* (i.e., the formula where
we divide by *N*). These aren’t the same thing, either conceptually or
numerically. One is a property of the sample, the other is an estimated
characteristic of the population. However, in almost every real life
application what we actually care about is the estimate of the population
parameter, and so people always report :math:`\hat\sigma` rather than *s*.
This is the right number to report, of course. It’s just that people tend to
get a little bit imprecise about terminology when they write it up, because
“sample standard deviation” is shorter than “estimated population standard
deviation”. It’s no big deal, and in practice I do the same thing
everyone else does. Nevertheless, I think it’s important to keep the two
*concepts* separate. It’s never a good idea to confuse “known properties
of your sample” with “guesses about the population from which it came”.
The moment you start thinking that *s* and :math:`\hat\sigma` are
the same thing, you start doing exactly that.

To finish this section off, here’s another couple of tables to help keep
things clear.

+------------------------+----------------------+------------------------+
| Symbol                 | What is it?          | Do we know what it is? |
+========================+======================+========================+
| *s*                    | Sample standard      | Yes, calculated from   |
|                        | deviation            | the raw data           |
+------------------------+----------------------+------------------------+
| *σ*                    | Population standard  | Almost never known for |
|                        | deviation            | sure                   |
+------------------------+----------------------+------------------------+
| :math:`\hat{\sigma}`   | Estimate of the      | Yes, but not the same  |
|                        | population standard  | as the sample standard |
|                        | deviation            | deviation              |
+------------------------+----------------------+------------------------+

+------------------------+----------------------+------------------------+
| Symbol                 | What is it?          | Do we know what it is? |
+========================+======================+========================+
| *s*\ ²                 | Sample variance      | Yes, calculated from   |
|                        |                      | the raw data           |
+------------------------+----------------------+------------------------+
| *σ*\ ²                 | Population variance  | Almost never known for |
|                        |                      | sure                   |
+------------------------+----------------------+------------------------+
| :math:`\hat{\sigma}^2` | Estimate of the      | Yes, but not the same  |
|                        | population variance  | as the sample variance |
+------------------------+----------------------+------------------------+

------

.. [#]
   Please note that if you were *actually* interested in this question
   you would need to be a *lot* more careful than I’m being here. You
   *can’t* just compare IQ scores in Whyalla to Port Pirie and assume
   that any differences are due to lead poisoning. Even if it were true
   that the only differences between the two towns corresponded to the
   different refineries (and it isn’t, not by a long shot), you need to
   account for the fact that people already *believe* that lead
   pollution causes cognitive deficits. If you recall back to Chapter `A
   brief introduction to research design <Ch02_StudyDesign.html>`__, this
   means that there are different demand effects for the Port Pirie sample
   than for the Whyalla sample. In other words, you might end up with an
   illusory group difference in your data, caused by the fact that
   people *think* that there is a real difference. I find it pretty
   implausible to think that the locals wouldn’t be well aware of what
   you were trying to do if a bunch of researchers turned up in Port
   Pirie with lab coats and IQ tests, and even less plausible to think
   that a lot of people would be pretty resentful of you for doing it.
   Those people won’t be as co-operative in the tests. Other people in
   Port Pirie might be *more* motivated to do well because they don’t
   want their home town to look bad. The motivational effects that would
   apply in Whyalla are likely to be weaker, because people don’t have
   any concept of “iron ore poisoning” in the same way that they have a
   concept for “lead poisoning”. Psychology is *hard*.

.. [#]
   I should note that I’m hiding something here. Unbiasedness is a
   desirable characteristic for an estimator, but there are other things
   that matter besides bias. However, it’s beyond the scope of this book
   to discuss this in any detail. I just want to draw your attention to
   the fact that there’s some hidden complexity here.

.. [#]
   Okay, I’m hiding something else here. In a bizarre and counter-intuitive
   twist, since :math:`\hat\sigma^2` is an unbiased estimator of *σ*², you’d
   assume that taking the square root would be fine and :math:`\hat\sigma`
   would be an unbiased estimator of *σ*. Right? Weirdly, it’s not. There’s
   actually a subtle, tiny bias in :math:`\hat\sigma`. This is just bizarre:
   :math:`\hat\sigma^2` is an unbiased estimate of the population variance
   *σ*², but when you take the square root, it turns out that
   :math:`\hat\sigma` is a biased estimator of the population standard
   deviation *σ*. Weird, weird, weird, right? So, why is :math:`\hat\sigma`
   biased? The technical answer is “because non-linear transformations (e.g.,
   the square root) don’t commute with expectation”, but that just sounds
   like gibberish to everyone who hasn’t taken a course in mathematical
   statistics. Fortunately, it doesn’t matter for practical purposes. The bias
   is small, and in real life everyone uses :math:`\hat\sigma` and it works
   just fine. Sometimes mathematics is just annoying.

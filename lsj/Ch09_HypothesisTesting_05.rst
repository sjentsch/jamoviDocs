.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

The *p* value of a test
-----------------------

In one sense, our hypothesis test is complete. We’ve constructed a test
statistic, figured out its sampling distribution if the null hypothesis
is true, and then constructed the critical region for the test.
Nevertheless, I’ve actually omitted the most important number of all,
**the *p* value**. It is to this topic that we now turn. There are
two somewhat different ways of interpreting a *p* value, one
proposed by Sir Ronald Fisher and the other by Jerzy Neyman. Both
versions are legitimate, though they reflect very different ways of
thinking about hypothesis tests. Most introductory textbooks tend to
give Fisher’s version only, but I think that’s a bit of a shame. To my
mind, Neyman’s version is cleaner and actually better reflects the logic
of the null hypothesis test. You might disagree though, so I’ve included
both. I’ll start with Neyman’s version.

A softer view of decision making
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

One problem with the hypothesis testing procedure that I’ve described is
that it makes no distinction at all between a result that is “barely
significant” and those that are “highly significant”. For instance, in
my ESP study the data I obtained only just fell inside the critical
region, so I did get a significant effect but it was a pretty near
thing. In contrast, suppose that I’d run a study in which *X* = 97
out of my *N* = 100 participants got the answer right. This would
obviously be significant too but my a much larger margin, such that
there’s really no ambiguity about this at all. The procedure that I have
already described makes no distinction between the two. If I adopt the
standard convention of allowing *α* = 0.05 as my acceptable
Type I error rate, then both of these are significant results.

This is where the *p* value comes in handy. To understand how it
works, let’s suppose that we ran lots of hypothesis tests on the same
data set, but with a different value of *α* in each case.
When we do that for my original ESP data what we’d get is something like
this

================ ==== ==== ==== ==== ====
Value of *α*     0.05 0.04 0.03 0.02 0.01
Reject the null? Yes  Yes  Yes  No   No
================ ==== ==== ==== ==== ====

When we test the ESP data (*X* = 62 successes out of *N* = 100
observations), using *α* levels of 0.03 and above, we’d always
find ourselves rejecting the null hypothesis. For *α* levels
of 0.02 and below we always end up retaining the null hypothesis.
Therefore, somewhere between 0.02 and 0.03 there must be a smallest value
of *α* that would allow us to reject the null hypothesis for
this data. This is the *p* value. As it turns out the ESP data has
*p* = 0.021. In short,

   *p* is defined to be the smallest Type I error rate
   (*α*) that you have to be willing to tolerate if you want
   to reject the null hypothesis.

If it turns out that *p* describes an error rate that you find
intolerable, then you must retain the null. If you’re comfortable with
an error rate equal to *p*, then it’s okay to reject the null
hypothesis in favour of your preferred alternative.

In effect, *p* is a summary of all the possible hypothesis tests
that you could have run, taken across all possible *α*
values. And as a consequence it has the effect of “softening” our
decision process. For those tests in which *p* ≤ *α* you
would have rejected the null hypothesis, whereas for those tests in
which *p* > *α* you would have retained the null. In my ESP
study I obtained *X* = 62 and as a consequence I’ve ended up with
*p* = 0.021. So the error rate I have to tolerate is 2.1%. In
contrast, suppose my experiment had yielded *X* = 97. What happens
to my *p* value now? This time it’s shrunk to *p* = 1.36 · 10\ :sup:`25`,
which is a tiny, tiny\ [#]_ Type I
error rate. For this second case I would be able to reject the null
hypothesis with a lot more confidence, because I only have to be
“willing” to tolerate a type I error rate of about 1 in 10 trillion
trillion in order to justify my decision to reject.

The probability of extreme data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The second definition of the *p*-value comes from Sir Ronald
Fisher, and it’s actually this one that you tend to see in most
introductory statistics textbooks. Notice how, when I constructed the
critical region, it corresponded to the *tails* (i.e., extreme values)
of the sampling distribution? That’s not a coincidence, almost all
“good” tests have this characteristic (good in the sense of minimising
our type II error rate, *β*). The reason for that is that a
good critical region almost always corresponds to those values of the
test statistic that are least likely to be observed if the null
hypothesis is true. If this rule is true, then we can define the
*p*-value as the probability that we would have observed a test
statistic that is at least as extreme as the one we actually did get. In
other words, if the data are extremely implausible according to the null
hypothesis, then the null hypothesis is probably wrong.

A common mistake
~~~~~~~~~~~~~~~~

Okay, so you can see that there are two rather different but legitimate
ways to interpret the *p* value, one based on Neyman’s approach to
hypothesis testing and the other based on Fisher’s. Unfortunately, there
is a third explanation that people sometimes give, especially when
they’re first learning statistics, and it is *absolutely and completely
wrong*. This mistaken approach is to refer to the *p* value as
“the probability that the null hypothesis is true”. It’s an intuitively
appealing way to think, but it’s wrong in two key respects. First, null
hypothesis testing is a frequentist tool and the frequentist approach to
probability does *not* allow you to assign probabilities to the null
hypothesis. According to this view of probability, the null hypothesis
is either true or it is not, it cannot have a “5% chance” of being true.
Second, even within the Bayesian approach, which does let you assign
probabilities to hypotheses, the *p* value would not correspond to
the probability that the null is true. This interpretation is entirely
inconsistent with the mathematics of how the *p* value is
calculated. Put bluntly, despite the intuitive appeal of thinking this
way, there is no justification for interpreting a *p* value this
way. Never do it.

------

.. [#]
   That’s *p* = 0.000000000000000000000000136 for folks that don’t like
   scientific notation!

.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Bayesian hypothesis tests
-------------------------

In Chapter `Hypothesis testing
<Ch09_HypothesisTesting.html#hypothesis-testing>`__ I described the orthodox
approach to hypothesis testing. It took an entire chapter to describe, because
null hypothesis testing is a very elaborate contraption that people find very
hard to make sense of. In contrast, the Bayesian approach to hypothesis testing
is incredibly simple. Let’s pick a setting that is closely analogous to the
orthodox scenario. There are two hypotheses that we want to compare, a null
hypothesis *h*\ :sub:`0` and an alternative hypothesis *h*\ :sub:`1`. Prior to
running the experiment we have some beliefs *P*\ (h) about which hypotheses
are true. We run an experiment and obtain data *d*. Unlike frequentist
statistics, Bayesian statistics does allow us to talk about the probability
that the null hypothesis is true. Better yet, it allows us to calculate the
**posterior probability of the null hypothesis**, using Bayes’ rule:

.. math:: P(h_0 | d) = \frac{P(d|h_0) P(h_0)}{P(d)}

This formula tells us exactly how much belief we should have in the null
hypothesis after having observed the data *d*. Similarly, we can
work out how much belief to place in the alternative hypothesis using
essentially the same equation. All we do is change the subscript:

.. math:: P(h_1 | d) = \frac{P(d|h_1) P(h_1)}{P(d)}

It’s all so simple that I feel like an idiot even bothering to write
these equations down, since all I’m doing is copying Bayes rule from the
previous section.\ [#]_

The Bayes factor
~~~~~~~~~~~~~~~~

In practice, most Bayesian data analysts tend not to talk in terms of the raw
posterior probabilities *P*\ (h\ :sub:`0`\|d) and *P*\ (h\ :sub:`1`\|d).
Instead, we tend to talk in terms of the **posterior odds** ratio. Think of it
like betting. Suppose, for instance, the posterior probability of
the null hypothesis is 25%, and the posterior probability of the
alternative is 75%. The alternative hypothesis is three times as
probable as the null, so we say that the *odds* are 3:1 in favour of the
alternative. Mathematically, all we have to do to calculate the
posterior odds is divide one posterior probability by the other

.. math:: \frac{P(h_1 | d)}{P(h_0 | d)} = \frac{0.75}{0.25} = 3

Or, to write the same thing in terms of the equations above

.. math:: \frac{P(h_1 | d)}{P(h_0 | d)} = \frac{P(d|h_1)}{P(d|h_0)} \times \frac{P(h_1)}{P(h_0)}

Actually, this equation is worth expanding on. There are three different
terms here that you should know. On the left hand side, we have the
posterior odds, which tells you what you believe about the relative
plausibilty of the null hypothesis and the alternative hypothesis
*after* seeing the data. On the right hand side, we have the **prior
odds**, which indicates what you thought *before* seeing the data. In
the middle, we have the **Bayes factor**, which describes the amount of
evidence provided by the data

.. math::

   \begin{array}{ccccc}\displaystyle
   \frac{P(h_1 | d)}{P(h_0 | d)} & = & \displaystyle\frac{P(d|h_1)}{P(d|h_0)} & \times & \displaystyle\frac{P(h_1)}{P(h_0)} \\[6pt] \\[-2pt]
   \uparrow                      & ~ & \uparrow                               & ~      & \uparrow                           \\[6pt]
   \mbox{Posterior odds}         & ~ & \mbox{\bf{Bayes factor}}               & ~      & \mbox{Prior odds}                  \\
   \end{array}

The Bayes factor (sometimes abbreviated as **BF**) has a special place
in Bayesian hypothesis testing, because it serves a similar role to the
*p*-value in orthodox hypothesis testing. The Bayes factor
quantifies the strength of evidence provided by the data, and as such it
is the Bayes factor that people tend to report when running a Bayesian
hypothesis test. The reason for reporting Bayes factors rather than
posterior odds is that different researchers will have different priors.
Some people might have a strong bias to believe the null hypothesis is
true, others might have a strong bias to believe it is false. Because of
this, the polite thing for an applied researcher to do is report the
Bayes factor. That way, anyone reading the paper can multiply the Bayes
factor by their own *personal* prior odds, and they can work out for
themselves what the posterior odds would be. In any case, by convention
we like to pretend that we give equal consideration to both the null
hypothesis and the alternative, in which case the prior odds equals 1,
and the posterior odds becomes the same as the Bayes factor.

Interpreting Bayes factors
~~~~~~~~~~~~~~~~~~~~~~~~~~

One of the really nice things about the Bayes factor is the numbers are
inherently meaningful. If you run an experiment and you compute a Bayes
factor of 4, it means that the evidence provided by your data corresponds to
betting odds of 4:1 in favour of the alternative. However, there have been some
attempts to quantify the standards of evidence that would be considered meaningful
in a scientific context. The two most widely used are from `Jeffreys (1961)
<References.html#jeffreys-1961>`__ and `Kass and Raftery (1995)
<References.html#kass-1995>`__. Of the two, I tend to prefer the `Kass and Raftery (1995)
<References.html#kass-1995>`__ table because it’s a bit more conservative. So here it is:

============== ====================
Bayes factor   Interpretation
============== ====================
1 - 3          Negligible evidence
3 - 20         Positive evidence
20 - 150       Strong evidence
> 150          Very strong evidence
============== ====================

And to be perfectly honest, I think that even the `Kass and Raftery (1995)
<References.html#kass-1995>`__ standards are being a bit charitable.
If it were up to me, I’d have called the “positive evidence” category
“weak evidence”. To me, anything in the range 3:1 to 20:1 is “weak” or
“modest” evidence at best. But there are no hard and fast rules here.
What counts as strong or weak evidence depends entirely on how
conservative you are and upon the standards that your community insists
upon before it is willing to label a finding as “true”.

In any case, note that all the numbers listed above make sense if the
Bayes factor is greater than 1 (i.e., the evidence favours the
alternative hypothesis). However, one big practical advantage of the
Bayesian approach relative to the orthodox approach is that it also
allows you to quantify evidence *for* the null. When that happens, the
Bayes factor will be less than 1. You can choose to report a Bayes
factor less than 1, but to be honest I find it confusing. For example,
suppose that the likelihood of the data under the null hypothesis
*P*\ (d|h\ :sub:`0`) is equal to 0.2, and the corresponding likelihood
*P*\ (d|h\ :sub:`1`) under the alternative hypothesis is 0.1. Using the
equations given above, Bayes factor here would be

.. math:: \mbox{BF} = \frac{P(d|h_1)}{P(d|h_0)} = \frac{0.1}{0.2} = 0.5

Read literally, this result tells is that the evidence in favour of the
alternative is 0.5 to 1. I find this hard to understand. To me, it makes
a lot more sense to turn the equation “upside down”, and report the
amount op evidence in favour of the *null*. In other words, what we
calculate is this

.. math:: \mbox{BF}^\prime = \frac{P(d|h_0)}{P(d|h_1)} = \frac{0.2}{0.1} = 2

And what we would report is a Bayes factor of 2:1 in favour of the null.
Much easier to understand, and you can interpret this using the table
above.

------

.. [#]
   Obviously, this is a highly simplified story. All the complexity of
   real life Bayesian hypothesis testing comes down to how you calculate
   the likelihood *P*\ (d|h) when the hypothesis *h* is a
   complex and vague thing. I’m not going to talk about those
   complexities in this book, but I do want to highlight that although
   this simple story is true as far as it goes, real life is messier
   than I’m able to cover in an introductory stats textbook.

.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Probabilistic reasoning by rational agents
------------------------------------------

From a Bayesian perspective statistical inference is all about *belief
revision*. I start out with a set of candidate hypotheses *h*
about the world. I don’t know which of these hypotheses is true, but do
I have some beliefs about which hypotheses are plausible and which are
not. When I observe the data, *d*, I have to revise those beliefs.
If the data are consistent with a hypothesis, my belief in that
hypothesis is strengthened. If the data are inconsistent with the
hypothesis, my belief in that hypothesis is weakened. That’s it! At the
end of this section I’ll give a precise description of how Bayesian
reasoning works, but first I want to work through a simple example in
order to introduce the key ideas. Consider the following reasoning
problem.

   *I’m carrying an umbrella. Do you think it will rain?*

In this problem I have presented you with a single piece of data
(*d* = I’m carrying the umbrella), and I’m asking you to tell me
your belief or hypothesis about whether it’s raining. You have two
alternatives, *h*: either it will rain today or it will not. How
should you solve this problem?

Priors: what you believed before
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The first thing you need to do is ignore what I told you about the
umbrella, and write down your pre-existing beliefs about rain. This is
important. If you want to be honest about how your beliefs have been
revised in the light of new evidence (data) then you *must* say
something about what you believed before those data appeared! So, what
might you believe about whether it will rain today? You probably know
that I live in Australia and that much of Australia is hot and dry. The
city of Adelaide where I live has a Mediterranean climate, very similar
to southern California, southern Europe or northern Africa. I’m writing
this in January and so you can assume it’s the middle of summer. In
fact, you might have decided to take a quick look on Wikipedia\ [#]_ and
discovered that Adelaide gets an average of 4.4 days of rain across the
31 days of January. Without knowing anything else, you might conclude
that the probability of January rain in Adelaide is about 15%, and the
probability of a dry day is 85%. If this is really what you believe
about Adelaide rainfall (and now that I’ve told it to you I’m betting
that this really *is* what you believe) then what I have written here is
your **prior distribution**, written *P*\ (h):

========== ================
Hypothesis Degree of Belief
========== ================
Rainy day  0.15
Dry day    0.85
========== ================

Likelihoods: theories about the data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To solve the reasoning problem you need a theory about my behaviour.
When does Dan carry an umbrella? You might guess that I’m not a complete
idiot,\ [#]_ and I try to carry umbrellas only on rainy days. On the
other hand, you also know that I have young kids, and you wouldn’t be
all that surprised to know that I’m pretty forgetful about this sort of
thing. Let’s suppose that on rainy days I remember my umbrella about 30%
of the time (I really am awful at this). But let’s say that on dry days
I’m only about 5% likely to be carrying an umbrella. So you might write
out a little table like this:

========== ======== ===========                   
Hypothesis Umbrella No umbrella
========== ======== ===========
Rainy day  0.30     0.70
Dry day    0.05     0.95
========== ======== ===========

It’s important to remember that each cell in this table describes your
beliefs about what data *d* will be observed, *given* the truth of
a particular hypothesis *h*. This “conditional probability” is
written *P*\ (d|h), which you can read as “the probability of
*d* given *h*”. In Bayesian statistics, this is referred to
as the **likelihood** of the data *d* given the hypothesis
*h*.\ [#]_

The joint probability of data and hypothesis
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

At this point all the elements are in place. Having written down the
priors and the likelihood, you have all the information you need to do
Bayesian reasoning. The question now becomes *how* do we use this
information? As it turns out, there’s a very simple equation that we can
use here, but it’s important that you understand why we use it so I’m
going to try to build it up from more basic ideas.

Let’s start out with one of the rules of probability theory. I listed it
way back in :numref:`tab-probrules`, but I didn’t make a big deal out of
it at the time and you probably ignored it. The rule in question is the one
that talks about the probability that *two* things are true. In our example
you might want to calculate the probability that today is rainy (i.e.,
hypothesis *h* is true) and I’m carrying an umbrella (i.e., data *d* is
observed). The **joint probability** of the hypothesis and the data is
written *P*\ (d, h), and you can calculate it by multiplying the prior
*P*\ (h) by the likelihood *P*\ (d|h). Mathematically, we say that:

*P*\ (d, h) = *P*\ (d|h) *P*\ (h)

So, what is the probability that today is a rainy day *and* I remember
to carry an umbrella? As we discussed earlier, the prior tells us that
the probability of a rainy day is 15%, and the likelihood tells us that
the probability of me remembering my umbrella on a rainy day is 30%. So
the probability that both of these things are true is calculated by
multiplying the two:

.. math::

   \begin{aligned}
   P(\mbox{rainy}, \mbox{umbrella}) & = & P(\mbox{umbrella} | \mbox{rainy}) \times P(\mbox{rainy}) \\
   & = & 0.30 \times 0.15 \\
   & = & 0.045\end{aligned}

In other words, before being told anything about what actually happened,
you think that there is a 4.5% probability that today will be a rainy
day and that I will remember an umbrella. However, there are of course
*four* possible things that could happen, right? So let’s repeat the
exercise for all four. If we do that, we end up with the following
table:

+-------+----------+-------------+
|       | Umbrella | No-umbrella |
+=======+==========+=============+
| Rainy | 0.0450   | 0.1050      |
+-------+----------+-------------+
| Dry   | 0.0425   | 0.8075      |
+-------+----------+-------------+

This table captures all the information about which of the four
possibilities are likely. To really get the full picture, though, it
helps to add the row totals and column totals. That gives us this table:

+-------+----------+-------------+-------+
|       | Umbrella | No-umbrella | Total |
+=======+==========+=============+=======+
| Rainy | 0.0450   | 0.1050      | 0.15  |
+-------+----------+-------------+-------+
| Dry   | 0.0425   | 0.8075      | 0.85  |
+-------+----------+-------------+-------+
| Total | 0.0875   | 0.9125      | 1.00  |
+-------+----------+-------------+-------+

This is a very useful table, so it’s worth taking a moment to think
about what all these numbers are telling us. First, notice that the row
sums aren’t telling us anything new at all. For example, the first row
tells us that if we ignore all this umbrella business, the chance that
today will be a rainy day is 15%. That’s not surprising, of course, as
that’s our prior.\ [#]_ The important thing isn’t the number itself.
Rather, the important thing is that it gives us some confidence that our
calculations are sensible! Now take a look at the column sums and notice
that they tell us something that we haven’t explicitly stated yet. In
the same way that the row sums tell us the probability of rain, the
column sums tell us the probability of me carrying an umbrella.
Specifically, the first column tells us that on average (i.e., ignoring
whether it’s a rainy day or not) the probability of me carrying an
umbrella is 8.75%. Finally, notice that when we sum across all four
logically-possible events, everything adds up to 1. In other words, what
we have written down is a proper probability distribution defined over
all possible combinations of data and hypothesis.

Now, because this table is so useful, I want to make sure you understand
what all the elements correspond to and how they written:

+-------+------------------------+---------------------------+--------------+
|       | Umbrella               | No-umbrella               |              |
+=======+========================+===========================+==============+
| Rainy | *P*\ (Umbrella, Rainy) | *P*\ (No-umbrella, Rainy) | *P*\ (Rainy) |
+-------+------------------------+---------------------------+--------------+
| Dry   | *P*\ (Umbrella, Dry)   | *P*\ (No-umbrella, Dry)   | *P*\ (Dry)   |
+-------+------------------------+---------------------------+--------------+
|       | *P*\ (Umbrella)        | *P*\ (No-umbrella)        |              |
+-------+------------------------+---------------------------+--------------+

Finally, let’s use “proper” statistical notation. In the rainy day
problem, the data corresponds to the observation that I do or do not
have an umbrella. So we’ll let *d*\ :sub:`1` refer to the possibility that
you observe me carrying an umbrella, and *d*\ :sub:`2` refers to you
observing me not carrying one. Similarly, *h*\ :sub:`1` is your hypothesis
that today is rainy, and *h*\ :sub:`2` is the hypothesis that it is not.
Using this notation, the table looks like this:

+---------------+-------------------------------------+-------------------------------------+----------------------+
|               | *d*\ :sub:`1`                       | *d*\ :sub:`2`                       |                      |
+===============+=====================================+=====================================+======================+
| *h*\ :sub:`1` | *P*\ (h\ :sub:`1`\ , d\ :sub:`1`\ ) | *P*\ (h\ :sub:`1`\ , d\ :sub:`2`\ ) | *P*\ (h\ :sub:`1`\ ) |
+---------------+-------------------------------------+-------------------------------------+----------------------+
| *h*\ :sub:`2` | *P*\ (h\ :sub:`2`\ , d\ :sub:`1`\ ) | *P*\ (h\ :sub:`2`\ , d\ :sub:`2`\ ) | *P*\ (h\ :sub:`2`\ ) |
+---------------+-------------------------------------+-------------------------------------+----------------------+
|               | *P*\ (d\ :sub:`1`\ )                | *P*\ (d\ :sub:`2`\ )                |                      |
+---------------+-------------------------------------+-------------------------------------+----------------------+

Updating beliefs using Bayes’ rule
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The table we laid out in the last section is a very powerful tool for
solving the rainy day problem, because it considers all four logical
possibilities and states exactly how confident you are in each of them
before being given any data. It’s now time to consider what happens to
our beliefs when we are actually given the data. In the rainy day
problem, you are told that I really *am* carrying an umbrella. This is
something of a surprising event. According to our table, the probability
of me carrying an umbrella is only 8.75%. But that makes sense, right? A
guy carrying an umbrella on a summer day in a hot dry city is pretty
unusual, and so you really weren’t expecting that. Nevertheless, the
data tells you that it is true. No matter how unlikely you thought it
was, you must now adjust your beliefs to accommodate the fact that you
now *know* that I have an umbrella.\ [#]_ To reflect this new knowledge,
our *revised* table must have the following numbers:

+-------+----------+-------------+
|       | Umbrella | No-umbrella |
+=======+==========+=============+
| Rainy |          | 0           |
+-------+----------+-------------+
| Dry   |          | 0           |
+-------+----------+-------------+
| Total | 1        | 0           |
+-------+----------+-------------+

In other words, the facts have eliminated any possibility of “no
umbrella”, so we have to put zeros into any cell in the table that
implies that I’m not carrying an umbrella. Also, you know for a fact
that I am carrying an umbrella, so the column sum on the left must be 1
to correctly describe the fact that *P*\ (umbrella) = 1.

What two numbers should we put in the empty cells? Again, let’s not
worry about the maths, and instead think about our intuitions. When we
wrote out our table the first time, it turned out that those two cells
had almost identical numbers, right? We worked out that the joint
probability of “rain and umbrella” was 4.5%, and the joint probability
of “dry and umbrella” was 4.25%. In other words, before I told you that
I am in fact carrying an umbrella, you’d have said that these two events
were almost identical in probability, yes? But notice that *both* of
these possibilities are consistent with the fact that I actually am
carrying an umbrella. From the perspective of these two possibilities,
very little has changed. I hope you’d agree that it’s *still* true that
these two possibilities are equally plausible. So what we expect to see
in our final table is some numbers that preserve the fact that “rain and
umbrella” is *slightly* more plausible than “dry and umbrella”, while
still ensuring that numbers in the table add up. Something like this,
perhaps?

+-------+----------+-------------+
|       | Umbrella | No-umbrella |
+=======+==========+=============+
| Rainy | 0.514    | 0           |
+-------+----------+-------------+
| Dry   | 0.486    | 0           |
+-------+----------+-------------+
| Total | 1        | 0           |
+-------+----------+-------------+

What this table is telling you is that, after being told that I’m
carrying an umbrella, you believe that there’s a 51.4% chance that today
will be a rainy day, and a 48.6% chance that it won’t. That’s the answer
to our problem! The **posterior probability** of rain *P*\ (h|d)
given that I am carrying an umbrella is 51.4%

How did I calculate these numbers? You can probably guess. To work out
that there was a 0.514 probability of “rain”, all I did was take the
0.045 probability of “rain and umbrella” and divide it by the 0.0875
chance of “umbrella”. This produces a table that satisfies our need to
have everything sum to 1, and our need not to interfere with the
relative plausibility of the two events that are actually consistent
with the data. To say the same thing using fancy statistical jargon,
what I’ve done here is divide the joint probability of the hypothesis
and the data *P*\ (d, h) by the **marginal probability** of the data
*P*\ (d), and this is what gives us the posterior probability of the
hypothesis *given* the data that have been observed. To write this as an
equation:\ [#]_

.. math:: P(h | d) = \frac{P(d,h)}{P(d)}

However, remember what I said at the start of the last section, namely
that the joint probability *P*\ (d, h) is calculated by multiplying
the prior *P*\ (h) by the likelihood *P*\ (d|h). In real life,
the things we actually know how to write down are the priors and the
likelihood, so let’s substitute those back into the equation. This gives
us the following formula for the posterior probability

.. math:: P(h | d) = \frac{P(d|h) P(h)}{P(d)}

And this formula, folks, is known as **Bayes’ rule**. It describes how a
learner starts out with prior beliefs about the plausibility of
different hypotheses, and tells you how those beliefs should be revised
in the face of data. In the Bayesian paradigm, all statistical inference
flows from this one simple rule.

------

.. [#]
   https://en.wikipedia.org/wiki/Climate_of_Adelaide

.. [#]
   It’s a leap of faith, I know, but let’s run with it okay?

.. [#]
   Um. I hate to bring this up, but some statisticians would object to
   me using the word “likelihood” here. The problem is that the word
   “likelihood” has a very specific meaning in frequentist statistics,
   and it’s not quite the same as what it means in Bayesian statistics.
   As far as I can tell Bayesians didn’t originally have any agreed upon
   name for the likelihood, and so it became common practice for people
   to use the frequentist terminology. This wouldn’t have been a problem
   except for the fact that the way that Bayesians use the word turns
   out to be quite different to the way frequentists do. This isn’t the
   place for yet another lengthy history lesson but, to put it crudely,
   when a Bayesian says “*a* likelihood function” they’re usually
   referring one of the *rows* of the table. When a frequentist says the
   same thing, they’re referring to the same table, but to them “*a*
   likelihood function” almost always refers to one of the *columns*.
   This distinction matters in some contexts, but it’s not important for
   our purposes.

.. [#]
   Just to be clear, “prior” information is pre-existing knowledge or
   beliefs, before we collect or use any data to improve that
   information.

.. [#]
   If we were being a bit more sophisticated, we could extend the
   example to accommodate the possibility that I’m lying about the
   umbrella. But let’s keep things simple, shall we?

.. [#]
   You might notice that this equation is actually a restatement of the
   same basic rule I listed at the start of the last section. If you
   multiply both sides of the equation by *P*\ (d), then you get
   *P*\ (d) *P*\ (h|d) = *P*\ (d, h), which is the rule for how joint
   probabilities are calculated. So I’m not actually introducing any
   “new” rules here, I’m just using the same rule in a different way.

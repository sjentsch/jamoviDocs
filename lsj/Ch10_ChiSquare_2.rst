.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

The χ² (chi-square) test of independence (or association)
---------------------------------------------------------

.. epigraph::

   =========== =================================================
   GUARDBOT 1: Halt!
   GUARDBOT 2: Be you robot or human?
   LEELA:      Robot...we be.
   FRY:        Uh, yup! Just two robots out roboting it up! Eh?
   GUARDBOT 1: Administer the test.
   GUARDBOT 2: Which of the following would you most prefer?
               A: A puppy, B: A pretty flower from your sweetie,
               or C: A large properly-formatted data file?
   GUARDBOT 1: Choose!
   =========== =================================================

   -- Futurama, “Fear of a Bot Planet”

The other day I was watching an animated documentary examining the
quaint customs of the natives of the planet *Chapek 9*. Apparently, in
order to gain access to their capital city a visitor must prove that
they’re a robot, not a human. In order to determine whether or not a
visitor is human, the natives ask whether the visitor prefers puppies,
flowers, or large, properly formatted data files. “Pretty clever,” I
thought to myself “but what if humans and robots have the same
preferences? That probably wouldn’t be a very good test then, would it?”
As it happens, I got my hands on the testing data that the civil
authorities of *Chapek 9* used to check this. It turns out that what
they did was very simple. They found a bunch of robots and a bunch of
humans and asked them what they preferred. I saved their data in a file
called ``chapek9.omv``, which we can now load into jamovi. As well as
the ``ID`` variable that identifies individual people, there are two
nominal text variables, ``species`` and ``choice``. In total there are
180 entries in the data set, one for each person (counting both robots
and humans as “people”) who was asked to make a choice. Specifically,
there are 93 humans and 87 robots, and overwhelmingly the preferred
choice is the data file. You can check this yourself by asking jamovi
for Frequency Tables, under the ‘Exploration’ - ‘Descriptives’ button.
However, this summary does not address the question we’re interested in.
To do that, we need a more detailed description of the data. What we
want to do is look at the ``choices`` broken down *by* ``species``. That
is, we need to cross-tabulate the data (see `Tabulating and cross-tabulating
data <Ch06_DataHandling_1.html#tabulating-and-cross-tabulating-data>`__). In
jamovi we do this using the ``Frequencies`` → ``Contingency Tables`` → 
``Independent Samples`` analysis, and we should get a table something like this:

+--------+-------+-------+-------+
|        | Robot | Human | Total |
+========+=======+=======+=======+
| Puppy  | 13    | 15    | 28    |
+--------+-------+-------+-------+
| Flower | 30    | 13    | 43    |
+--------+-------+-------+-------+
| Data   | 44    | 65    | 109   |
+--------+-------+-------+-------+
| Total  | 87    | 93    | 180   |
+--------+-------+-------+-------+

From this, it’s quite clear that the vast majority of the humans chose
the data file, whereas the robots tended to be a lot more even in their
preferences. Leaving aside the question of *why* the humans might be
more likely to choose the data file for the moment (which does seem
quite odd, admittedly), our first order of business is to determine if
the discrepancy between human choices and robot choices in the data set
is statistically significant.

Constructing our hypothesis test
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

How do we analyse this data? Specifically, since my *research*
hypothesis is that “humans and robots answer the question in different
ways”, how can I construct a test of the *null* hypothesis that “humans
and robots answer the question the same way”? As before, we begin by
establishing some notation to describe the data:

+--------+----------------+----------------+---------------+
|        | Robot          | Human          | Total         |
+========+================+================+===============+
| Puppy  | *O*\ :sub:`11` | *O*\ :sub:`12` | *R*\ :sub:`1` |
+--------+----------------+----------------+---------------+
| Flower | *O*\ :sub:`21` | *O*\ :sub:`22` | *R*\ :sub:`2` |
+--------+----------------+----------------+---------------+
| Data   | *O*\ :sub:`31` | *O*\ :sub:`32` | *R*\ :sub:`3` |
+--------+----------------+----------------+---------------+
| Total  | *C*\ :sub:`1`  | *C*\ :sub:`2`  | *N*           |
+--------+----------------+----------------+---------------+

In this notation we say that *O*\ :sub:`ij` is a count (observed
frequency) of the number of respondents that are of species *j*
(robots or human) who gave answer *i* (puppy, flower or data) when
asked to make a choice. The total number of observations is written
*N*, as usual. Finally, I’ve used *R*\ :sub:`i` to denote the row
totals (e.g., *R*\ :sub:`2` is the total number of creatures who chose the
flower), and *C*\ :sub:`j` to denote the column totals (e.g., *C*\ :sub:`1`
is the total number of robots).\ [#]_

So now let’s think about what the null hypothesis says. If robots and
humans are responding in the same way to the question, it means that the
probability that “a robot says puppy” is the same as the probability
that “a human says puppy”, and so on for the other two possibilities.
So, if we use *P*\ :sub:`ij` to denote “the probability that a member of
species *j* gives response *i* then our null hypothesis is
that:

+--------------+---------------------------------------------+
| H\ :sub:`0`: | All of the following are true:              |
+--------------+---------------------------------------------+
|              | *P*\ :sub:`11` = *P*\ :sub:`12`             |
|              | (same probability of saying “puppy”),       |
+--------------+---------------------------------------------+
|              | *P*\ :sub:`21` = *P*\ :sub:`22`             |
|              | (same probability of saying “flower”), and  |
+--------------+---------------------------------------------+
|              | *P*\ :sub:`31` = *P*\ :sub:`32`             |
|              | (same probability of saying “data”).        |
+--------------+---------------------------------------------+

And actually, since the null hypothesis is claiming that the true choice
probabilities don’t depend on the species of the person making the
choice, we can let *P*\ :sub:`i` refer to this probability, e.g.,
*P*\ :sub:`1` is the true probability of choosing the puppy.

Next, in much the same way that we did with the goodness-of-fit test,
what we need to do is calculate the expected frequencies. That is, for
each of the observed counts *O*\ :sub:`ij`, we need to figure out what
the null hypothesis would tell us to expect. Let’s denote this expected
frequency by *E*\ :sub:`ij`. This time, it’s a little bit trickier. If
there are a total of *C*\ :sub:`j` people that belong to species *j*,
and the true probability of anyone (regardless of species) choosing option
*i* is *P*\ :sub:`i`, then the expected frequency is just:

*E*\ :sub:`ij` = *C*\ :sub:`j` · *P*\ :sub:`i`

Now, this is all very well and good, but we have a problem. Unlike the
situation we had with the goodness-of-fit test, the null hypothesis
doesn’t actually specify a particular value for *P*\ :sub:`i`. It’s
something we have to `estimate from the data
<Ch08_Estimation.html#estimating-unknown-quantities-from-a-sample>`__!
Fortunately, this is pretty easy to do. If 28 out of 180 people selected
the flowers, then a natural estimate for the probability of choosing
flowers is 28 / 180, which is approximately 0.16. If we
phrase this in mathematical terms, what we’re saying is that our
estimate for the probability of choosing option *i* is just the
row total divided by the total sample size:

.. math:: \hat{P}_i = \frac{R_i}{N}

Therefore, our expected frequency can be written as the product (i.e.
multiplication) of the row total and the column total, divided by the
total number of observations:\ [#]_

| Ê\ :sub:`ij` = (R\ :sub:`i` × C\ :sub:`j`) / *N*

Now that we’ve figured out how to calculate the expected frequencies,
it’s straightforward to define a test statistic, following the exact
same strategy that we used in the goodness-of-fit test. In fact, it’s
pretty much the *same* statistic.

For a contingency table with *r* rows and *c* columns, the
equation that defines our *X*\² statistic is

.. math:: X^2 = \sum_{i=1}^r\sum_{j=1}^c \frac{({E}_{ij} - O_{ij})^2}{{E}_{ij}}

The only difference is that I have to include two summation signs (i.e., Σ) to
indicate that we’re summing over both rows and columns.

As before, large values of *X*\² indicate that the null hypothesis
provides a poor description of the data, whereas small values of
*X*\² suggest that it does a good job of accounting for the data.
Therefore, just like last time, we want to reject the null hypothesis if
*X*\² is too large.

Not surprisingly, this statistic is χ² distributed. All we
need to do is figure out how many degrees of freedom are involved, which
actually isn’t too hard. As I mentioned before, you can (usually) think
of the degrees of freedom as being equal to the number of data points
that you’re analysing, minus the number of constraints. A contingency
table with *r* rows and *c* columns contains a total of
*r* · *c* observed frequencies, so that’s the total number of
observations. What about the constraints? Here, it’s slightly trickier.
The answer is always the same

*df* = (*r* - 1)(*c* - 1)

but the explanation for *why* the degrees of freedom takes this value is
different depending on the experimental design. For the sake of
argument, let’s suppose that we had honestly intended to survey exactly
87 robots and 93 humans (column totals fixed by the experimenter), but
left the row totals free to vary (row totals are random variables).
Let’s think about the constraints that apply here. Well, since we
deliberately fixed the column totals by Act of Experimenter, we have
*c* constraints right there. But, there’s actually more to it than
that. Remember how our null hypothesis had some free parameters (i.e.,
we had to estimate the *P*\ :sub:`i` values)? Those matter too. I won’t
explain why in this book, but every free parameter in the null
hypothesis is rather like an additional constraint. So, how many of
those are there? Well, since these probabilities have to sum to 1,
there’s only *r* - 1 of these. So our total degrees of freedom is:

.. math::

   \begin{array}{rcl}
   df &=& \mbox{(number of observations)} - \mbox{(number of constraints)} \\
   &=& (rc) - (c + (r-1)) \\
   &=& rc - c - r + 1 \\
   &=& (r - 1)(c - 1)
   \end{array}

Alternatively, suppose that the only thing that the experimenter fixed
was the total sample size *N*. That is, we quizzed the first 180
people that we saw and it just turned out that 87 were robots and 93
were humans. This time around our reasoning would be slightly different,
but would still lead us to the same answer. Our null hypothesis still
has *r* - 1 free parameters corresponding to the choice
probabilities, but it now *also* has *c* - 1 free parameters
corresponding to the species probabilities, because we’d also have to
estimate the probability that a randomly sampled person turns out to be
a robot.\ [#]_ Finally, since we did actually fix the total number of
observations *N*, that’s one more constraint. So, now we have
*rc* observations, and (*c* - 1) + (*r* - 1) + 1 constraints. What
does that give?

.. math::

   \begin{array}{rcl}
   df &=& \mbox{(number of observations)} - \mbox{(number of constraints)} \\
   &=& rc - ( (c-1) + (r-1) + 1) \\
   &=& rc - c - r + 1 \\
   &=& (r - 1)(c - 1)
   \end{array}

Amazing.

Doing the test in jamovi
~~~~~~~~~~~~~~~~~~~~~~~~

Okay, now that we know how the test works let’s have a look at how it’s
done in jamovi. As tempting as it is to lead you through the tedious
calculations so that you’re forced to learn it the long way, I figure
there’s no point. I already showed you how to do it the long way for the
goodness-of-fit test in the last section, and since the test of
independence isn’t conceptually any different, you won’t learn anything
new by doing it the long way. So instead I’ll go straight to showing you
the easy way. After you have run the test in jamovi (‘Frequencies’ -
‘Contingency Tables’ - ‘Independent Samples’), all you have to do is
look underneath the contingency table in the jamovi results window and
there is the χ² statistic for you. This shows a
χ² statistic value of 10.72, with 2 d.f. and *p*-value
= 0.005.

That was easy, wasn’t it! You can also ask jamovi to show you the
expected counts - just click on the check box for ‘Counts’ - ‘Expected’
in the ‘Cells’ options and the expected counts will appear in the
contingency table. And whilst you are doing that, an effect size measure
would be helpful. We’ll choose Cramer’s V, and you can specify this from
a check box in the ‘Statistics’ options, and it gives a value for
Cramer’s V of 0.24. We will talk about this some more in just a moment.

This output gives us enough information to write up the result:

   Pearson’s χ² revealed a significant association between
   species and choice (χ²\ (2) = 10.7, *p* < 0.01).
   Robots appeared to be more likely to say that they prefer flowers,
   but the humans were more likely to say they prefer data.

Notice that, once again, I provided a little bit of interpretation to
help the human reader understand what’s going on with the data. Later on
in my discussion section I’d provide a bit more context. To illustrate
the difference, here’s what I’d probably say later on:

   The fact that humans appeared to have a stronger preference for raw
   data files than robots is somewhat counter-intuitive. However, in
   context it makes some sense, as the civil authority on Chapek 9 has
   an unfortunate tendency to kill and dissect humans when they are
   identified. As such it seems most likely that the human participants
   did not respond honestly to the question, so as to avoid potentially
   undesirable consequences. This should be considered to be a
   substantial methodological weakness.

This could be classified as a rather extreme example of a reactivity
effect, I suppose. Obviously, in this case the problem is severe enough
that the study is more or less worthless as a tool for understanding the
difference preferences among humans and robots. However, I hope this
illustrates the difference between getting a statistically significant
result (our null hypothesis is rejected in favour of the alternative),
and finding something of scientific value (the data tell us nothing of
interest about our research hypothesis due to a big methodological
flaw).

Postscript
~~~~~~~~~~

I later found out the data were made up, and I’d been watching cartoons
instead of doing work.

------

.. [#]
   A technical note. The way I’ve described the test pretends that the column
   totals are fixed (i.e., the researcher intended to survey 87 robots and 93
   humans) and the row totals are random (i.e., it just turned out that 28
   people chose the puppy). To use the terminology from my mathematical
   statistics textbook (`Hogg et al., 2005 <References.html#hogg-2005>`__\ ),
   I should technically refer to this situation as a χ²-test of homogeneity and
   reserve the term χ²-test of independence for the situation where both the
   row and column totals are random outcomes of the experiment. In the initial
   drafts of this book that’s exactly what I did. However, it turns out that
   these two tests are identical, and so I’ve collapsed them together.

.. [#]
   Technically, *E*\ :sub:`ij` here is an estimate, so I should probably write
   it *Ê*\ :sub:`ij`\. But since no-one else does, I won’t either.

.. [#]
   A problem many of us worry about in real life.

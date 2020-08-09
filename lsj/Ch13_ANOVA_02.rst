.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

How ANOVA works
---------------

In order to answer the question posed by our clinical trial data we’re
going to run a one-way ANOVA. I’m going to start by showing you how to
do it the hard way, building the statistical tool from the ground up and
showing you how you could do it if you didn’t have access to any of the
cool built-in ANOVA functions in jamovi. And I hope you’ll read it
carefully, try to do it the long way once or twice to make sure you
really understand how ANOVA works, and then once you’ve grasped the
concept never *ever* do it this way again.

The experimental design that I described in the previous section
strongly suggests that we’re interested in comparing the average mood
change for the three different drugs. In that sense, we’re talking about
an analysis similar to the *t*-test (Chapter `Comparing two means
<Ch11_tTest.html#comparing-two-means>`__) but involving more than two groups.
If we let µ\ :sub:`P` denote the population mean for the mood change
induced by the placebo, and let µ\ :sub:`A` and µ\ :sub:`J` denote
the corresponding means for our two drugs, Anxifree and Joyzepam, then
the (somewhat pessimistic) null hypothesis that we want to test is that
all three population means are identical. That is, *neither* of the two
drugs is any more effective than a placebo. We can write out this null
hypothesis as:

H\ :sub:`0`: it is true that µ\ :sub:`P` = µ\ :sub:`A` = µ\ :sub:`J`

As a consequence, our alternative hypothesis is that at least one of the
three different treatments is different from the others. It’s a bit
tricky to write this mathematically, because (as we’ll discuss) there
are quite a few different ways in which the null hypothesis can be
false. So for now we’ll just write the alternative hypothesis like this:

H\ :sub:`1`: it is NOT true that µ\ :sub:`P` = µ\ :sub:`A` = µ\ :sub:`J`

This null hypothesis is a lot trickier to test than any of the ones
we’ve seen previously. How shall we do it? A sensible guess would be to
“do an ANOVA”, since that’s the title of the chapter, but it’s not
particularly clear why an “analysis of *variances*” will help us learn
anything useful about the *means*. In fact, this is one of the biggest
conceptual difficulties that people have when first encountering ANOVA.
To see how this works, I find it most helpful to start by talking about
variances. In fact, what I’m going to do is start by playing some
mathematical games with the formula that describes the variance. That
is, we’ll start out by playing around with variances and it will turn
out that this gives us a useful tool for investigating means.

Two formulas for the variance of *Y*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

First, let’s start by introducing some notation. We’ll use *G* to
refer to the total number of groups. For our data set there are three
drugs, so there are *G* = 3 groups. Next, we’ll use *N* to
refer to the total sample size; there are a total of *N* = 18
people in our data set. Similarly, let’s use |N_k| to denote the
number of people in the *k*-th group. In our fake clinical trial,
the sample size is |N_k| = 6` for all three groups.\ [#]_ Finally,
we’ll use *Y* to denote the outcome variable. In our case,
*Y* refers to mood change. Specifically, we’ll use |Y_ik|
to refer to the mood change experienced by the *i*-th member of
the *k*-th group. Similarly, we’ll use |Yb| to be the
average mood change, taken across all 18 people in the experiment, and
|Yb_k| to refer to the average mood change experienced by the
6 people in group *k*.\ [#]

Now that we’ve got our notation sorted out we can start writing down formulas.
To start with, let’s recall the formula for the variance that we used in
`Measures of variability <Ch04_Descriptives_2.html#measures-of-variability>`__,
way back in those kinder days when we were just doing descriptive statistics.
The sample variance of *Y* is defined as follows

.. math:: \mbox{Var}(Y) = \frac{1}{N} \sum_{k=1}^G \sum_{i=1}^{N_k} \left(Y_{ik} - \bar{Y} \right)^2

This formula looks pretty much identical to the formula for the variance in
`Measures of variability <Ch04_Descriptives_2.html#measures-of-variability>`__.
The only difference is that this time around I’ve got two summations here: I’m
summing over groups (i.e., values for *k*) and over the people within the
groups (i.e., values for *:`i*). This is purely a cosmetic detail. If I’d
instead used the notation |Y_p| to refer to the value of the outcome
variable for person *p* in the sample, then I’d only have a single
summation. The only reason that we have a double summation here is that
I’ve classified people into groups, and then assigned numbers to people
within groups.

A concrete example might be useful here. Let’s consider this table, in
which we have a total of *N* = 5 people sorted into :*G* = 2
groups. Arbitrarily, let’s say that the “cool” people are group 1 and
the “uncool” people are group 2. It turns out that we have three cool
people (*N*\ :sub:`1` = 3) and two uncool people (*N*\ :sub:`2` = 2)

+------+--------+--------+------------+----------------+-----------------+
| name | person | group  | group num. | index in group | grumpiness      |
+------+--------+--------+------------+----------------+-----------------+
|      | *p*    |        | *k*        | *i*            | |Y_ik| or |Y_p| |
+------+--------+--------+------------+----------------+-----------------+
| Ann  | 1      | cool   | 1          | 1              | 20              |
+------+--------+--------+------------+----------------+-----------------+
| Ben  | 2      | cool   | 1          | 2              | 55              |
+------+--------+--------+------------+----------------+-----------------+
| Cat  | 3      | cool   | 1          | 3              | 21              |
+------+--------+--------+------------+----------------+-----------------+
| Dan  | 4      | uncool | 2          | 1              | 91              |
+------+--------+--------+------------+----------------+-----------------+
| Egg  | 5      | uncool | 2          | 2              | 22              |
+------+--------+--------+------------+----------------+-----------------+

Notice that I’ve constructed two different labelling schemes here. We
have a “person” variable *p* so it would be perfectly sensible to
refer to |Y_p| as the grumpiness of the *p*-th person in the
sample. For instance, the table shows that Dan is the fourth so we’d say
*p* = 4. So, when talking about the grumpiness *Y* of this
“Dan” person, whoever he might be, we could refer to his grumpiness by
saying that |Y_p| = 91, for person *p* = 4 that is. However,
that’s not the only way we could refer to Dan. As an alternative we
could note that Dan belongs to the “uncool” group (*k* = 2), and
is in fact the first person listed in the uncool group (*i* = 1).
So it’s equally valid to refer to Dan’s grumpiness by saying that
|Y_ik| = 91, where *k* = 2 and *i* = 1.

In other words, each person *p* corresponds to a unique *ik*
combination, and so the formula that I gave above is actually identical
to our original formula for the variance, which would be

.. math:: \mbox{Var}(Y) = \frac{1}{N} \sum_{p=1}^N  \left(Y_{p} - \bar{Y} \right)^2

In both formulas, all we’re doing is summing over all of the
observations in the sample. Most of the time we would just use the
simpler |Y_p| notation; the equation using |Y_p| is clearly
the simpler of the two. However, when doing an ANOVA it’s important to
keep track of which participants belong in which groups, and we need to
use the |Y_ik| notation to do this.

From variances to sums of squares
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Okay, now that we’ve got a good grasp on how the variance is calculated,
let’s define something called the **total sum of squares**, which is
denoted |SS_t|\. This is very simple. Instead of averaging
the squared deviations, which is what we do when calculating the
variance, we just add them up.

So the formula for the total sum of squares is almost identical to the
formula for the variance

.. math:: \mbox{SS}_{tot} = \sum_{k=1}^G \sum_{i=1}^{N_k} \left(Y_{ik} - \bar{Y} \right)^2

When we talk about analysing variances in the context of ANOVA, what
we’re really doing is working with the total sums of squares rather than
the actual variance. One very nice thing about the total sum of squares
is that we can break it up into two different kinds of variation.

First, we can talk about the **within-group sum of squares**, in which
we look to see how different each individual person is from their own
group mean

.. math:: \mbox{SS}_w = \sum_{k=1}^G \sum_{i=1}^{N_k} \left( Y_{ik} - \bar{Y}_k \right)^2

where |Yb_k| is a group mean. In our example,
|Yb_k| would be the average mood change experienced by those
people given the *k*-th drug. So, instead of comparing individuals
to the average of all people in the experiment, we’re only comparing
them to those people in the the same group. As a consequence, you’d
expect the value of |SS_w| to be smaller than the total sum
of squares, because it’s completely ignoring any group differences,
i.e., whether the drugs will have different effects on people’s moods.

Next, we can define a third notion of variation which captures *only*
the differences between groups. We do this by looking at the differences
between the group means |Yb_k| and grand mean
|Yb|.

In order to quantify the extent of this variation, what we do is
calculate the **between-group sum of squares**

.. math::

   \begin{aligned}
   \mbox{SS}_{b} &=& \sum_{k=1}^G \sum_{i=1}^{N_k} \left( \bar{Y}_k - \bar{Y} \right)^2 \\
                 &=& \sum_{k=1}^G N_k \left( \bar{Y}_k - \bar{Y} \right)^2\end{aligned}

It’s not too difficult to show that the total variation among people in
the experiment |SS_t| is actually the sum of the
differences between the groups |SS_b| and the variation
inside the groups S\ :sub:`w`\. That is,

|SS_w| + |SS_b| = |SS_t|

Yay.

.. ----------------------------------------------------------------------------

.. _fig-anovaWthBtw:
.. figure:: ../_images/lsj_anovaWthBtw.*
   :alt: illustration of between and within groups variation

   Graphical illustration of “between groups” variation (left panel) and
   “within groups” variation (right panel). In the left panel, the arrows show
   the differences in the group means. In the right panel, the arrows highlight
   the variability within each group.
   
.. ----------------------------------------------------------------------------

Okay, so what have we found out? We’ve discovered that the total
variability associated with the outcome variable
(|SS_t|\) can be mathematically carved up into the sum
of “the variation due to the differences in the sample means for the
different groups” (|SS_b|\) plus “all the rest of the
variation” (|SS_w|\).\ [#]_ How does that help me find out
whether the groups have different population means? Um. Wait. Hold on a
second. Now that I think about it, this is *exactly* what we were
looking for. If the null hypothesis is true then you’d expect all the
sample means to be pretty similar to each other, right? And that would
imply that you’d expect |SS_b| to be really small, or at
least you’d expect it to be a lot smaller than “the variation associated
with everything else”, |SS_w|\. Hmm. I detect a hypothesis
test coming on.

From sums of squares to the *F*-test
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As we saw in the last section, the *qualitative* idea behind ANOVA is to
compare the two sums of squares values |SS_b| and
|SS_w| to each other. If the between-group variation
|SS_b| is large relative to the within-group variation
|SS_w| then we have reason to suspect that the population
means for the different groups aren’t identical to each other. In order
to convert this into a workable hypothesis test, there’s a little bit of
“fiddling around” needed. What I’ll do is first show you *what* we do to
calculate our test statistic, the ***F* ratio**, and then try to
give you a feel for *why* we do it this way.

In order to convert our SS values into an *F*-ratio the first
thing we need to calculate is the **degrees of freedom** associated with
the |SS_b| and |SS_w| values. As usual, the degrees of
freedom corresponds to the number of unique “data points” that
contribute to a particular calculation, minus the number of
“constraints” that they need to satisfy. For the within-groups
variability what we’re calculating is the variation of the individual
observations (*N* data points) around the group means (*G* constraints).
In contrast, for the between groups variability we’re
interested in the variation of the group means (*G* data points)
around the grand mean (1 constraint). Therefore, the degrees of freedom
here are:

| |df_b| = G - 1
| |df_w| = N - G

Okay, that seems simple enough. What we do next is convert our summed
squares value into a “mean squares” value, which we do by dividing by
the degrees of freedom:

| |MS_b| = |SS_b| / |df_b|
| |MS_w| = |SS_w| / |df_w|

Finally, we calculate the *F*-ratio by dividing the between-groups
MS by the within-groups MS:

| F = |MS_b| / |MS_w|

At a very general level, the intuition behind the *F* statistic is
straightforward. Bigger values of *F* means that the
between-groups variation is large relative to the within-groups
variation. As a consequence, the larger the value of *F* the more
evidence we have against the null hypothesis. But how large does
*F* have to be in order to actually *reject* H\ :sub:`0`? In order
to understand this, you need a slightly deeper understanding of what
ANOVA is and what the mean squares values actually are.

The next section discusses that in a bit of detail, but for readers that
aren’t interested in the details of what the test is actually measuring
I’ll cut to the chase. In order to complete our hypothesis test we need
to know the sampling distribution for *F* if the null hypothesis
is true. Not surprisingly, the sampling distribution for the *F*
statistic under the null hypothesis is an *F* distribution. If you
recall our discussion of the *F* distribution in Chapter `Introduction to 
probability <Ch07_Probability.html#introduction-to-probability>`__, the
*F*-distribution has two parameters, corresponding to the two degrees of
freedom involved. The first one *df*\ :sub:`1` is the between groups
degrees of freedom |df_b|, and the second one *df*\ :sub:`2` is
the within groups degrees of freedom |df_w|\.

A summary of all the key quantities involved in a one-way ANOVA,
including the formulas showing how they are calculated, is shown in
:numref:`tab-anovatable`.

.. _tab-anovatable:
.. table:: All of the key quantities involved in an ANOVA organised
   into a “standard” ANOVA table. The formulas for all quantities
   (except the *p*-value which has a very ugly formula and would
   be nightmarishly hard to calculate without a computer) are shown.

   +----------+----------+----------+----------+-----------+----------+
   |          | df       | sum of   | mean     | *F*-      | *p*-     |
   |          |          | squares  | squares  | statistic | value    |
   +==========+==========+==========+==========+===========+==========+
   | between  | |df_b|   | |SS_b| = | |MS_b| = | F =       | [comp    |
   | groups   | = G - 1  | |f_SS_b| | |SS_b| / | |MS_b| /  | licated] |   
   |          |          |          | |df_b|   | |MS_w|    |          |
   +----------+----------+----------+----------+-----------+----------+
   | within   | |df_w|   | |SS_w| = | |MS_w| = | -         | -        |
   | groups   | = N - G  | |f_SS_w| | |SS_w| / |           |          |
   |          |          |          | |df_w|   |           |          |
   +----------+----------+----------+----------+-----------+----------+

The model for the data and the meaning of *F*
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

At a fundamental level ANOVA is a competition between two different
statistical models, H\ :sub:`0` and H\ :sub:`1`. When I described the
null and alternative hypotheses at the start of the section, I was a
little imprecise about what these models actually are. I’ll remedy that
now, though you probably won’t like me for doing so. If you recall, our
null hypothesis was that all of the group means are identical to one
another. If so, then a natural way to think about the outcome variable
|Y_ik| is to describe individual scores in terms of a single
population mean *µ*, plus the deviation from that population
mean. This deviation is usually denoted ϵ\ :sub:`ik` and is
traditionally called the *error* or **residual** associated with that
observation. Be careful though. Just like we saw with the word
“significant”, the word “error” has a technical meaning in statistics
that isn’t quite the same as its everyday English definition. In
everyday language, “error” implies a mistake of some kind, but in
statistics it doesn’t (or at least, not necessarily). With that in mind,
the word “residual” is a better term than the word “error”. In
statistics both words mean “leftover variability”, that is “stuff” that
the model can’t explain.

In any case, here’s what the null hypothesis looks like when we write it
as a statistical model

|Y_ik| = µ + ϵ\ :sub:`ik`

where we make the *assumption* (discussed later) that the residual
values ϵ\ :sub:`ik` are normally distributed, with mean 0 and a
standard deviation *σ* that is the same for all groups. To
use the notation that we introduced in Chapter `Introduction to probability 
<Ch07_Probability.html#introduction-to-probability>`__ we would write this
assumption like this:

ϵ\ :sub:`ik` ~ Normal(0, σ²)

What about the alternative hypothesis, H\ :sub:`1`? The only difference
between the null hypothesis and the alternative hypothesis is that we
allow each group to have a different population mean. So, if we let
µ\ :sub:`k` denote the population mean for the *k*-th group in
our experiment, then the statistical model corresponding to H\ :sub:`1`
is

|Y_ik| = µ\ :sub:`k` + ϵ\ :sub:`ik`

where, once again, we assume that the error terms are normally
distributed with mean 0 and standard deviation *σ*. That is,
the alternative hypothesis also assumes that
ϵ ~ Normal(0, σ²)

Okay, now that we’ve described the statistical models underpinning
H\ :sub:`0` and H\ :sub:`1` in more detail, it’s now pretty
straightforward to say what the mean square values are measuring, and
what this means for the interpretation of *F*. I won’t bore you
with the proof of this but it turns out that the within-groups mean
square, |MS_w|, can be viewed as an estimator (in the technical
sense, Chapter `Estimating unknown quantities from a sample
<Ch08_Estimation.html#estimating-unknown-quantities-from-a-sample>`__) of
the error variance σ². The between-groups mean square |MS_b|
is also an estimator, but what it estimates is the error variance *plus*
a quantity that depends on the true differences among the group means.
If we call this quantity Q, then we can see that the
*F*-statistic is basically:\ [#]_

.. math:: F = \frac{\hat{Q} + \hat\sigma^2}{\hat\sigma^2}

where the true value Q = 0 if the null hypothesis is true, and
Q > 0 if the alternative hypothesis is true (`Hays, 1994
<References.html#hays-1994>`__\ , Ch. 10). Therefore, at a bare
minimum *the *F* value must be larger than 1* to have any chance
of rejecting the null hypothesis. Note that this *doesn’t* mean that
it’s impossible to get an *F*-value less than 1. What it means is
that if the null hypothesis is true the sampling distribution of the
*F* ratio has a mean of 1,\ [#]_ and so we need to see
*F*-values larger than 1 in order to safely reject the null.

To be a bit more precise about the sampling distribution, notice that if
the null hypothesis is true, both |MS_b| and |MS_w| are
estimators of the variance of the residuals ϵ\ :sub:`ik`. If
those residuals are normally distributed, then you might suspect that
the estimate of the variance of ϵ\ :sub:`ik` is χ²-distributed,
because (as discussed in `Other useful distributions 
<Ch07_Probability_6.html#other-useful-distributions>`__) that’s what a
χ²-distribution *is*: it’s what you get when you square a bunch of
normally-distributed things and add them up. And since the *F*
distribution is (again, by definition) what you get when you take the
ratio between two things that are χ² distributed, we have
our sampling distribution. Obviously, I’m glossing over a whole lot of
stuff when I say this, but in broad terms, this really is where our
sampling distribution comes from.

A worked example
~~~~~~~~~~~~~~~~

The previous discussion was fairly abstract and a little on the
technical side, so I think that at this point it might be useful to see
a worked example. For that, let’s go back to the clinical trial data
that I introduced at the start of the chapter. The descriptive
statistics that we calculated at the beginning tell us our group means:
an average mood gain of 0.45 for the placebo, 0.72 for Anxifree, and
1.48 for Joyzepam. With that in mind, let’s party like it’s 1899\ [#]_
and start doing some pencil and paper calculations. I’ll only do this
for the first 5 observations because it’s not bloody 1899 and I’m very
lazy. Let’s start by calculating |SS_w|, the within-group
sums of squares. First, let’s draw up a nice table to help us with our
calculations:

========= =======
group     outcome
*k*       |Y_ik|
placebo   0.5
placebo   0.3
placebo   0.1
anxifree  0.6
anxifree  0.4
========= =======

At this stage, the only thing I’ve included in the table is the raw data
itself. That is, the grouping variable (i.e., ``drug``) and outcome
variable (i.e. ``mood.gain``) for each person. Note that the outcome
variable here corresponds to the |Y_ik| value in our equation
previously. The next step in the calculation is to write down, for each
person in the study, the corresponding group mean, |Yb_k|.
This is slightly repetitive but not particularly difficult since we
already calculated those group means when doing our descriptive
statistics:

========= ============== =================
group     outcome        **group mean**
*k*       |Y_ik|         |Yb_k|
placebo   0.5            **0.45**
placebo   0.3            **0.45**
placebo   0.1            **0.45**
anxifree  0.6            **0.72**
anxifree  0.4            **0.72**
========= ============== =================

Now that we’ve written those down, we need to calculate, again for every
person, the deviation from the corresponding group mean. That is, we
want to subtract |Y_ik| - |Yb_k|. After we’ve done that, we
need to square everything. When we do that, here’s what we get:

+-----------+---------+-------------+------------+-------------+
| group     | outcome | group mean  | dev. from  | squared     |
|           |         |             | group mean | deviation   |
+-----------+---------+-------------+------------+-------------+
| *k*       | |Y_ik|  | |Yb_k|      | (|Y_ik|    | (|Y_ik|     |
|           |         |             | - |Yb_k|)  | - |Yb_k|\)² |
+-----------+---------+-------------+------------+-------------+
| placebo   | 0.5     | 0.45        | **0.05**   | **0.0025**  |
+-----------+---------+-------------+------------+-------------+
| placebo   | 0.3     | 0.45        | **-0.15**  | **0.0225**  |
+-----------+---------+-------------+------------+-------------+
| placebo   | 0.1     | 0.45        | **-0.35**  | **0.1225**  |
+-----------+---------+-------------+------------+-------------+
| anxifree  | 0.6     | 0.72        | **-0.12**  | **0.0136**  |
+-----------+---------+-------------+------------+-------------+
| anxifree  | 0.4     | 0.72        | **-0.32**  | **0.1003**  |
+-----------+---------+-------------+------------+-------------+

The last step is equally straightforward. In order to calculate the
within-group sum of squares we just add up the squared deviations across
all observations:

|SS_w| = 0.0025 + 0.0225 + 0.1225 + 0.0136 + 0.1003 = 0.2614

Of course, if we actually wanted to get the *right* answer we’d need to
do this for all 18 observations in the data set, not just the first
five. We could continue with the pencil and paper calculations if we
wanted to, but it’s pretty tedious. Alternatively, it’s not too hard to
do this in a dedicated spreadsheet programme such as OpenOffice or
Excel. Try and do it yourself. The one that I did, in Excel, is in the
file ``clinicaltrial_anova.xls``. When you do it you should end up with
a within-group sum of squares value of 1.39.

Okay. Now that we’ve calculated the within groups variation,
|SS_w|, it’s time to turn our attention to the between-group sum of
squares, |SS_b|. The calculations for this case are very similar. The
main difference is that instead of calculating the differences between
an observation |Y_ik| and a group mean |Yb_k| for all of the observations,
we calculate the differences between the group means |Yb_k| and the grand
mean |Yb| (in this case 0.88) for all of the groups.

+-----------+-------------+-------------+-------------+-------------+
| group     | group mean  | grand mean  | deviation   | squared     |
|           |             |             |             | deviations  |
+-----------+-------------+-------------+-------------+-------------+
| *k*       | |Yb_k|      | |Yb|        | |Yb_k| -    | (|Yb_k| -   |
|           |             |             | |YB|        | |Yb|)²      |
+-----------+-------------+-------------+-------------+-------------+
| placebo   | 0.45        | 0.88        | -0.43       | 0.19        |
+-----------+-------------+-------------+-------------+-------------+
| anxifree  | 0.72        | 0.88        | -0.16       | 0.03        |
+-----------+-------------+-------------+-------------+-------------+
| joyzepam  | 1.48        | 0.88        | 0.60        | 0.36        |
+-----------+-------------+-------------+-------------+-------------+

However, for the between group calculations we need to multiply each of
these squared deviations by |N_k|, the number of observations in
the group. We do this because every *observation* in the group (all
|N_k| of them) is associated with a between group difference. So
if there are six people in the placebo group and the placebo group mean
differs from the grand mean by 0.19, then the *total* between group
variation associated with these six people is 6 · 0.19 = 1.14. So we
have to extend our little table of calculations:

+-----------+-----+----------------+--------+------------------+
| group     | ... | squared        | sample | weighted         |
|           |     | deviations     | size   | squared dev      |
+-----------+-----+----------------+--------+------------------+
| *k*       | ... | (|Yb_k| -      | |N_k|  | |N_k| ·          |
|           |     | |Yb|)²         |        | (|Yb_k| - |Yb|)² |
+-----------+-----+----------------+--------+------------------+
| placebo   | ... | 0.19           | 6      | 1.14             |
+-----------+-----+----------------+--------+------------------+
| anxifree  | ... | 0.03           | 6      | 0.18             |
+-----------+-----+----------------+--------+------------------+
| joyzepam  | ... | 0.36           | 6      | 2.16             |
+-----------+-----+----------------+--------+------------------+

And so now our between group sum of squares is obtained by summing these
“weighted squared deviations” over all three groups in the study:

|SS_b| = 1.14 + 0.18 + 2.16 = 3.48

As you can see, the between group calculations are a lot shorter.\ [#]_
Now that we’ve calculated our sums of squares values,
|SS_b| and |SS_w|, the rest of the ANOVA is
pretty painless. The next step is to calculate the degrees of freedom.
Since we have *G* = 3 groups and *N* = 18 observations in
total our degrees of freedom can be calculated by simple subtraction:

|df_b| = G - 1 = 2
|df_w| = N - G = 15

Next, since we’ve now calculated the values for the sums of squares and
the degrees of freedom, for both the within-groups variability and the
between-groups variability, we can obtain the mean square values by
dividing one by the other:

.. math::

   \begin{array}{lclclcl}
   \mbox{MS}_b &=& \displaystyle\frac{\mbox{SS}_b }{  \mbox{df}_b } &=& \displaystyle\frac{3.48}{ 2} &=& 1.74 \\ 
   \mbox{MS}_w &=& \displaystyle\frac{\mbox{SS}_w }{  \mbox{df}_w } &=& \displaystyle\frac{1.39}{15} &=& 0.09
   \end{array}

We’re almost done. The mean square values can be used to calculate the
*F*-value, which is the test statistic that we’re interested in.
We do this by dividing the between-groups MS value by the within-groups
MS value.

.. math:: F = \frac{\mbox{MS}_b }{\mbox{MS}_w} = \frac{1.74}{0.09} = 19.3

Woohooo! This is terribly exciting, yes? Now that we have our test
statistic, the last step is to find out whether the test itself gives us
a significant result. As discussed in Chapter 
`Hypothesis testing <Ch09_HypothesisTesting.html#hypothesis-testing>`__
back in the “old days” what we’d do is open up a statistics textbook or flick
to the back section which would actually have a huge lookup table and we would
find the threshold *F* value corresponding to a particular value
of alpha (the null hypothesis rejection region), e.g. 0.05, 0.01 or
0.001, for 2 and 15 degrees of freedom. Doing it this way would give us
a threshold *F* value for an alpha of 0.001 of 11.34. As this is
less than our calculated *F* value we say that *p* < 0.001.
But those were the old days, and nowadays fancy stats software
calculates the exact *p*-value for you. In fact, the exact
*p*-value is 0.000071. So, unless we’re being *extremely*
conservative about our Type I error rate, we’re pretty much guaranteed
to reject the null hypothesis.

At this point, we’re basically done. Having completed our calculations,
it’s traditional to organise all these numbers into an ANOVA table like
the one in :numref:`tab-anovatable`. For our clinical trial data,
the ANOVA table would look like this:

+-----------+----+-----------+-----------+----------------+-----------+
|           | df | sum of    | mean      | *F*\-statistic | *p*-value |
|           |    | squares   | squares   |                |           |
+===========+====+===========+===========+================+===========+
| between   | 2  | 3.48      | 1.74      | 19.3           | 0.000071  |
| groups    |    |           |           |                |           |
+-----------+----+-----------+-----------+----------------+-----------+
| within    | 15 | 1.39      | 0.09      | -              | -         |
| groups    |    |           |           |                |           |
+-----------+----+-----------+-----------+----------------+-----------+

These days, you’ll probably never have much reason to want to construct
one of these tables yourself, but you will find that almost all
statistical software (jamovi included) tends to organise the output of
an ANOVA into a table like this, so it’s a good idea to get used to
reading them. However, although the software will output a full ANOVA
table, there’s almost never a good reason to include the whole table in
your write up. A pretty standard way of reporting this result would be
to write something like this:

   One-way ANOVA showed a significant effect of drug on mood gain:
   *F*\(2,15) = 19.3, *p* < 0.001.

Sigh. So much work for one short sentence.

------

.. [#]
   When all groups have the same number of observations, the
   experimental design is said to be “balanced”. Balance isn’t such a
   big deal for one-way ANOVA, which is the topic of this chapter. It
   becomes more important when you start doing more complicated ANOVAs.

.. [#]
   |SS_w| is also referred to in an independent ANOVA as
   the error variance, or SS\ :sub:`error`

.. [#]
   If you read ahead to Chapter `Factorial ANOVA
   <Ch14_ANOVA2.html#factorial-anova>`__ and look at how the “treatment effect”
   at level k of a factor is defined in terms of the α\ :sub:`k` values (see
   Section `Factorial ANOVA 2: balanced designs, interactions allowed
   <Ch14_ANOVA2_02.html#factorial-anova-2-balanced-designs-interactions-allowed>`__),
   it turns out that Q refers to a weighted mean of the squared treatment
   effects, :math:`Q = (\sum_{k=1}^G N_k \alpha_k^2)/(G-1)`.

.. [#]
   Or, if we want to be sticklers for accuracy,
   :math:`1 + \frac{2}{df_2 - 2}`.

.. [#]
   Or, to be precise, party like “it’s 1899 and we’ve got no friends and
   nothing better to do with our time than do some calculations that
   wouldn’t have made any sense in 1899 because ANOVA didn’t exist until
   about the 1920s”.

.. [#]
   In the Excel ``clinicaltrial_anova.xls`` the value for |SS_b|
   worked out to be very slightly different, 3.45, than that shown in
   the text above (rounding errors!)
   
.. ----------------------------------------------------------------------------

.. |N_k|    replace:: *N*\ :sub:`k`
                      
.. |Y_ik|   replace:: *Y*\ :sub:`ik`
.. |Y_p|    replace:: *Y*\ :sub:`p`

.. |Yb_k|   replace:: :math:`\bar{Y}_k`
.. |Yb|     replace:: :math:`\bar{Y}`

.. |SS_b|   replace:: SS\ :sub:`b`
.. |SS_w|   replace:: SS\ :sub:`w`
.. |SS_t|   replace:: SS\ :sub:`tot`

.. |df_b|   replace:: *df*\ :sub:`b`
.. |df_w|   replace:: *df*\ :sub:`w`

.. |MS_b|   replace:: MS\ :sub:`b`
.. |MS_w|   replace:: MS\ :sub:`w`

.. |f_SS_b| replace:: :math:`\displaystyle\sum_{k=1}^G N_k(\bar{Y}_k - \bar{Y})^2`
.. |f_SS_w| replace:: :math:`\displaystyle\sum_{k=1}^G \displaystyle\sum_{i = 1}^{N_k} ({Y}_{ik} - \bar{Y}_k)^2`

.. `\displaystyle\frac{\mbox{SS}_w}{\mbox{df}_w}`


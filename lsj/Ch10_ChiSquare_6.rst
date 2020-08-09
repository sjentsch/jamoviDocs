.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

The Fisher exact test
---------------------

What should you do if your cell counts are too small, but you’d still
like to test the null hypothesis that the two variables are independent?
One answer would be “collect more data”, but that’s far too glib There
are a lot of situations in which it would be either infeasible or
unethical do that. If so, statisticians have a kind of moral obligation
to provide scientists with better tests. In this instance, `Fisher (1922a)
<References.html#fisher-1922a>`__ kindly provided the right answer to
the question. To illustrate the basic idea let’s suppose that we’re
analysing data from a field experiment looking at the emotional status
of people who have been accused of Witchcraft, some of whom are
currently being burned at the stake.\ [#]_ Unfortunately for the
scientist (but rather fortunately for the general populace), it’s
actually quite hard to find people in the process of being set on fire,
so the cell counts are awfully small in some cases. A contingency table
of the ``salem.csv`` data illustrates the point:

.. code-block:: R

              on.fire
   happy    FALSE TRUE
     FALSE      3    3
     TRUE      10    0

Looking at this data, you’d be hard pressed not to suspect that people
not on fire are more likely to be happy than people on fire. However,
the χ²-test makes this very hard to test because of the small
sample size. So, speaking as someone who doesn’t want to be set on fire,
I’d *really* like to be able to get a better answer than this. This is
where **Fisher’s exact test** (`Fisher, 1922a
<References.html#fisher-1922a>`__\ ) comes in very handy.

The Fisher exact test works somewhat differently to the χ²-test
(or in fact any of the other hypothesis tests that I talk about in this
book) insofar as it doesn’t have a test statistic, but it calculates the
*p*-value “directly”. I’ll explain the basics of how the test
works for a 2 · 2 contingency table. As before, let’s have some notation:

+-----------------+----------------+----------------+---------------+
|                 | Happy          | Sad            | Total         |
+=================+================+================+===============+
| Set on fire     | *O*\ :sub:`11` | *O*\ :sub:`12` | *R*\ :sub:`1` |
+-----------------+----------------+----------------+---------------+
| Not set on fire | *O*\ :sub:`21` | *O*\ :sub:`22` | *R*\ :sub:`2` |
+-----------------+----------------+----------------+---------------+
| Total           | *C*\ :sub:`1`  | *C*\ :sub:`2`  | *N*           |
+-----------------+----------------+----------------+---------------+

In order to construct the test Fisher treats both the row and column
totals (*R*\ :sub:`1`\, *R*\ :sub:`2`, *C*\ :sub:`1` and *C*\ :sub:`2`\)
as known, fixed quantities and then calculates the probability that we would have
obtained the observed frequencies that we did (*O*\ :sub:`11`\, *O*\ :sub:`12`\,
*O*\ :sub:`21` and *O*\ :sub:`22`\) given those totals.
In the notation that we developed in Chapter `Introduction to probability 
<Ch07_Probability.html#introduction-to-probability>`__ this is written:

| *P*\(*O*\ :sub:`11`, *O*\ :sub:`12`, *O*\ :sub:`21`, *O*\ :sub:`22` |
  *R*\ :sub:`1`, *R*\ :sub:`2`, *C*\ :sub:`1`, *C*\ :sub:`2`)

and as you might imagine, it’s a slightly tricky exercise to figure out
what this probability is. But it turns out that this probability is
described by a distribution known as the *hypergeometric distribution*.
What we have to do to calculate our *p*-value is calculate the
probability of observing this particular table *or a table that is “more
extreme”*.\ [#]_ Back in the 1920s, computing this sum was daunting even
in the simplest of situations, but these days it’s pretty easy as long
as the tables aren’t too big and the sample size isn’t too large. The
conceptually tricky issue is to figure out what it means to say that one
contingency table is more “extreme” than another. The easiest solution
is to say that the table with the lowest probability is the most
extreme. This then gives us the *p*-value.

You can specify this test in jamovi from a check box in the ‘Statistics’
options of the ‘Contingency Tables’ analysis. When you do this with the
data from the ``salem.csv`` file, the Fisher exact test statistic is
shown in the results. The main thing we’re interested in here is the
*p*-value, which in this case is small enough (*p* = 0.036) to
justify rejecting the null hypothesis that people on fire are just as
happy as people not on fire (see :numref:`fig-Fisher`).

.. ----------------------------------------------------------------------------

.. _fig-Fisher:
.. figure:: ../_images/lsj_Fisher.*
   :alt: Fisher exact test output in jamovi

   Fisher exact test output in jamovi. Ignore the ‘Value’ and just refer to
   the p-value
   
.. ----------------------------------------------------------------------------

------

.. [#]
   This example is based on a joke article published in the *Journal of
   Irreproducible Results*.

.. [#]
   Not surprisingly, the Fisher exact test is motivated by Fisher’s
   interpretation of a *p*-value, not Neyman’s! See Section `The p value of
   a test <Ch09_HypothesisTesting_05.html#the-p-value-of-a-test>`__.

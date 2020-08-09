.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Comparing two means
===================

In Chapter `Categorical data analysis
<Ch10_ChiSquare.html#categorical-data-analysis>`__ we covered the situation
when your outcome variable is nominal scale and your predictor variable
is also nominal scale. Lots of real world situations have that
character, and so you’ll find that χ²-tests in particular are
quite widely used. However, you’re much more likely to find yourself in
a situation where your outcome variable is interval scale or higher, and
what you’re interested in is whether the average value of the outcome
variable is higher in one group or another. For instance, a psychologist
might want to know if anxiety levels are higher among parents than
non-parents, or if working memory capacity is reduced by listening to
music (relative to not listening to music). In a medical context we
might want to know if a new drug increases or decreases blood pressure.
An agricultural scientist might want to know whether adding phosphorus
to Australian native plants will kill them.\ [#]_ In all these situations
our outcome variable is a fairly continuous, interval or ratio scale
variable, and our predictor is a binary “grouping” variable. In other
words, we want to compare the means of the two groups.

The standard answer to the problem of comparing means is to use a
*t*-test, of which there are several varieties depending on
exactly what question you want to solve. As a consequence, the majority
of this chapter focuses on different types of *t*-test: `one sample t-tests
<Ch11_tTest_02.html#the-one-sample-t-test>`__ are discussed first, followed by
two different flavours of the `independent samples t-test
<Ch11_tTest_03.html#the-independent-samples-t-test-student-test>`__, the
`Student test <Ch11_tTest_03.html#the-independent-samples-t-test-student-test>`__
assumes that the groups have the same standard deviation, the `Welch test
<Ch11_tTest_04.html#the-independent-samples-t-test-welch-test>`__ does not.
Afterwards, `paired samples t-tests
<Ch11_tTest_05.html#the-paired-samples-t-test>`__ are discussed. We’ll
then talk about `One-sided tests <Ch11_tTest_06.html#one-sided-tests>`__ and,
after that, we’ll talk a bit about Cohen’s *d*, which is the standard measure
of `effect size <Ch11_tTest_07.html#effect-size>`__ for a *t*-test.
The later sections of the chapter focus on the assumptions of the *t*-tests, 
especially `normality` <Ch11_tTest_08.html#checking-the-normality-of-a-sample>`__
and possible `remedies 
<Ch11_tTest_09.html#testing-non-normal-data-with-wilcoxon-tests>`__ if they are
violated. However, before discussing any of these useful things, we’ll start
with a discussion of the *z*-test.

.. toctree::
   :hidden:

   Ch11_tTest_01
   Ch11_tTest_02
   Ch11_tTest_03
   Ch11_tTest_04
   Ch11_tTest_05
   Ch11_tTest_06
   Ch11_tTest_07
   Ch11_tTest_08
   Ch11_tTest_09
   Ch11_tTest_10
   
------

.. [#]
   Informal experimentation in my garden suggests that yes, it does. Australian
   natives are adapted to low phosphorus levels relative to everywhere else on
   Earth, so if you’ve bought a house with a bunch of exotics and you want to
   plant natives, keep them separate; nutrients to European plants are poison
   to Australian ones.

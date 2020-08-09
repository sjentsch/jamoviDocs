.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

The method of planned comparisons
---------------------------------
`The method of planned comparisons <Ch14_ANOVA2_09.html#the-method-of-planned-comparisons>`__
Following on from the previous sections on contrasts and post-hoc tests
in ANOVA, I think the method of planned comparisons is important enough
to deserve a quick discussion. In our discussions of multiple
comparisons, in the previous section and back in
Chapter `Comparing several means (one-way ANOVA)
<Ch13_ANOVA.html#comparing-several-means-one-way-anova>`__, I’ve been
assuming that the tests
you want to run are genuinely post-hoc. For instance, in our drugs
example above, maybe you thought that the drugs would all have different
effects on mood (i.e., you hypothesised a main effect of drug), but you
didn’t have any specific hypothesis about how they would be different,
nor did you have any real idea about *which* pairwise comparisons would
be worth looking at. If that is the case, then you really have to resort
to something like Tukey’s HSD to do your pairwise comparisons.

The situation is rather different, however, if you genuinely did have
real, specific hypotheses about which comparisons are of interest, and
you *never* *ever* have any intention to look at any other comparisons
besides the ones that you specified ahead of time. When this is true,
and if you honestly and rigorously stick to your noble intentions to not
run any other comparisons (even when the data look like they’re showing
you deliciously significant effects for stuff you didn’t have a
hypothesis test for), then it doesn’t really make a lot of sense to run
something like Tukey’s HSD, because it makes corrections for a whole
bunch of comparisons that you never cared about and never had any
intention of looking at. Under those circumstances, you can safely run a
(limited) number of hypothesis tests without making an adjustment for
multiple testing. This situation is known as the **method of planned
comparisons**, and it is sometimes used in clinical trials. However,
further consideration is out of scope for this introductory book, but at
least you know that this method exists!

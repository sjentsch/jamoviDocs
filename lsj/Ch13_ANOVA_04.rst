.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Effect size
-----------

There’s a few different ways you could measure the effect size in an
ANOVA, but the most commonly used measures are η² (**eta
squared**) and partial η². For a one-way analysis of
variance they’re identical to each other, so for the moment I’ll just
explain η². The definition of η² is actually
really simple

| η² = SS\ :sub:`b` / SS\ :sub:`tot` 

That’s all it is. So when I look at the ANOVA table in
:numref:`fig-anova2`, I see that SS\ :sub:`b`   = 3.45 and
SS\ :sub:`tot` = 3.45 + 1.39 = 4.84. Thus we get an
η² value of

| η² = 3.45 / 4.84 = 0.71 

The interpretation of η² is equally straightforward. It refers to the
proportion of the variability in the outcome variable (``mood.gain``) that can
be explained in terms of the predictor (``drug``). A value of η² = 0 means that
there is no relationship at all between the two, whereas a value of η = 1 means
that the relationship is perfect. Better yet, the η² value is very closely
related to *R²*, as discussed previously in Section `The R² (R-squared) value
<Ch12_Regression_06.html#the-r2-r-squared-value>`__, and has an equivalent
interpretation.

Although many statistics text books suggest η² as the default effect size
measure in ANOVA, there’s an interesting blog post by Daniel Lakens suggesting
that eta-squared is perhaps not the best measure of effect size in real world
data analysis, because it can be a biased estimator
(http://daniellakens.blogspot.com.au/2015/06/why-you-should-use-omega-squared.html).
Usefully, there is also an option in jamovi to specify omega-squared (ω²), which
is less biased, alongside eta-squared.

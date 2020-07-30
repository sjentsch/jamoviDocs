.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

============
jamovi guide
============

The aim of the jamovi guide is to provide short, non-technical tutorials on
how to conduct common statistical procedures in jamovi. However, it is not a
resource providing an in-depth introduction into the background of those
procedures. For such an endevaour, there are plenty of other resources, e.g the
free e-book `learning statistics with jamovi <https://www.learnstatswithjamovi.com/>`__

.. toctree::
   :titlesonly:
   :name: sec-descriptives
   
   jg_1_descriptive-analyses

-------
t-tests
-------

The t-test is used to test whether the mean value in a normally distributed
data set deviates significantly from a null hypothesis (which assumes that
there is no difference). The concept is presented in this `introductory video 
<https://www.youtube.com/embed/mb7KCLYEis8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__.

There are three types of t-tests:

.. toctree::
   :titlesonly:
   :name: sec-t-tests
   
   jg_21_t-test-independent
   jg_22_t-test-paired
   jg_23_t-test-onesample   

----------------------------
Analyses of Variance (ANOVA)
----------------------------

The Analysis of variance (ANOVA) is a statistical method that examines how the
impact of one or more factors affects an outcome (dependent) variable. These
factors are the predictor variables and are categorical. Typically, such
factors reflect an experimental manipulation (e.g. with or without treatment),
but a factor can also represent groups for whose influence one would like to
control (e.g. gender: men or women). The analysis of variance is based on a
concept similar to that of the t-test, but it goes beyond that, in that factors
can have several levels (t-tests only allow two) and in that several factors
can be examined simultaneously. An introduction into the concept of an ANOVA is
presented in this `video <https://www.youtube.com/embed/GcbMG6sizXs?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__.

There are different types of analysis of variance, which differ in the number
of factors examined - one or more factors - or whether they compare between
people or within a person - repeated measurements:

.. toctree::
   :titlesonly:
   :name: sec-anovas
   
   jg_31_unianova
   jg_32_anova-factorial
   jg_33_anova-rm
   jg_34_anova-mixed

--------------------------
Correlation and regression
--------------------------

Correlation and regression analyses are statistical methods for assessing the
relationships between a dependent / outcome variable and one or more
independent / predictor variables. While the *correlation* analysis examines
the *relationship* between one predictor and one outcome variable, *regression*
analysis mainly focuses on *prediction* (how well can one or more variables
predict another (outcome) variable). Often, a distinction is made between
linear and non-linear (e.g., logistic regression). An introduction into the
concept of regression analyses is presented in this `video
<https://www.youtube.com/embed/gRhVjKNWiUs?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__.

.. toctree::
   :titlesonly:
   :name: sec-regression
 
   jg_42_regression-linear
   jg_43_regression-logistic
   
.. jg_41_correlation


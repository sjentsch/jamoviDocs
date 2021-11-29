.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__ and `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

======================
Analyses: Introduction
======================

The aim of the following section is to provide short, non-technical tutorials on how to conduct common statistical procedures in jamovi, and was originally created by Jonas Rafi under the name jamovi guide. However, this is only intended as a brief overview. For a more in-depth treatment of these analyses, we'd recommend you take a look at the many `community resources <https://www.jamovi.org/community.html>`__ available.

---------------------------
A Note On Measurement Types
---------------------------

The following documentation describes each of the analyses, and describes the variable measure types required. For example, it might explain that a particular analysis requires a continuous |continuous| dependent variable, and a nominal |nominal| grouping variable. However it's possible that the columns in your data set, for a number of different reasons, aren't set up with the correct measure types (as indicated in the column header). You can adjust the measure type of columns using the variable editor, however (for the most part) these measure types are really just a guide and don't need to be set correctly. If you assign a |continuous| continuous variable to an analysis expecting a |nominal| nominal one, the analysis will simply treat the variable as nominal.

All this to say, if the documentation says that a particular measure type is required, the data simply needs to be the correct 'shape', and you can save yourself the labour of setting the measure types correctly if you don't want to.

------------
Descriptives
------------

- :doc:`jg_11_descriptive-analyses`

-------
t-tests
-------

The t-test is used to test whether the mean value in a normally distributed data set deviates significantly from a null hypothesis (which assumes that there is no difference).

There are three types of t-tests:

- :doc:`jg_21_t-test-independent`
- :doc:`jg_22_t-test-paired`
- :doc:`jg_23_t-test-onesample`

.. admonition:: Community resources

   | A more comprehensive introduction into the concept is presented in this `video
     <https://www.youtube.com/embed/mb7KCLYEis8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__
     by `Barton Poulson <https://datalab.cc/jamovi>`__.

----------------------------
Analyses of Variance (ANOVA)
----------------------------

The Analysis of variance (ANOVA) is a statistical method that examines how the impact of one or more factors affects an outcome (dependent) variable. These factors are the predictor variables and are categorical. Typically, such factors reflect an experimental manipulation (e.g. with or without treatment), but a factor can also represent groups for whose influence one would like to control (e.g. gender: men or women). The analysis of variance is based on a concept similar to that of the t-test, but it goes beyond that, in that factors can have several levels (t-tests only allow two) and in that several factors can be examined simultaneously.

There are different types of analysis of variance, which differ in the number of factors examined - one or more factors - or whether they compare between people or within a person - repeated measurements:

- :doc:`jg_31_unianova`
- :doc:`jg_32_anova-factorial`
- :doc:`jg_33_anova-rm`
- :doc:`jg_34_anova-mixed`

.. admonition:: Community resources

   | An introduction into the concept of an ANOVA is presented in this `video
     <https://www.youtube.com/embed/GcbMG6sizXs?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__
     by `Barton Poulson <https://datalab.cc/jamovi>`__.

--------------------------
Correlation and regression
--------------------------

Correlation and regression analyses are statistical methods for assessing the relationships between a dependent / outcome variable and one or more independent / predictor variables. While the *correlation* analysis examines the *relationship* between one predictor and one outcome variable, *regression* analysis mainly focuses on *prediction* (how well can one or more variables predict another (outcome) variable). Often, a distinction is made between linear and non-linear (e.g., logistic regression).

- :doc:`jg_42_regression-linear`
- :doc:`jg_43_regression-logistic`

.. admonition:: Community resources

   | An introduction into the concept of regression analyses is presented in
     this `video
     <https://www.youtube.com/embed/gRhVjKNWiUs?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__
     by `Barton Poulson <https://datalab.cc/jamovi>`__.

.. ---------------------------------------------------------------------

.. |nominal|                        image:: ../_images/variable-nominal.*
   :width: 16px
.. |continuous|                     image:: ../_images/variable-continuous.*
   :width: 16px
.. |datalab|             image:: ../_images/icon-datalab.png
   :width: 100px
   :target: https://datalab.cc/tools/jamovi

.. jamovi documentation master file

.. Table of content for the sidebar
.. toctree::
   :titlesonly:
   :hidden:

   _pages/um_1_installation

.. toctree::
   :titlesonly:
   :caption: Introduction
   :hidden:

   _pages/um_2_first-steps
   _pages/um_3_analyses
   _pages/um_4_spreadsheet
   _pages/um_5_updating_data
   _pages/um_6_syntax_mode

.. toctree::
   :titlesonly:
   :caption: Analyses
   :hidden:

   _pages/jg_11_descriptive-analyses
   _pages/jg_16_Checking_normality
   _pages/jg_17_Checking_linearity
   _pages/jg_18_Filtering_data
   _pages/jg_21_t-test-independent
   _pages/jg_22_t-test-paired
   _pages/jg_23_t-test-onesample
   _pages/jg_31_unianova
   _pages/jg_32_anova-factorial
   _pages/jg_33_anova-rm
   _pages/jg_34_anova-mixed
   _pages/jg_42_regression-linear
   _pages/jg_43_regression-logistic

.. toctree::
   :maxdepth: 1
   :caption: Additional Modules
   :hidden:

   _pages/developer-hub.rst

.. toctree::
   :maxdepth: 1
   :caption: jamovi and other software
   :hidden:

   _pages/SPSS2jamovi
   _pages/jamovi2R
   _pages/jmv_overview


Welcome to the documentation for `jamovi <https://www.jamovi.org>`__, a free and open statistical software to bridge the gap between researcher and
statistician.

===============
Getting started
===============

The jamovi user-manual contains everything you need to know about getting up and running for jamovi.
   
If you got stuck or get questions regarding jamovi, these can be asked in the `jamovi forum <https://forum.jamovi.org>`__.

* :doc:`_pages/um_1_installation`
* :doc:`_pages/um_2_first-steps`
* :doc:`_pages/um_3_analyses`
* :doc:`_pages/um_4_spreadsheet`
* :doc:`_pages/um_5_updating_data`
* :doc:`_pages/um_6_syntax_mode`

.. ============================================================================================================================================================

========
Analyses
========

The aim of the following section is to provide short, non-technical tutorials on how to conduct common statistical procedures in jamovi. It was originally
created by Jonas Rafi under the name jamovi guide.

However, it is meant to be an introduction, not a resource providing an in-depth introduction into the background of those procedures. For such an endevaour,
there are plenty of other resources. Some of these resources are listed at the bottom of the pages introducing the individual analyses in the box “Community
resources”.

---------------------------------
Describing and cleaning your data
---------------------------------

A quite essential part of a statistical analysis actually happens before we conduct them. That part is concerned with first getting an overview over your data.
This information is gathered using descriptive-statistical analyses.

One way to use this information is for assessing whether the data meet the assumptions that are required to run most inference-statistical procedures. There
are two checks that are central for assessing whether those assumptions are met: The first evaluates whether the data are in accordance with a normal
distribution, the other assesses whether the independent and the dependent variables stand in a linear relation. If the assumptions are not met, this is often
due to outliers in your data. Based upon the information we gathered, it becomes possible to search for and to remove such outliers. Using 
`filters <_pages/jg_18_Filtering_data.html>`__ can help you with that task.

* :doc:`_pages/jg_11_descriptive-analyses`
* :doc:`_pages/jg_16_Checking_normality`
* :doc:`_pages/jg_17_Checking_linearity`
* :doc:`_pages/jg_18_Filtering_data`

-------
t-tests
-------

The t-test is used to test whether the mean value in a normally distributed data set deviates significantly from a null hypothesis (which assumes that there is
no difference).

.. admonition:: Community resources
   
   | A more comprehensive introduction into the concept is presented in this `video 
     <https://www.youtube.com/embed/mb7KCLYEis8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ by `Barton Poulson <https://datalab.cc/jamovi>`__.

There are three types of t-tests:

* :doc:`_pages/jg_21_t-test-independent`
* :doc:`_pages/jg_22_t-test-paired`
* :doc:`_pages/jg_23_t-test-onesample`


----------------------------
Analyses of Variance (ANOVA)
----------------------------

The Analysis of variance (ANOVA) is a statistical method that examines how the impact of one or more factors affects an outcome (dependent) variable. These
factors are the predictor variables and are categorical. Typically, such factors reflect an experimental manipulation (e.g. with or without treatment), but a
factor can also represent groups for whose influence one would like to control (e.g. gender: men or women). The analysis of variance is based on a concept
similar to that of the t-test, but it goes beyond that, in that factors can have several levels (t-tests only allow two) and in that several factors can be
examined simultaneously.

.. admonition:: Community resources
   
   | An introduction into the concept of an ANOVA is presented in this `video 
     <https://www.youtube.com/embed/GcbMG6sizXs?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ by `Barton Poulson <https://datalab.cc/jamovi>`__.

There are different types of analysis of variance, which differ in the number of factors examined - one or more factors - or whether they compare between
people or within a person - repeated measurements:

* :doc:`_pages/jg_31_unianova`
* :doc:`_pages/jg_32_anova-factorial`
* :doc:`_pages/jg_33_anova-rm`
* :doc:`_pages/jg_34_anova-mixed`


--------------------------
Correlation and regression
--------------------------

Correlation and regression analyses are statistical methods for assessing the relationships between a dependent / outcome variable and one or more independent
/ predictor variables. While the *correlation* analysis examines the *relationship* between one predictor and one outcome variable, *regression* analysis
mainly focuses on *prediction* (how well can one or more variables predict another (outcome) variable). Often, a distinction is made between linear and
non-linear (e.g., logistic regression).

.. admonition:: Community resources
   
   | An introduction into the concept of regression analyses is presented in this `video
     <https://www.youtube.com/embed/gRhVjKNWiUs?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ by `Barton Poulson <https://datalab.cc/jamovi>`__.

* :doc:`_pages/jg_42_regression-linear`
* :doc:`_pages/jg_43_regression-logistic`
   
.. ============================================================================================================================================================

--------------------------
Additional modules
--------------------------

TBA: The jamovi library

TBA: Sideloading a module  

* :doc:`_pages/developer-hub`

.. ============================================================================================================================================================   

--------------------------
jamovi and other software
--------------------------

* :doc:`_pages/SPSS2jamovi`
* :doc:`_pages/jamovi2R`
* :doc:`_pages/jmv_overview`

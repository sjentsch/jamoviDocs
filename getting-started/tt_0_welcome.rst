.. sectionauthor:: `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

================================
Tips and tricks for using jamovi
================================

------------------------------------------------------------------
Cleaning your data and checking assumptions for your main analyses
------------------------------------------------------------------

| A quite essential part of a statistical analysis actually happens before we
  conduct them. That part is concerned with cleaning you data in order to
  fulfil the assumptions required to run most inference-statistical procedures.
  At the core of "cleaning you data" is the search for and the removal of
  outliers. Using `filters <Filtering_data_with_jamovi>`__ can help you with
  that task.

.. toctree::
   :hidden:
  
   tt_1_Filtering_data_with_jamovi
  
| One of the aims when cleaning outliers is that they might lead to violations
  of assumptions for parametric statistical tests: normality (and possibly
  linearity; due to floor and ceiling effects). I will briefly introduce how we
  can conduct two preliminary checks to assess whether the assumptions for
  conducting our main analyses are met: The first is to check whether the data
  are in accordance with a `normal distribution <Checking_normality_with_jamovi>`__,
  the other one is to assess whether the independent and the dependent variables
  stand in a `linear relation <Checking_linearity_with_jamovi>`__.

.. toctree::
   :hidden:

   tt_21_Checking_normality_with_jamovi
   tt_22_Checking_linearity_with_jamovi

.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

===================
Logistic Regression
===================

| How to perform a logistic regression in jamovi:

#. | You need one continuous predictor variable and one categorical
     (nominal or ordinal) outcome variable. Make sure that the
     `measurement levels are set correctly
     <um_2_first-steps.html#data-variables>`_ so that the predictor variable(s)
     are marked as |continuous| and the outcome variable is marked as
     |nominal|.
     
   | A correct setup should look similar to this:
   
   |data_format_regression_logistic|
   
   | 

#. | Logistic regression can be found by selecting ``Analyses`` →
     ``Regression``. If the outcome variable is nominal (as in the above
     image), select ``2 Outcomes`` if it has 2 outcomes, or
     ``N outcomes`` if it has *more* than 2 outcomes. If the outcome
     variable is ordinal (e.g. low, medium, high), select
     ``Ordinal Outcomes``.
     
   |select_regression_logistic|
   
   | 

#. | Drag and drop your outcome variable to ``Dependent Variable`` and
     your predictor to ``Covariates``.

   |add_var_regression_logistic|

   | 

#. | The result is shown in the right panel:

   |output_regression_logistic|

   |
   
#. | A little more comprehensive introduction into this statistical method is
     provided by this `video 
     <https://www.youtube.com/embed/s7GL0z-3ymA?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__.

.. ---------------------------------------------------------------------

.. |nominal|                          image:: ../_images/variable-nominal.*
   :width: 16px
.. |continuous|                       image:: ../_images/variable-continuous.*
   :width: 16px
.. |data_format_regression_logistic|  image:: ../_images/jg_data_format_regression_logistic.jpg
   :width: 25%
.. |select_regression_logistic|       image:: ../_images/jg_select_regression_logistic.jpg
   :width: 40% 
.. |add_var_regression_logistic|      image:: ../_images/jg_add_var_regression_logistic.jpg
   :width: 70%
.. |output_regression_logistic|       image:: ../_images/jg_output_regression_logistic.jpg
   :width: 50%

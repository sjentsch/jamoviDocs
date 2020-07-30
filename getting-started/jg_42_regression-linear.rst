.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

=================
Linear Regression
=================

| How to perform a linear regression in jamovi:

#. | You need at least one predictor variable and one outcome variable.
     Both variable classes are typically continuous. Make sure that the
     `measurement levels are set correctly
     <um_2_first-steps.html#data-variables>`_ so that the variables
     included in your model are marked as |continuous|.

   | A correct setup should look similar to this:

   |data_format_regression_linear|
   
   |

#. | Select ``Analyses`` → ``Regression`` → ``Linear Regression``.

   |select_regression_linear|
   
   |

#. | Drag and drop your outcome variable to **Dependent Variable** and
     your predictor variable to **Covariates** if it is continuous or to
     **Factors** if it is categorical.
     
   |add_var_regression_linear|
   
   |

#. | The result is shown in the right panel:

   |output_regression_linear|

   |

#. | A little more comprehensive introduction into this statistical method is
     provided by this `video 
     <https://www.youtube.com/embed/_5AVGuEzCXc?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__.

.. ---------------------------------------------------------------------

.. |continuous|                     image:: ../_images/variable-continuous.svg
   :width: 16px
.. |data_format_regression_linear|  image:: ../_images/jg_data_format_regression_linear.jpg
   :width: 25%
.. |select_regression_linear|       image:: ../_images/jg_select_regression_linear.jpg
   :width: 40%
.. |add_var_regression_linear|      image:: ../_images/jg_add_var_regression_linear.jpg
   :width: 70%
.. |output_regression_linear|       image:: ../_images/jg_output_regression_linear.jpg
   :width: 50%

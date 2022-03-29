.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

=================
Linear Regression
=================

| How to perform a linear regression in jamovi:

#. | You need one |continuous| dependent variable, and at least one |continuous| predictor variable (aka a covariate).

   | A correct setup should look similar to this:

   |data_format_regression_linear|
   
   |

#. | Select ``Analyses`` → ``Regression`` → ``Linear Regression``.

   |select_regression_linear|
   
   |

#. | Drag and drop your dependent variable to ``Dependent Variable`` and your explanatory variable to ``Covariates`` if it is continuous or to ``Factors`` if
     it is categorical.
     
   |add_var_regression_linear|
   
   |

#. | The result is shown in the right panel:

   |output_regression_linear|

   |

<<<<<<< HEAD

.. tip::

   | Those who have previous experience with SPSS may want to have a look at the :doc:`side-by-side-comparison <../spss2jamovi/s2j_linReg>` of how a linear
     regression is conducted in SPSS and jamovi.


.. admonition:: Further help from the community resources

   | A more comprehensive introduction into this statistical method is provided by this `video 
     <https://www.youtube.com/embed/_5AVGuEzCXc?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ by `Barton Poulson <https://datalab.cc/jamovi>`__.
     
   | For those, aiming to stretch even further to an in-depth introduction, you can read the respective section in the “Learning statistics with jamovi” `web
     documentation <https://lsj.readthedocs.io/en/latest/lsj/Ch12_Regression_03.html>`__ or chapter 12.3 - 11 of the `e-book
     <https://www.learnstatswithjamovi.com/>`__ by `Danielle J. Navarro <https://djnavarro.net/>`__ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`__.

=======
.. admonition:: Further help from the community resources

   | A more comprehensive introduction into this statistical method is
     provided by this `video 
     <https://www.youtube.com/embed/_5AVGuEzCXc?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__
     by `Barton Poulson <https://datalab.cc/jamovi>`__.
     
   | For those, aiming to stretch even further to an in-depth introduction, you
     can read the respective section in the “Learning statistics with jamovi”
     `web documentation <https://lsj.readthedocs.io/en/latest/lsj/Ch12_Regression_03.html>`__
     or chapter 12.3 - 11 of the `e-book <https://www.learnstatswithjamovi.com/>`__
     by `Danielle J. Navarro <https://djnavarro.net/>`__ and `David R. Foxcroft
     <https://www.davidfoxcroft.com/>`__.

|
>>>>>>> master

.. ---------------------------------------------------------------------

.. |continuous|                     image:: ../_images/variable-continuous.*
   :width: 16px
.. |data_format_regression_linear|  image:: ../_images/jg_data_format_regression_linear.jpg
   :width: 25%
.. |select_regression_linear|       image:: ../_images/jg_select_regression_linear.jpg
   :width: 40%
.. |add_var_regression_linear|      image:: ../_images/jg_add_var_regression_linear.jpg
   :width: 70%
.. |output_regression_linear|       image:: ../_images/jg_output_regression_linear.jpg
   :width: 50%

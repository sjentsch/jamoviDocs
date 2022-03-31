.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

==================
t-test: One sample
==================

| How to perform a one-sample t-test in jamovi:

#. | You need one |continuous| continuous variable and a mean to test against (typically the mean being tested is zero).

   | A correct setup should look similar to this:  

   |data_format_ttest_onesample|

   | 

#. | Select ``Analyses`` → ``T-Tests`` → ``One Sample T-Test``.

   |select_ttest_onesample|

   |

#. | Drag and drop your dependent variable to ``Dependent Variables``.

   |add_var_ttest_onesample|  

   |

#. | Locate the section ``Hypothesis`` further down, this is where you enter the mean you want to test against.

   |options_ttest_onesample|

   | 

#. | The result is shown in the right panel.

   |output_ttest_onesample|

   |


.. admonition:: Further help from the community resources
   
   | This `video <https://www.youtube.com/embed/DrBT4ezYIL8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ by `Barton Poulson <https://datalab.cc/jamovi>`__
     provides a more comprehensive introduction into this test.
     
   | For those, aiming to stretch even further to an in-depth introduction, you can read the respective section in the “Learning statistics with jamovi” `web
     documentation <https://lsj.readthedocs.io/en/latest/lsj/Ch11_tTest_02.html>`__ or chapter 11.2 of the `e-book <https://www.learnstatswithjamovi.com/>`__
     by `Danielle J. Navarro <https://djnavarro.net/>`__ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`__.

      
.. ---------------------------------------------------------------------

.. |continuous|                        image:: ../_images/variable-continuous.*
   :width: 16px
.. |data_format_ttest_onesample|       image:: ../_images/jg_data_format_ttest_onesample.jpg
   :width: 30% 
.. |select_ttest_onesample|            image:: ../_images/jg_select_ttest_onesample.jpg
   :width: 40%
.. |add_var_ttest_onesample|           image:: ../_images/jg_add_var_ttest_onesample.jpg
   :width: 70%
.. |options_ttest_onesample|           image:: ../_images/jg_options_ttest_onesample.jpg
   :width: 70%
.. |output_ttest_onesample|            image:: ../_images/jg_output_ttest_onesample.jpg
   :width: 70%

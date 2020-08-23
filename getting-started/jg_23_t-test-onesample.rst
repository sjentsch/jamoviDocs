.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

==================
t-test: One sample
==================

| How to perform a one-sample t-test in jamovi:

#. | You need one continuous variable and a mean to test against. Make
     sure that the `measurement levels are set correctly
     <um_2_first-steps.html#data-variables>`_ so that the continuous
     variable is marked as |continuous|.

   | A correct setup should look similar to this:  

   |data_format_ttest_onesample|

   | 

#. | Select ``Analyses`` → ``T-Tests`` → ``One Sample T-Test``.

   |select_ttest_onesample|

   |

#. | Drag and drop your dependent variable to ``Dependent Variables``.

   |add_var_ttest_onesample|  

   |

#. | Locate the section ``Hypothesis`` further down, this is where you
     enter the mean you want to test against.

   |add_var_ttest_onesample_2|

   | 

#. | The result is shown in the right panel.

   |
   
#. | This `video <https://www.youtube.com/embed/DrBT4ezYIL8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__
     provides a little more comprehensive introduction into this test.
     
   | For those, aiming to stretch even further to an in-depth introduction, you
     can read the respective section in the “Learning statistics with jamovi”
     `part of this documentation <../lsj/Ch11_tTest_02.html>`__ or chapter
     \11.2 of the `e-book <https://www.learnstatswithjamovi.com/>`__.  
   
   | 
      
.. ---------------------------------------------------------------------

.. |continuous|                   image:: ../_images/variable-continuous.*
   :width: 16px
.. |data_format_ttest_onesample|  image:: ../_images/jg_data_format_ttest_onesample.jpg
   :width: 30% 
.. |select_ttest_onesample|       image:: ../_images/jg_select_ttest_onesample.jpg
   :width: 40%
.. |add_var_ttest_onesample|      image:: ../_images/jg_add_var_ttest_onesample.jpg
   :width: 70%
.. |add_var_ttest_onesample_2|    image:: ../_images/jg_add_var_ttest_onesample_2.jpg
   :width: 70%

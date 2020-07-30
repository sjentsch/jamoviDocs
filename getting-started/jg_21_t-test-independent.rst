.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

===========================
t-test: Independent samples
===========================

| How to perform an independent samples t-test in jamovi:

#. | You need one grouping variable with two levels (e.g. treatment / 
     control) and one continuous outcome variable. Make sure that the
     `measurement levels are set correctly 
     <um_2_first-steps.html#data-variables>`_ so that the grouping
     variable is marked as |nominal| and the continuous variable is
     marked as |continuous|.
     
   | A correct setup should look similar to this:

   |data_format_ttest_independent|

   | 

#. | Select ``Analyses`` → ``T-Tests`` → ``Independent Samples T-Test``.

   |select_ttest_independent|

   | 

#. | Drag and drop your outcome variable to **Dependent Variables** and
     your grouping variable to **Grouping Variable**.  

   |add_var_ttest_independent|

   | 

#. | The result is shown in the right panel.

   |
   
#. | This `video <https://www.youtube.com/embed/SM-DN9dpPd4?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__
     provides a little more comprehensive introduction into this test.

   |

.. ---------------------------------------------------------------------

.. |nominal|                        image:: ../_images/variable-nominal.svg
   :width: 16px
.. |continuous|                     image:: ../_images/variable-continuous.svg
   :width: 16px
.. |data_format_ttest_independent|  image:: ../_images/jg_data_format_ttest_independent.jpg
   :width: 40%
.. |select_ttest_independent|       image:: ../_images/jg_select_ttest_independent.jpg
   :width: 40%
.. |add_var_ttest_independent|      image:: ../_images/jg_add_var_ttest_independent.jpg
   :width: 70%
..    

.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

================
ANOVA: Factorial
================

| How to perform a factorial ANOVA in jamovi:

#. | You need two grouping variables and one continuous outcome
     variable. Make sure that the `measurement levels are set correctly
     <um_2_first-steps.html#data-variables>`_ so that the grouping
     variable(s) are marked as |nominal| and the continuous variable
     are marked as |continuous|.
     
   | A correct setup should look similar to this:
   
   |data_format_anova_factorial|
   
   | 

#. | Select ``Analyses`` -> ``ANOVA`` -> ``ANOVA``.

   |select_anova_factorial|
   
   | 

#. | Drag and drop your outcome variable to **Dependent Variable** and
     your grouping variables to **Fixed Factors**.
   
   |add_var_anova_factorial|
   
   | 

#. | The result is shown in the right panel:

   |output_anova_factorial|
   
   |
   
   
#. | A little more comprehensive introduction into this statistical method is
     provided by this `video 
     <https://www.youtube.com/embed/TJoJTVgDyqY?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__.

.. ---------------------------------------------------------------------

.. |nominal|                      image:: ../_images/variable-nominal.svg
   :width: 16px
.. |continuous|                   image:: ../_images/variable-continuous.svg
   :width: 16px
.. |data_format_anova_factorial|  image:: ../_images/jg_data_format_anova_factorial.jpg
   :width: 50%
.. |select_anova_factorial|       image:: ../_images/jg_select_anova_factorial.jpg
   :width: 40%
.. |add_var_anova_factorial|      image:: ../_images/jg_add_var_anova_factorial.jpg
   :width: 70%
.. |output_anova_factorial|       image:: ../_images/jg_output_anova_factorial.jpg
   :width: 70%

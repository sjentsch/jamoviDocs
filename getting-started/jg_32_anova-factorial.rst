.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

================
ANOVA: Factorial
================

| How to perform a factorial ANOVA in jamovi:

#. | You need two grouping variables and one continuous outcome
     variable. Make sure that the `measurement levels are set correctly
     <um_2_first-steps.html#data-variables>`_ so that the grouping
     variables are marked as |nominal| and the continuous variable
     are marked as |continuous|.
     
   | A correct setup should look similar to this:
   
   |data_format_anova_factorial|
   
   | 

#. | Select ``Analyses`` → ``ANOVA`` → ``ANOVA``.

   |select_anova_factorial|
   
   | 

#. | Drag and drop your outcome variable to ``Dependent Variable`` and
     your grouping variables to ``Fixed Factors``.
   
   |add_var_anova_factorial|
   
   | 

#. | The result is shown in the right panel:

   |output_anova_factorial|
   
   |
   
   
#. | A little more comprehensive introduction into this statistical method is
     provided by this `video 
     <https://www.youtube.com/embed/TJoJTVgDyqY?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__.

   | For those, aiming to stretch even further to an in-depth introduction, you
     can read the respective section in the “Learning statistics with jamovi”
     `part of this documentation <../lsj/Ch14_ANOVA2_01.html>`__ or chapter
     \14.1 - 4 of the `e-book <https://www.learnstatswithjamovi.com/>`__.  

   |
   
.. ---------------------------------------------------------------------

.. |nominal|                      image:: ../_images/variable-nominal.*
   :width: 16px
.. |continuous|                   image:: ../_images/variable-continuous.*
   :width: 16px
.. |data_format_anova_factorial|  image:: ../_images/jg_data_format_anova_factorial.jpg
   :width: 50%
.. |select_anova_factorial|       image:: ../_images/jg_select_anova_factorial.jpg
   :width: 40%
.. |add_var_anova_factorial|      image:: ../_images/jg_add_var_anova_factorial.jpg
   :width: 70%
.. |output_anova_factorial|       image:: ../_images/jg_output_anova_factorial.jpg
   :width: 70%

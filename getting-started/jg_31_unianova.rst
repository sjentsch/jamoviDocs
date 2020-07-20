.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

=============
ANOVA: Oneway
=============

| How to perform a Oneway ANOVA in jamovi:

1. | You need one grouping variable and one continuous outcome variable.
     Make sure that the `measurement levels are set correctly
     <um_2_first-steps.html#data-variables>`_ so that the grouping
     variable is marked as |nominal| and the continuous variable is
     marked as |continuous|.
     
   | A correct setup should look similar to this:  

   |data_format_unianova|
   
   |

2. | Select ``Analyses`` -> ``ANOVA`` -> ``One-way ANOVA``.

   |select_unianova|

   | 

3. | Drag and drop your outcome variable to **Dependent Variable** and
     your grouping variable to **Fixed Factors**.

   |add_var_unianova_1|

   | 

4. | Select wether your variances are equal or unequal. To test for
     equality of variancess using Levene’s test, tick the box Equality
     of variances.

   |add_var_unianova_2|

   | 

5. | The results is shown in the right pane:

   |output_unianova|

   | 

.. ---------------------------------------------------------------------

.. |nominal|               image:: ../_images/variable-nominal.svg
   :width: 16px
.. |continuous|            image:: ../_images/variable-continuous.svg
   :width: 16px
.. |data_format_unianova|  image:: ../_images/jg_data_format_unianova.jpg
   :width: 40%
.. |select_unianova|       image:: ../_images/jg_select_unianova.jpg
   :width: 45%
.. |add_var_unianova_1|    image:: ../_images/jg_add_var_unianova_1.jpg
   :width: 70%
.. |add_var_unianova_2|    image:: ../_images/jg_add_var_unianova_2.jpg
   :width: 70%
.. |output_unianova|       image:: ../_images/jg_output_unianova.jpg
   :width: 70%

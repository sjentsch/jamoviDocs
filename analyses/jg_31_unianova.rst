.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

==============
ANOVA: One-Way
==============

| How to perform a One-way ANOVA in jamovi:

#. | You need one |continuous| continuous dependent variable, and one |nominal| grouping variable with two or more levels.
     
   | A correct setup should look similar to this:  

   |data_format_unianova|
   
   |

#. | Select ``Analyses`` → ``ANOVA`` → ``One-way ANOVA``.

   |select_unianova|

   | 

#. | Drag and drop your outcome variable to ``Dependent Variable`` and your grouping variable to ``Fixed Factors``.

   |add_var_unianova|

   | 

#. | Select whether your variances are equal or unequal. To test for equality of variancess using Levene’s test, tick the box ``Equality of variances``.

   |options_unianova|

   | 

#. | The results are shown in the right panel:

   |output_unianova|

   |


.. admonition:: Further help from the community resources
     
   | Those looking for an in-depth introduction: You may read the respective chapter in the “Learning statistics with jamovi” `web documentation
     <https://lsj.readthedocs.io/en/latest/lsj/Ch13_ANOVA_01.html>`__ or chapter 13.1 - 6 of the `e-book <https://www.learnstatswithjamovi.com/>`__ by
     `Danielle J. Navarro <https://djnavarro.net/>`__ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`__.


.. ---------------------------------------------------------------------

.. |nominal|               image:: ../_images/variable-nominal.*
   :width: 16px
.. |continuous|            image:: ../_images/variable-continuous.*
   :width: 16px
.. |data_format_unianova|  image:: ../_images/jg_data_format_unianova.jpg
   :width: 40%
.. |select_unianova|       image:: ../_images/jg_select_unianova.jpg
   :width: 45%
.. |add_var_unianova|      image:: ../_images/jg_add_var_unianova.jpg
   :width: 70%
.. |options_unianova|      image:: ../_images/jg_options_unianova.jpg
   :width: 70%
.. |output_unianova|       image:: ../_images/jg_output_unianova.jpg
   :width: 70%

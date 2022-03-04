.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

========================
ANOVA: Repeated Measures
========================

| How to perform a repeated measures ANOVA in jamovi:

#. | You need one |continuous| continuous dependent variable for each measurement occasion.
     
   | A correct setup should look similar to this:

   |data_format_anova_repeated|

   | 

#. | Select ``Analyses`` → ``ANOVA`` → ``Repeated Measures ANOVA``.

   |select_anova_repeated|

   | 

#. | In the box ``Repeated Measures Factors``: write the name of your outcome variable (e.g., ``My_scale``) and name the levels for each measurement occasion
     (e.g., ``Pre``, ``Post`` and ``12 month follow-up``). The images below shows the box with default values (left) and when the values has been set (right).

   |add_var_anova_repeated_naming_1|  ``→`` |add_var_anova_repeated_naming_2|
   
   |

#. | Drag and drop your outcome variables to their respective cells in ``Repeated Measures Cells``.

   |add_var_anova_repeated|

   | 
   
#. | To test the equality of the variance with the Levene test, open the ``Assumption Checks`` drop-down menu and set the ``Homogeneity test`` tick box. It is
     also a good idea to check that the variances at the different steps of the repetition factor are the same (Sphericity). To do so, open the ``Assumption
     Checks`` drop-down menu and set the ``Sphericity tests`` tick box.

   | 

#. | The results are shown in the right panel:

   |output_anova_repeated|
   
   |


.. admonition:: Further help from the community resources
   
   | A more comprehensive introduction into this statistical method is provided by this `video 
     <https://www.youtube.com/embed/m5JNwPgiMso?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ by `Barton Poulson <https://datalab.cc/jamovi>`__.

   | For those, aiming to stretch even further to an in-depth introduction, you can read the respective section in the “Learning statistics with jamovi” `web
     documentation <https://lsj.readthedocs.io/en/latest/lsj/Ch13_ANOVA_07.html>`__ or chapter 13.7 of the `e-book <https://www.learnstatswithjamovi.com/>`__
     by Danielle J. Navarro and David R. Foxcroft.

     
.. ---------------------------------------------------------------------

.. |continuous|                       image:: ../_images/variable-continuous.*
   :width: 16px
.. |data_format_anova_repeated|       image:: ../_images/jg_data_format_anova_repeated.jpg
   :width: 40%
.. |select_anova_repeated|            image:: ../_images/jg_select_anova_repeated.jpg
   :width: 40%
.. |add_var_anova_repeated_naming_1|  image:: ../_images/jg_add_var_anova_repeated_naming_1.jpg
   :width: 35%
.. |add_var_anova_repeated_naming_2|  image:: ../_images/jg_add_var_anova_repeated_naming_2.jpg
   :width: 35%
.. |add_var_anova_repeated|           image:: ../_images/jg_add_var_anova_repeated.jpg
   :width: 70%
.. |output_anova_repeated|            image:: ../_images/jg_output_anova_repeated.jpg
   :width: 70%

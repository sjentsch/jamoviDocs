.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

============
ANOVA: Mixed
============

| How to perform a mixed ANOVA in jamovi:

#. | You need one |continuous| continuous variable for each within-subject measurement (e.g. pre / post) and at least one |nominal| grouping variable
     (between-subjects-factor) with at least two levels (e.g., treatment / control, gender).

   | A correct setup should look similar to this:
   
   |data_format_anova_mixed|

   |

#. | Select ``Analyses`` → ``ANOVA`` → ``Repeated Measures ANOVA``.

   |select_anova_repeated|

   |

#. | In the box ``Repeated Measures Factors``: write the name of your outcome variable (e.g., ``My_scale``) and name the levels for each measurement occasion
     (e.g., ``Pre``, ``Post`` and ``12 month follow-up``). The images below illustrates this.
   
   |add_var_anova_repeated_naming_1|  ``→`` |add_var_anova_repeated_naming_2|

   |

#. | Drag and drop your outcome variables to their respective cells in ``Repeated Measures Cells``.
   
   |add_var_anova_repeated|
   
   |

#. | Move your grouping variable(s) to ``Between Subject Factors``.

   |add_var_anova_mixed|
   
   |

#. | The result is shown in the right panel:

   |output_anova_mixed|
   
   |


.. admonition:: Further help from the community resources

   | A little more comprehensive introduction into this statistical method is provided by this `video 
     <https://www.youtube.com/embed/m5JNwPgiMso?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__.


.. ---------------------------------------------------------------------

.. |nominal|                          image:: ../_images/variable-nominal.*
   :width: 16px
.. |continuous|                       image:: ../_images/variable-continuous.*
   :width: 16px
.. |data_format_anova_mixed|          image:: ../_images/jg_data_format_anova_mixed.jpg
   :width: 50%
.. |select_anova_repeated|            image:: ../_images/jg_select_anova_repeated.jpg
   :width: 40%
.. |add_var_anova_repeated_naming_1|  image:: ../_images/jg_add_var_anova_repeated_naming_1.jpg
   :width: 30%
.. |add_var_anova_repeated_naming_2|  image:: ../_images/jg_add_var_anova_repeated_naming_2.jpg
   :width: 30%
.. |add_var_anova_repeated|           image:: ../_images/jg_add_var_anova_repeated.jpg
   :width: 70%
.. |add_var_anova_mixed|              image:: ../_images/jg_add_var_anova_mixed.jpg
   :width: 35%
.. |output_anova_mixed|               image:: ../_images/jg_output_anova_mixed.jpg
   :width: 70%

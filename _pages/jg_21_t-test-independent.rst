.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

===========================
t-test: Independent samples
===========================

| How to perform an independent samples t-test in jamovi:

#. | You need at least one |continuous| continuous dependent variable, and a
     |nominal| grouping variable with two levels (e.g. treatment / control).
     
   | A correct setup should look similar to this:

   |data_format_ttest_independent|

   | 

#. | Select ``Analyses`` → ``T-Tests`` → ``Independent Samples T-Test``.

   |select_ttest_independent|

   | 

#. | Drag and drop your outcome variable to ``Dependent Variables`` and
     your grouping variable to ``Grouping Variable``.  

   |add_var_ttest_independent|

   | 

#. | The result is shown in the right panel.

   |

.. admonition:: Community resources
   
   | This `video <https://www.youtube.com/embed/SM-DN9dpPd4?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__
     by `Barton Poulson <https://datalab.cc/jamovi>`__ provides a more
     comprehensive introduction into this test.
     
   | For those, aiming to stretch even further to an in-depth introduction, you
     can read the respective section in the “Learning statistics with jamovi”
     `web documentation <https://lsj.readthedocs.io/en/latest/lsj/Ch11_tTest_03.html>`__
     or chapter 11.3 / 11.4 of the `e-book <https://www.learnstatswithjamovi.com/>`__
     by `Danielle J. Navarro <https://djnavarro.net/>`__ and `David R. Foxcroft
     <https://www.davidfoxcroft.com/>`__.
     
|

.. ---------------------------------------------------------------------

.. |nominal|                        image:: ../_images/variable-nominal.*
   :width: 16px
.. |continuous|                     image:: ../_images/variable-continuous.*
   :width: 16px
.. |data_format_ttest_independent|  image:: ../_images/jg_data_format_ttest_independent.jpg
   :width: 40%
.. |select_ttest_independent|       image:: ../_images/jg_select_ttest_independent.jpg
   :width: 40%
.. |add_var_ttest_independent|      image:: ../_images/jg_add_var_ttest_independent.jpg
   :width: 70%
..    

.. sectionauthor:: `Jonas Rafi <https://www.su.se/english/profiles/jora9288-1.283149>`__

======================
t-test: Paired samples
======================

| How to perform a paired samples t-test in jamovi:

#. | You need two |continuous| continuous variables, with each row representing a subject. i.e. the pair of values taken from each row represent paired
     measurements.

   | A correct setup should look similar to this:

   |data_format_ttest_paired|

   |

#. | Select ``Analyses`` → ``T-Tests`` → ``Paired Samples T-Test``.

   |select_ttest_paired| 

   |

#. | Drag and drop your two variables to ``Paired Variables`` (you can drag these one at a time, or select both variables in a pair by holding down the
     Ctrl-key while clicking on each, before dragging them across).

   |add_var_ttest_paired| 

   | 

#. | The result is shown in the right panel.

   |output_ttest_paired|

   |

.. admonition:: Further help from the community resources

   | This `video <https://www.youtube.com/embed/lSjfYYiJG6E?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ by `Barton Poulson <https://datalab.cc/jamovi>`__
     provides a more comprehensive introduction into this test.

   | For those, aiming to stretch even further to an in-depth introduction, you can read the respective section in the “Learning statistics with jamovi” `web
     documentation <https://lsj.readthedocs.io/en/latest/lsj/Ch11_tTest_05.html>`__ or chapter 11.5 of the `e-book <https://www.learnstatswithjamovi.com/>`__
     by `Danielle J. Navarro <https://djnavarro.net/>`__ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`__.

|
 
.. ---------------------------------------------------------------------

.. |continuous|                image:: ../_images/variable-continuous.*
   :width: 16px
.. |data_format_ttest_paired|  image:: ../_images/jg_data_format_ttest_paired.jpg
   :width: 40%
.. |select_ttest_paired|       image:: ../_images/jg_select_ttest_paired.jpg
   :width: 40%
.. |add_var_ttest_paired|      image:: ../_images/jg_add_var_ttest_paired.jpg 
   :width: 70%
.. |output_ttest_paired|       image:: ../_images/jg_output_ttest_paired.jpg 
   :width: 70%

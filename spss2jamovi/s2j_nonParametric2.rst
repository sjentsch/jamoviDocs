.. sectionauthor:: Rebecca Vederhus, `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

============================================
From SPSS to jamovi: Non-parametric analyses
============================================

    This comparison shows how a Wilcoxon signed-rank test is conducted in SPSS and jamovi. The SPSS test follows the description in chapter 7.5.2 in
    `Field (2017) <https://edge.sagepub.com/field5e>`__, especially figure 7.9 and output 7.3 - 7.4. It uses the data set **Drug.sav** which can be downloaded
    from the `web page accompanying the book <https://edge.sagepub.com/field5e/student-resources/datasets>`__.

+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| **SPSS**                                                                      | **jamovi**                                                                    |
+===============================================================================+===============================================================================+
| In SPSS, first split the file using ``Data`` → ``Split File``.                | In jamovi, the file can be split using: ``Variables`` → ``Filters``. In the   |
+-------------------------------------------------------------------------------+ window that appears, write ``= Drug == "Ecstasy"`` and then save the output.  |
| |SPSS_Menu_nonParametric2_1|                                                  | Open the original file again and repeat these steps but write the following   |
+-------------------------------------------------------------------------------+ command instead: ``= Drug == "Alcohol"``. Now you will have two separate      |
| In the ``Split File`` window, click ``Organize output by groups``. Then, move | files, one for each drug.                                                     | 
| the ``Drug`` variable to the box called ``Groups Based on``. Lastly, click    +-------------------------------------------------------------------------------+       
| ``Sort the file by grouping variables``.                                      | |jamovi_Menu_nonParametric2_1|                                                |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Input_nonParametric2_1|                                                 | |jamovi_Menu_nonParametric2_2|                                                |
|                                                                               +-------------------------------------------------------------------------------+
|                                                                               | |jamovi_Menu_nonParametric2_3|                                                |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| Then, create a Mann-Whitney test using: ``Analyze`` → ``Nonparametric Tests`` | Within each file, use the following steps to create a Wilcoxon signed-rank    |
| → ``Related Samples``.                                                        | test: ``Analyses`` → ``T-tests`` → ``Paired Samples T-Test``.                 |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Menu_nonParametric2_2|                                                  | |jamovi_Menu_nonParametric2_4|                                                |
|                                                                               +-------------------------------------------------------------------------------+
|                                                                               | |jamovi_Menu_nonParametric2_5|                                                |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| In the ``Nonparametric Tests`` window, open ``Fields`` and click ``Use custom | In jamovi, mark ``Sunday_BDI`` and ``Wednesday_BDI`` and move them to the     |
| field assignments``. Move the ``Sunday`` and ``Wednesday`` variables to the   | ``Paired Variables`` box. Then, tick the box for ``Wilcoxon rank``. Repeat    |
| ``Test Fields`` box.                                                          | this procedure for both output files.                                         |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Input_nonParametric2_2|                                                 | |jamovi_Input_nonParametric2|                                                 |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| Lastly, open ``Settings`` and click ``Customize tests``. Tick the box for     |                                                                               |
| ``Wilcoxon matched-pair signed-rank`` as shown in the picture below.          |                                                                               |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Input_nonParametric2_3|                                                 |                                                                               |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| Comparisons of the output show that the results in SPSS and jamovi are slightly different.                                                                    |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Output_nonParametric2_1|                                                | |jamovi_Output_nonParametric2_1|                                              |
|                                                                               |                                                                               |
| |SPSS_Output_nonParametric2_2|                                                | |jamovi_Output_nonParametric2_2|                                              |
|                                                                               |                                                                               |
| |SPSS_Output_nonParametric2_3|                                                |                                                                               |
|                                                                               |                                                                               |
| |SPSS_Output_nonParametric2_4|                                                |                                                                               |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| In SPSS, the first output table is the model summary, which only shows the    | In jamovi, there are two output files, with a table each. In contrast to      |
| *p*-value for the test. If you double-click this table, you get the details   | SPSS, the ``Paired Samples T-Test`` table only displays the test statistic    |
| of the analysis. There are two model summaries, on for each drug condition.   | and its significance value.                                                   |
| The Wilcoxon Signed Rank test show the following values: ``Total N``, ``Test  |                                                                               |
| Statistic``, ``Standard Error``, ``Standardized Test Statistic`` and          |                                                                               |
| ``Asymptotic Sig. (2-sided test)``.                                           |                                                                               |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| When comparing the output, none of the numerical values are the same. The reason for the difference in p-values is that jamovi applies `continuity correction |
| <https://www.oxfordreference.com/view/10.1093/oi/authority.20110803100131510>`__ (where a discrete distribution – ranks – is approximated via a continuous    |
| one – the standard normal distribution) whereas SPSS doesn't.                                                                                                 |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| If you wish to replicate those analyses using syntax, you can use the commands below (in jamovi, just copy to code below to :doc:`Rj <../jamovi2r/j2R_Rj>`).  |
<<<<<<< HEAD
| Alternatively, you can download the SPSS output files and the jamovi files with the analyses from below the syntax.                                           |
=======
>>>>>>> master
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| .. code-block:: none                                                          | .. code-block:: none                                                          |
|                                                                               |                                                                               |   
|    NPTESTS                                                                    |    jmv::ttestPS(                                                              |
|       /RELATED TEST(Sunday_BDI Wednesday_BDI) WILCOXON                        |        data = data,                                                           |
|       /MISSING SCOPE=ANALYSIS USERMISSING=EXCLUDE                             |        pairs = list(                                                          |
|       /CRITERIA ALPHA=0.05 CILEVEL=95.                                        |            list(i1 = "Sunday_BDI", i2 = "Wednesday_BDI")),                    |
|                                                                               |        students = FALSE,                                                      |
|                                                                               |        wilcoxon = TRUE)                                                       |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
<<<<<<< HEAD
| `SPSS output file containing the analyses`_                                   | `jamovi file with the analyses for Alcohol`_                                  |
|                                                                               | `jamovi file with the analyses for Ecstasy`_                                  | 
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
=======
>>>>>>> master


| **References**
| Field, A. (2017). *Discovering statistics using IBM SPSS statistics* (5th ed.). SAGE Publications. https://edge.sagepub.com/field5e


.. ---------------------------------------------------------------------

.. |SPSS_Menu_nonParametric2_1|        image:: ../_images/s2j_SPSS_Menu_nonParametric2_1.png
.. |SPSS_Menu_nonParametric2_2|        image:: ../_images/s2j_SPSS_Menu_nonParametric2_2.png
.. |jamovi_Menu_nonParametric2_1|      image:: ../_images/s2j_jamovi_Menu_ nonParametric2_1.png
.. |jamovi_Menu_nonParametric2_2|      image:: ../_images/s2j_jamovi_Menu_ nonParametric2_2.png
.. |jamovi_Menu_nonParametric2_3|      image:: ../_images/s2j_jamovi_Menu_ nonParametric2_3.png
.. |jamovi_Menu_nonParametric2_4|      image:: ../_images/s2j_jamovi_Menu_ nonParametric2_4.png
.. |jamovi_Menu_nonParametric2_5|      image:: ../_images/s2j_jamovi_Menu_ nonParametric2_5.png
.. |SPSS_Input_nonParametric2_1|       image:: ../_images/s2j_SPSS_Input_ nonParametric2_1.png
.. |SPSS_Input_nonParametric2_2|       image:: ../_images/s2j_SPSS_Input_ nonParametric2_2.png
.. |SPSS_Input_nonParametric2_3|       image:: ../_images/s2j_SPSS_Input_ nonParametric2_3.png
.. |jamovi_Input_nonParametric2|       image:: ../_images/s2j_jamovi_Input_ nonParametric2.png
.. |SPSS_Output_nonParametric2_1|      image:: ../_images/s2j_SPSS_Output_ nonParametric2_1.png
.. |SPSS_Output_nonParametric2_2|      image:: ../_images/s2j_SPSS_Output_ nonParametric2_2.png
.. |SPSS_Output_nonParametric2_3|      image:: ../_images/s2j_SPSS_Output_ nonParametric2_3.png
.. |SPSS_Output_nonParametric2_4|      image:: ../_images/s2j_SPSS_Output_ nonParametric2_4.png
.. |jamovi_Output_nonParametric2_1|    image:: ../_images/s2j_jamovi_Output_ nonParametric2_1.png
.. |jamovi_Output_nonParametric2_2|    image:: ../_images/s2j_jamovi_Output_ nonParametric2_2.png
<<<<<<< HEAD

.. _SPSS output file containing the analyses:  ../_static/output/s2j_Output_SPSS_nonParametric2.spv
.. _jamovi file with the analyses for Alcohol: ../_static/output/s2j_Output_jamovi_nonParametric2_1.omv
.. _jamovi file with the analyses for Ecstasy: ../_static/output/s2j_Output_jamovi_nonParametric2_2.omv
=======
>>>>>>> master

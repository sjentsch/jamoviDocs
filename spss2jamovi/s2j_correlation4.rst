.. sectionauthor:: Rebecca Vederhus, `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

================================
From SPSS to jamovi: Correlation
================================

    This comparison shows how a point-biserial correlation is conducted in SPSS and jamovi. The SPSS test follows the description in chapter 8.4.5 in `Field
    \(2017) <https://edge.sagepub.com/field5e>`__, especially output 8.4. It uses the data set **Roaming cats.sav** which can be downloaded from the `web page
    accompanying the book <https://edge.sagepub.com/field5e/student-resources/datasets>`__.

+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| **SPSS**                                                                      | **jamovi**                                                                    |
+===============================================================================+===============================================================================+
| In SPSS you can run a correlation using: ``Analyze`` → ``Correlate`` →        | In jamovi you do this using: ``Analyses`` → ``Regression`` → ``Correlation    |
| ``Bivariate``.                                                                | Matrix``.                                                                     |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Menu_corr4|                                                             | |jamovi_Menu_corr4|                                                           |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| In SPSS, move the variables ``Time `` and ``Sex`` to the variable box         | In jamovi, move the variables ``Time`` and ``Sex`` into the box on the right. |
| ``Variables``. Then, tick ``Pearson`` under ``Correlation Coefficients``.     | Tick ``Pearson`` under ``Correlation Coefficients`` and ``Report              |
|                                                                               | significance``, ``Flag significant correlations`` and ``N`` under             |
|                                                                               | ``Additional Options``.                                                       |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Input_corr4|                                                            | |jamovi_Input_corr4|                                                          |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| The results are the same in SPSS and in jamovi.                                                                                                               |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Output_corr4|                                                           | |jamovi_Output_corr4|                                                         |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| In SPSS, you can tell if a correlation is significant by noting the amount of | In jamovi, significant correlations are flagged using one (p < .05), two      |
| asterisks after the correlation coefficient. The correlation matrix shows the | (p < .01) or three (p < .001) asterisks. This differs from SPSS, where all    |
| correlation coefficient, the p-value, and the sample size (N).                | correlation above p < .01 level is simply marked using two instead of three   |
|                                                                               | asterisks.                                                                    |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| The correlation coefficient is found both underneath and over the diagonal in SPSS, while in jamovi the coefficient is only shown underneath. The numerical   |
| values for the statistics are identical: *r* = 0.38, *p* < .01.                                                                                               |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| If you wish to replicate those analyses using syntax, you can use the commands below (in jamovi, just copy to code below to :ref:`Rj <rj_editor>`).           |
| Alternatively, you can download the SPSS output files and the jamovi files with the analyses from below the syntax.                                           |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| .. code-block:: none                                                          | .. code-block:: none                                                          |
|                                                                               |                                                                               |   
|    CORRELATIONS                                                               |    jmv::corrMatrix(                                                           |
|      /VARIABLES=Time Sex                                                      |        data = data,                                                           |
|      /PRINT=TWOTAIL NOSIG FULL                                                |        vars = vars(Time, Sex),                                                |
|      /MISSING=PAIRWISE.                                                       |        flag = TRUE,                                                           |
|                                                                               |        n = TRUE)                                                              |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| `SPSS output file containing the analyses                                     | `jamovi file containing the analyses                                          |
| <../_static/output/s2j_Output_SPSS_corr4.spv>`_                               | <../_static/output/s2j_Output_jamovi_corr4.omv>`_                             |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+


| **References**
| Field, A. (2017). *Discovering statistics using IBM SPSS statistics* (5th ed.). SAGE Publications. https://edge.sagepub.com/field5e


.. ---------------------------------------------------------------------

.. |SPSS_Menu_corr4|                   image:: ../_images/s2j_SPSS_Menu_corr4.png
.. |jamovi_Menu_corr4|                 image:: ../_images/s2j_jamovi_Menu_corr4.png
.. |SPSS_Input_corr4|                  image:: ../_images/s2j_SPSS_Input_corr4.png
.. |jamovi_Input_corr4|                image:: ../_images/s2j_jamovi_Input_corr4.png
.. |SPSS_Output_corr4|                 image:: ../_images/s2j_SPSS_Output_corr4.png
.. |jamovi_Output_corr4|               image:: ../_images/s2j_jamovi_Output_corr4.png

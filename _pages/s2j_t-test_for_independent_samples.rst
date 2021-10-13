.. sectionauthor:: `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

===================================================
From SPSS to jamovi: t-test for independent samples 
===================================================

This comparison shows how a t-test for independent samples is performed in SPSS and jamovi. How the
test is conducted in SPSS follows the description in chapter 10.8.2 - 10.8.3 of `Field (2017)
<https://edge.sagepub.com/field5e>`__, especially Figure 10.4 and Output 10.3 - 10.4.

+-------------------------------------------------+-------------------------------------------------+
|**SPSS** (version 27)                            | **jamovi** (version 2.0)                        |
+=================================================+=================================================+
| In SPSS you can run an independent t-test       | In jamovi you do this using: ``Analyses`` (tab) → |
| using: ``Analyze`` → ``Compare Means`` →        | ``T-Tests`` → ``Independent Samples T-Test``      |
| ``Independent Samples T-test``                  |                                                   |
+-------------------------------------------------+-------------------------------------------------+
|  |SPSS_Menu_ttestIS1|                           |  |jamovi_Menu_ttestIS1|                         |
+-------------------------------------------------+-------------------------------------------------+
| In SPSS, ``Mischevious acts`` is moved to the   | In jamovi, the variable ``Mischief`` is moved   |
| variable box ``Test variables(s)`` and ``Cloak  | to the variable box ``Dependent Variable(s)``,  |
| of invisibility`` to variable box ``Grouping    | and the variable ``Cloak`` is moved to the      |
| variables``. Afterwards, press the button       | variable box `` Grouping Variable``.            |
| ``Define Groups...`` (underneath the variable   | If you wish to obtain an identical output to    |
| box ``Grouping variables``) and enter ``0``     | SPSS, the Levene's Test for the Equality of     |
| under ``Group 1`` and ``1`` under ``Group 2``.  | Variances, you have to switch it on by ticking  |
|                                                 | ``Homogeneity Test`` under ``Assumption         |
|                                                 | Checks``, and a table with the descriptive      |
|                                                 | statistics for the two groups can be selected   |
|                                                 | by ticking ``Descriptives`` unde ``Additional   |
|                                                 | Statistics``.                                   |
+-------------------------------------------------+-------------------------------------------------+
| |SPSS_Input_ttestIS1|                           | |jamovi_Input_ttestIS1|                         |
+-------------------------------------------------+-------------------------------------------------+
| If one compares the outputs of SPSS and jamovi, the results are the same. However, the output of  |
| jamovi appears much more clear. The main results can be found in slight different places in SPSS  |
| and jamovi.                                                                                       |
+-------------------------------------------------+-------------------------------------------------+
| |SPSS_Output_ttestIS1|                          | |jamovi_Output_ttestIS1|                        |
+-------------------------------------------------+-------------------------------------------------+
| In SPSS, the output table ``Independent Samples | If the p-value in the table ``Homogeneity of    |
| T-Test`` starts with Levene's Test for the      | Variances Test (Levene's)`` is significant      |
| Equality of Variances. If it is NOT             | (p < 0.05), then you have to choose to correct  |
| significant, you can use the results from the   | for that inhomogeneity. To do so, untick        |
| first line (``Equal variances assumed``),       | ``Student's`` and tick ``Welch's`` instead      |
| otherwise, you have to use the results from     | (under ``Test`` in the input panel).            |                 
| the second line (``Equal variances not          | Otherwise, the results described underneath     |
| assumed``).                                     | can be found in the first table ``Independent   |
|                                                 | Samples T-Test``.                               |
+-------------------------------------------------+-------------------------------------------------+
| The t-value can be found in the third column (``t``) in SPSS and the first column                 |
| (``statistics``) in jamovi, the next column after that (``df``, both in SPSS and jamovi) shows    |
| the degrees of freedom and the column after that (``Sig. (2-tailed)`` in SPSS, ``p`` in jamovi)   |
| the p-value for this combination of t-value and degrees of freedom.                               |
| The numerical values for the statistics are identical: *t* = -1.71, *df* = 22, *p* = 0.101.       |
+-------------------------------------------------+-------------------------------------------------+

**References**
Field, A. (2017). *Discovering statistics using IBM SPSS statistics* (5th ed.). SAGE Publications. https://edge.sagepub.com/field5e

.. ---------------------------------------------------------------------

.. |SPSS_Menu_ttestIS1|               image:: ../_images/s2j_SPSS_Menu_ttestIS1.png

.. |jamovi_Menu_ttestIS1|             image:: ../_images/s2j_jamovi_Menu_ttestIS1.png

.. |SPSS_Input_ttestIS1|              image:: ../_images/s2j_SPSS_Input_ttestIS1.png

.. |jamovi_Input_ttestIS1|            image:: ../_images/s2j_jamovi_Input_ttestIS1.png

.. |SPSS_Output_ttestIS1|             image:: ../_images/s2j_SPSS_Output_ttestIS1.png

.. |jamovi_Output_ttestIS1|           image:: ../_images/s2j_jamovi_Output_ttestIS1.png

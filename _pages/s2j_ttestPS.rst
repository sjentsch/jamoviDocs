.. sectionauthor:: `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

==============================================
From SPSS to jamovi: t-test for paired samples 
==============================================

This comparison shows how a t-test for independent samples is performed in SPSS and jamovi. How the test is conducted in SPSS follows the description in
chapter 10.9 of `Field (2017) <https://edge.sagepub.com/field5e>`__, especially Figure 10.7 to 10.10 and Output 10.8 - 10.10. It uses the data file
**Invisibility RM.sav** which can be downloaded from the `web page accompanying the book <https://edge.sagepub.com/field5e/student-resources/datasets>`__.

The dataset describes a repeated-measures-design where first the “baseline”-number of mischieveous acts (during one week) is determined for each participant
(variable ``No_Cloak``) before they are handed a cloak that makes them invisible. After receiving the cloak, the number of mischieveous acts is recorded for the
following week (variable ``Cloak``) during which they can make themselves invisible (which is assumed to increase the number of mischieveous acts committed).

In a first step, it demonstrates the calculation of the statistics underlying the t-test for paired samples. For this calculation, first, the average number of
mischieveous acts for each person is calculated before a mean of these individual averages is calculated for the whole group. The individual is then adjusted for
that group mean. The aim of this calculation is to show that by using repeated measurements, one can “control” for some proportion of the variance which is
caused by individual differences in performance. In connection with this, the standard error of mean becomes smaller (which means that effects easier can become
significant (as compared to a between-subjects design).

+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| **SPSS** (version 27)                                                         | **jamovi** (version 2.0)                                                      |
+===============================================================================+===============================================================================+
| In SPSS you can create variables using: Transform → Compute Variable...       | In jamovi you do this using: Data (tab) → Compute → Compute Variable.         |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Theory_ttestPS1|                                                        | |jamovi_Theory_ttestPS1|                                                      |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
|-
| style="width: 50%" | [[File:Screenshot_SPSS_menu_TtestIndependent2.png|800px]]
| style="width: 50%" | [[File:Screenshot_jamovi_menu_ComputeVariable_processed.png|800px]]
|-
| I SPSS kalkulerer man gjennomsnittet av de to kolonnene "No_Cloak" og "Cloak" som anvist på bildet under
| I Jamovi kalkulerer man gjennomsnittet av de to kolonnene "No_Cloak" og "Cloak" som anvist på bildet under
|-
| style="width: 50%" | [[File:Screenshot_SPSS_ComputeVariable1_TtestIndependent2.png|800px]] 
| style="width: 50%" | [[File:Screenshot_jamovi_ComputeVariable1_TtestIndependent2_processed.png|800px]]
|-
| En benytter seg også av deskriptiv statistikk i denne analysen, i SPSS gjøres dette ved bruk av: Analyze → Descriptive Statistics → Descriptives
| En benytter seg også av deskriptiv statistikk i denne analysen, i Jamovi gjøres dette ved bruk av: Analyses → Exploration – Descriptive → Variable - Split By.
|-
| style="width: 50%" | [[File:Screenshot_SPSS_menu_descriptives_TtestIndependent2.png|800px]]
| style="width: 50%" | [[File:Screenshot_jamovi_descriptives_ComputeVariable_processed.png|800px]]
|-
| For å finne grand mean i SPSS må man flytte variablen "mean" til "Variable(s)", for så å velge "Options" og huke av mean.
| For å finne grand mean i jamovi flytter man bare mean til "Variables" som anvist på bildet over
|-
| style="width: 50%" | [[File:Screenshot_SPSS_Descriptives_Options_TtestIndependent2.png|800px]]
|-
| style="width: 50%" | [[File:Output_SPSS_TtestIndependent2.png|800px]]
| style="width: 50%" | [[File:Output_jamovi_TtestIndependent2.pdf.png|800px]]
|-
| I SPSS kalkulerer man "Adjustment" ved å bruke "compute variable"-funksjonen. I numeric expression setter man inn grand mean (4.375) - Mean som anvist på bildet under.
| For å kalkulere "Adjustment" i Jamovi benyttes  «computed variable» -funksjonen som ligger under DATA. I boksen som er merket med rødt på bildet over setter man inn grand mean (4.375)-Mean. 
|-
| style="width: 50%" | [[File:Screenshot_SPSS_ComputeVariable2_TtestIndependent2.png|800px]]
| style="width: 50%" | [[File:Screenshot_jamovi_ComputeVariable_adjustment_TtestIndependent2_processed.png|800px]]
|-
| For å justere verdiene til No_Cloak i SPSS, bruker man igjen "compute variable"-funksjonen. Sett inn "No_Cloak + Adjustment i numeric expression.
| For å justere verdiene til No_Cloak i Jamovi benyttes "compute variabel"-funksjonen (som ligger under DATA). Sett deretter inn No_Cloak + Adjustment i boksen som er merket med rødt i bildet ovenfor. 
|-
| style="width: 50%" | [[File:Screenshot_SPSS_ComputeVariable3_TtestIndependent2.png|800px]]
| style="width: 50%" | [[File:Screenshot_jamovi_ComputeVariable3_TtestIndependent2_processed.png|800px]]
|-
| På samme måte setter man inn "Cloak" + Adjustment i numeric expression for å justere verdiene til Cloak
| På samme måte setter man inn "Cloak" + Adjustment i boksen merket med rødt for å justere verdiene til Cloak
|-
| style="width: 50%" | [[File:Screenshot_SPSS_ComputeVariable4_TtestIndependent2.png|800px]]
| style="width: 50%" | [[File:Screenshot_jamovi_ComputeVariable4_TtestIndependent2_processed.png|800px]]
|-
| Resultat med alle de nye variablene
| Resultat med alle de nye variablene
|-
| style="width: 50%" | [[File:Screenshot_SPSS_ComputeVariable_Results_TtestIndependent2.png|800px]]
| style="width: 50%" | [[File:Screenshot_jamovi_Results_ComputeVariable_TtestIndependent2.png|800px]]
|-
|}



+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| **SPSS** (version 27)                                                         | **jamovi** (version 2.0)                                                      |
+===============================================================================+===============================================================================+
| In SPSS you can create variables using: Transform → Compute Variable...       | In jamovi you do this using: Data (tab) → Compute → Compute Variable.         |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+




| **References**
| Field, A. (2017). *Discovering statistics using IBM SPSS statistics* (5th ed.). SAGE Publications. https://edge.sagepub.com/field5e


.. ---------------------------------------------------------------------

.. |SPSS_Theory_ttestPS1|              image:: ../_images/s2j_SPSS_Menu_ttestIS1.png
.. |jamovi_Theory_ttestIS1|            image:: ../_images/s2j_jamovi_Menu_ttestIS1.png

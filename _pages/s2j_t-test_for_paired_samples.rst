.. sectionauthor:: `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

==============================================
From SPSS to jamovi: t-test for paired samples 
==============================================

(coming soon)

+-------------------------------------------------+-------------------------------------------------+
|**SPSS** (version 27)                            | **jamovi** (version 2.0)                        |
+=================================================+=================================================+
|                                                 |                                                 |
+-------------------------------------------------+-------------------------------------------------+

<div id="XXXX_2">
== Analyse 2 ==
</div>
Denne sammenlikning viser hvordan en bruker "compute variable"-funksjonen for å kalkulere gjennomsnitt, "grand mean" og justerte variabler slik som det er beskrevet i kapittelet 10.9.2 av [[#Field| Field (2017)]], spesielt figurene 10.7-10.10 og utgaver som viser "grand mean".

{| class="wikitable" style="width: 100%; background-color:#ffffff;" cellpadding="20"
| style="width: 50%" | '''SPSS''' (version 25)
| style="width: 50%" | '''jamovi''' (versjon 1.2)
|-
| I SPSS kan en lage variabler ved bruk av: Transform -→ Compute variable. 
| I jamovi gjør du dette ved bruk av: Data → Compute → Compute Variable. 
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
{| class="wikitable" style="width: 100%; background-color:#ffffff;" cellpadding="20"
| style="width: 50%" | '''SPSS''' (version 25)
| style="width: 50%" | '''jamovi''' (versjon 1.2)
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
<div id="XXXX_1">



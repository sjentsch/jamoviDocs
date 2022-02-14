.. sectionauthor:: `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_, Rebecca Vederhus

========================================
From SPSS to jamovi: Logistic Regression 
========================================

    This comparison shows how a binary logistic regression is conducted in SPSS and jamovi. The SPSS test follows the description in chapter 20.5 - 20.6 in
    `Field (2017) <https://edge.sagepub.com/field5e>`__, especially figure 20.7 - 20.10 and output 20.1 - 20.5 (bootstrap excluded). It uses the data file
    **Eel.sav** which can be downloaded from the `web page accompanying the book <https://edge.sagepub.com/field5e/student-resources/datasets>`__.

+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| **SPSS**                                                                      | **jamovi**                                                                    |
+===============================================================================+===============================================================================+
| In SPSS you can run a binary logistic regression using: ``Analyze`` →         | In jamovi you do this using: ``Analyses`` → ``Regression`` → ``2 Outcomes     |
| ``Regression`` → ``Binary Logistic``.                                         | Binominal``.                                                                  |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Menu_logReg1|                                                           | |jamovi_Menu_logReg1|                                                         |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| In SPSS, move ``Cured`` to the ``Dependent`` variable box and                 | In jamovi, move the variable ``Cured`` to ``Dependent Variable`` and the      |
| ``Intervention`` to the ``Covariates`` variable box.                          | variables ``Duration`` and ``Intervention`` to ``Covariates``.                |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Input_logReg1_1|                                                        | |jamovi_Input_logReg1_1|                                                      |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| Click ``Next`` and add ``Duration`` to this new block.                        | Create two new blocks by clicking ``+ Add New Block`` in the ``Model          |
|                                                                               | Builder`` drop-down menu. Add the ``Duration`` variable to ``Block 2``, and   |
|                                                                               | add ``Duration`` and ``Intervention`` to ``Block 3`` by marking them both and |
|                                                                               | clicking ``Interaction`` in the drop-down menu.                               |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Input_logReg1_2|                                                        | |jamovi_Input_logReg1_2|                                                      |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| Create a third block by clicking ``Next`` one more time, and create an        |                                                                               |
| interaction by marking both ``Intervention`` and ``Duration`` and moving      |                                                                               |
| them to the block by pressing the arrow.                                      |                                                                               |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Input_logReg1_3|                                                        |                                                                               |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| Access the ``Categorical`` window and open the drop-down menu for             | jamovi set the reference category automatically to the first category. If you |
| ``Contrast``. Here, choose ``Indicator`` and then check ``First`` as the      | were to change that, open the drop-down menu ``Reference levels``, and change |
| ``Reference Category``. Click ``Change``.                                     | the reference level for each variable to the desired level (e.g., ``Not       |
|                                                                               | Cured``).                                                                     |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Input_logReg1_4|                                                        | |jamovi_Input_logReg1_3|                                                      |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| Open the ``Options`` window and check the following boxes: ``Classification   | Open the drop-down menu ``Prediction`` and tick ``Classification table``.     |
| plots``, ``Hosmer-Lemeshow goodness-of-fit``, ``Casewise listing of           +-------------------------------------------------------------------------------+
| residuals``, ``Outliers outside 2 std. dev.``, ``Iteration history``,         | |jamovi_Input_logReg1_4|                                                      |
| ``CI for exp(B)``, ``At each step``, and ``Include constant in model``.       +-------------------------------------------------------------------------------+
|                                                                               | In the drop-down menu ``Model Coefficients``, tick ``Odds ratio`` and the     |
|                                                                               | ``Confidence interval`` to odds ratio.                                        |
|                                                                               +-------------------------------------------------------------------------------+
|                                                                               | |jamovi_Input_logReg1_5|                                                      |
|                                                                               +-------------------------------------------------------------------------------+
|                                                                               | In the ``Model Fit`` window, check the boxes for ``Deviance``, ``AIC``,       |
|                                                                               | ``Overall Model Test``, ``Cox & Snell's R²`` and ``Nagelkerke's R²``.         |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Input_logReg1_6|                                                        | |jamovi_Input_logReg1_6|                                                      |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| Open the ``Save`` window and check ``Probabilities``, ``Group membership``,   | jamovi permits you to save some of these values too. To do so, open the       |
| ``Cook's``, ``Leverage values``, ``DfBeta(s)``, ``Standardized`` (residuals), | drop-down menu ``Save`` and tick ``Predicted values``, ``Residuals``, and     |
| and ``Include the covariance matrix``.                                        | ``Cooks's distance``.                                                         |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Input_logReg1_5|                                                        | |jamovi_Input_logReg1_7|                                                      |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| If you compare the output from SPSS and jamovi, the results are essentially the same. However, the results from jamovi are shorter and better structured,     |
| whereas the SPSS results are much more extensive (likely to the more comprehensive choice of options, according to Field, 2017). jamovi, furthermore, first   |
| has an overview over the models and their comparison whereas SPSS provides those model indices within each model.                                             |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
|                                                                               | |jamovi_Output_logReg1_1|                                                     |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Output_logReg1_1|                                                       | |jamovi_Output_logReg1_2|                                                     |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Output_logReg1_2|                                                       | |jamovi_Output_logReg1_3|                                                     |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| |SPSS_Output_logReg1_3|                                                       | |jamovi_Output_logReg1_4|                                                     |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| In the output from SPSS you can find tables for ``Model Summary``,            | In jamovi, -2LL values, Cox & Snell R² and Nagelkerke R² values for all the   |
| ``Variables in the Equation`` and ``Omnibus Tests of Model Coefficients`` for | predictors are found in the table called ``Model Fit Measures``. χ²-values,   |
| each of the predictors in the model. The ``Model Summary`` tables shows the   | degrees of freedom and significance levels are found in the ``Model           |
| -2LL value for the model, as well as Cox & Snell R² and Nagelkerke R². In the | Comparisons`` table. In addition, *b*-values, *SE*-values, significance level |
| ``Omnibus Tests of Model Coefficients`` tables, χ²-values, degrees of freedom | odds ratio and the confidence interval for it as well as the classification   |
| and significance values are found. Lastly, you can find *b*-values,           | table are shown as separate parts of the output (one for each model). Only    |
| *SE*-values, degrees of freedom and significance values in the ``Variables in | one model is shown at a time and the model can be selected by using the       |
| the Equation`` table. This table also shows the odds ratio.                   | drop-down menu next to ``Model Specific Results``.                            |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| | SPSS produces a lot more output tables (some not shown) than jamovi, not the least due to Field (2017) asking for options that are not available in jamovi. |
| | The numerical values for the results are the same.                                                                                                          |
| | Model 1: -2LL = 144.158, χ² = 9.926, df = 1, *p* = 0.002, *R²*:sub:`CS` = 0.084, *R²*:sub:`N` = 0.113, corr.\ :sub:`NC` = 66.667, corr.\ :sub:`C` = 63.077  |
| | Model 2: -2LL = 144.156, χ² = 9.928, df = 2, *p* = 0.007, *R²*:sub:`CS` = 0.084, *R²*:sub:`N` = 0.113, corr.\ :sub:`NC` = 66.667, corr.\ :sub:`C` = 63.077  |
| | Model 3: -2LL = 144.095, χ² = 9.989, df = 3, *p* = 0.019, *R²*:sub:`CS` = 0.085, *R²*:sub:`N` = 0.114, corr.\ :sub:`NC` = 66.667, corr.\ :sub:`C` = 63.077  |
| | It becomes clear that ``Intervention`` is the most decisive predictor whereas ``Duration`` and the interaction of ``Intervention × Duration`` don't really  |
|   lead to better prediction: The number of correctly classified cases doesn't change between the models while Model 1 is the most parsimonuous; furthermore,  | 
|   the Deviance (-2LL) and χ² for Model 2 and 3 are more or less the same as for Model 1 (and since more df's are used in Model 2 and 3, the p-values increase |
|   (which is all emphasizing that Model 1 is the best model and should be selected).                                                                           |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| If you want to use syntax for running these analyses, this can be done using the following commands (in jamovi, copy the code to `Rj <Rj_overview.html>`__).  |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
| .. code-block:: none                                                          | .. code-block:: none                                                          |
|                                                                               |                                                                               |   
|    LOGISTIC REGRESSION VARIABLES Cured                                        |    jmv::logRegBin(                                                            |
|       /METHOD=ENTER Intervention                                              |        data = data,                                                           |
|       /METHOD=ENTER Duration                                                  |        dep = Cured,                                                           |
|       /METHOD=ENTER Duration * Intervention                                   |        covs = vars(Duration, Intervention),                                   |
|       /CONTRAST (Intervention)=Indicator(1)                                   |        blocks = list(list("Intervention"),                                    |
|       /SAVE=PRED PGROUP COOK LEVER DFBETA ZRESID                              |                      list("Duration"),                                        |
|       /CLASSPLOT                                                              |                      list(c("Duration", "Intervention"))),                    |
|       /CASEWISE OUTLIER(2)                                                    |        refLevels = list(list(var="Cured", ref="Not Cured")),                  |
|       /PRINT=GOODFIT ITER(1) CI(95)                                           |        pseudoR2 = c("r2mf", "r2cs", "r2n"))                                   |
|       /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).                    |                                                                               |
+-------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

| **References**
| Field, A. (2017). *Discovering statistics using IBM SPSS statistics* (5th ed.). SAGE Publications. https://edge.sagepub.com/field5e

.. ---------------------------------------------------------------------

.. |SPSS_Menu_logReg1|                 image:: ../_images/s2j_SPSS_Menu_logReg1.png
.. |jamovi_Menu_logReg1|               image:: ../_images/s2j_jamovi_Menu_logReg1.png
.. |SPSS_Input_logReg1_1|              image:: ../_images/s2j_SPSS_Input_logReg1_1.png
.. |SPSS_Input_logReg1_2|              image:: ../_images/s2j_SPSS_Input_logReg1_2.png
.. |SPSS_Input_logReg1_3|              image:: ../_images/s2j_SPSS_Input_logReg1_3.png
.. |SPSS_Input_logReg1_4|              image:: ../_images/s2j_SPSS_Input_logReg1_4.png
.. |SPSS_Input_logReg1_5|              image:: ../_images/s2j_SPSS_Input_logReg1_5.png
.. |SPSS_Input_logReg1_6|              image:: ../_images/s2j_SPSS_Input_logReg1_6.png
.. |jamovi_Input_logReg1_1|            image:: ../_images/s2j_jamovi_Input_logReg1_1.png
.. |jamovi_Input_logReg1_2|            image:: ../_images/s2j_jamovi_Input_logReg1_2.png
.. |jamovi_Input_logReg1_3|            image:: ../_images/s2j_jamovi_Input_logReg1_3.png
.. |jamovi_Input_logReg1_4|            image:: ../_images/s2j_jamovi_Input_logReg1_4.png
.. |jamovi_Input_logReg1_5|            image:: ../_images/s2j_jamovi_Input_logReg1_5.png
.. |jamovi_Input_logReg1_6|            image:: ../_images/s2j_jamovi_Input_logReg1_6.png
.. |jamovi_Input_logReg1_7|            image:: ../_images/s2j_jamovi_Input_logReg1_7.png
.. |SPSS_Output_logReg1_1|             image:: ../_images/s2j_SPSS_Output_logReg1_1.png
.. |SPSS_Output_logReg1_2|             image:: ../_images/s2j_SPSS_Output_logReg1_2.png
.. |SPSS_Output_logReg1_3|             image:: ../_images/s2j_SPSS_Output_logReg1_3.png
.. |jamovi_Output_logReg1_1|           image:: ../_images/s2j_jamovi_Output_logReg1_1.png
.. |jamovi_Output_logReg1_2|           image:: ../_images/s2j_jamovi_Output_logReg1_2.png
.. |jamovi_Output_logReg1_3|           image:: ../_images/s2j_jamovi_Output_logReg1_3.png
.. |jamovi_Output_logReg1_4|           image:: ../_images/s2j_jamovi_Output_logReg1_4.png

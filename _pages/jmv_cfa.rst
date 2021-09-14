.. sectionauthor:: `Ravi Selker, Jonathon Love, Damian Dropmann <https://www.jamovi.org>`_

============================
Confirmatory Factor Analysis
============================

(``cfa``)
=========

Description
-----------

Confirmatory Factor Analysis

Usage
-----

.. code-block:: r

   cfa(
     data,
     factors = list(list(label = "Factor 1", vars = list())),
     resCov,
     miss = "fiml",
     constrain = "facVar",
     estTest = TRUE,
     ci = FALSE,
     ciWidth = 95,
     stdEst = FALSE,
     factCovEst = TRUE,
     factInterceptEst = FALSE,
     resCovEst = FALSE,
     resInterceptEst = FALSE,
     fitMeasures = list("cfi", "tli", "rmsea"),
     modelTest = TRUE,
     pathDiagram = FALSE,
     corRes = FALSE,
     hlCorRes = 0.1,
     mi = FALSE,
     hlMI = 3
   )

Arguments
---------

+----------------------+----------------------------------------------+
| ``data``             | the data as a data frame                     |
+----------------------+----------------------------------------------+
| ``factors``          | a list containing named lists that define    |
|                      | the ``label`` of the factor and the ``vars`` |
|                      | that belong to that factor                   |
+----------------------+----------------------------------------------+
| ``resCov``           | a list of lists specifying the residual      |
|                      | covariances that need to be estimated        |
+----------------------+----------------------------------------------+
| ``miss``             | ``'listwise'`` or ``'fiml'``, how to handle  |
|                      | missing values; ``'listwise'`` excludes a    |
|                      | row from all analyses if one of its entries  |
|                      | is missing, ``'fiml'`` uses a full           |
|                      | information maximum likelihood method to     |
|                      | estimate the model.                          |
+----------------------+----------------------------------------------+
| ``constrain``        | ``'facVar'`` or ``'facInd'``, how to         |
|                      | contrain the model; ``'facVar'`` fixes the   |
|                      | factor variances to one, ``'facInd'`` fixes  |
|                      | each factor to the scale of its first        |
|                      | indicator.                                   |
+----------------------+----------------------------------------------+
| ``estTest``          | ``TRUE`` (default) or ``FALSE``, provide 'Z' |
|                      | and 'p' values for the model estimates       |
+----------------------+----------------------------------------------+
| ``ci``               | ``TRUE`` or ``FALSE`` (default), provide a   |
|                      | confidence interval for the model estimates  |
+----------------------+----------------------------------------------+
| ``ciWidth``          | a number between 50 and 99.9 (default: 95)   |
|                      | specifying the confidence interval width     |
|                      | that is used as ``'ci'``                     |
+----------------------+----------------------------------------------+
| ``stdEst``           | ``TRUE`` or ``FALSE`` (default), provide a   |
|                      | standardized estimate for the model          |
|                      | estimates                                    |
+----------------------+----------------------------------------------+
| ``factCovEst``       | ``TRUE`` (default) or ``FALSE``, provide     |
|                      | estimates for the factor (co)variances       |
+----------------------+----------------------------------------------+
| ``factInterceptEst`` | ``TRUE`` or ``FALSE`` (default), provide     |
|                      | estimates for the factor intercepts          |
+----------------------+----------------------------------------------+
| ``resCovEst``        | ``TRUE`` (default) or ``FALSE``, provide     |
|                      | estimates for the residual (co)variances     |
+----------------------+----------------------------------------------+
| ``resInterceptEst``  | ``TRUE`` or ``FALSE`` (default), provide     |
|                      | estimates for the residual intercepts        |
+----------------------+----------------------------------------------+
| ``fitMeasures``      | one or more of ``'cfi'``, ``'tli'``,         |
|                      | ``'srmr'``, ``'rmsea'``, ``'aic'``, or       |
|                      | ``'bic'``; use CFI, TLI, SRMR, RMSEA + 90\\  |
|                      | measures, respectively                       |
+----------------------+----------------------------------------------+
| ``modelTest``        | ``TRUE`` (default) or ``FALSE``, provide a   |
|                      | chi-square test for exact fit that compares  |
|                      | the model with the perfect fitting model     |
+----------------------+----------------------------------------------+
| ``pathDiagram``      | ``TRUE`` or ``FALSE`` (default), provide a   |
|                      | path diagram of the model                    |
+----------------------+----------------------------------------------+
| ``corRes``           | ``TRUE`` or ``FALSE`` (default), provide the |
|                      | residuals for the observed correlation       |
|                      | matrix (i.e., the difference between the     |
|                      | expected correlation matrix and the observed |
|                      | correlation matrix)                          |
+----------------------+----------------------------------------------+
| ``hlCorRes``         | a number (default: 0.1), highlight values in |
|                      | the ``'corRes'`` table above this value      |
+----------------------+----------------------------------------------+
| ``mi``               | ``TRUE`` or ``FALSE`` (default), provide     |
|                      | modification indices for the parameters not  |
|                      | included in the model                        |
+----------------------+----------------------------------------------+
| ``hlMI``             | a number (default: 3), highlight values in   |
|                      | the ``'modIndices'`` tables above this value |
+----------------------+----------------------------------------------+

Output
------

A results object containing:

+-----------------------------------------+-------------------------------------+
| ``results$factorLoadings``              | a table containing the factor       |
|                                         | loadings                            |
+-----------------------------------------+-------------------------------------+
| ``results$factorEst$factorCov``         | a table containing factor           |
|                                         | covariances estimates               |
+-----------------------------------------+-------------------------------------+
| ``results$factorEst$factorIntercept``   | a table containing factor intercept |
|                                         | estimates                           |
+-----------------------------------------+-------------------------------------+
| ``results$resEst$resCov``               | a table containing residual         |
|                                         | covariances estimates               |
+-----------------------------------------+-------------------------------------+
| ``results$resEst$resIntercept``         | a table containing residual         |
|                                         | intercept estimates                 |
+-----------------------------------------+-------------------------------------+
| ``results$modelFit$test``               | a table containing the chi-square   |
|                                         | test for exact fit                  |
+-----------------------------------------+-------------------------------------+
| ``results$modelFit$fitMeasures``        | a table containing fit measures     |
+-----------------------------------------+-------------------------------------+
| ``results$modelPerformance$corRes``     | a table containing residuals for    |
|                                         | the observed correlation matrix     |
+-----------------------------------------+-------------------------------------+
| ``results$modelPerformance$modIndices`` | a group                             |
+-----------------------------------------+-------------------------------------+
| ``results$pathDiagram``                 | an image containing the model path  |
|                                         | diagram                             |
+-----------------------------------------+-------------------------------------+
| ``results$modelSyntax``                 | the lavaan syntax used to fit the   |
|                                         | model                               |
+-----------------------------------------+-------------------------------------+

Tables can be converted to data frames with ``asDF`` or
``as.data.frame()``. For example:

``results$factorLoadings$asDF``

``as.data.frame(results$factorLoadings)``

Examples
--------

.. code-block:: r

   data <- lavaan::HolzingerSwineford1939

   jmv::cfa(
       data = data,
       factors = list(
           list(label="Visual", vars=c("x1", "x2", "x3")),
           list(label="Textual", vars=c("x4", "x5", "x6")),
           list(label="Speed", vars=c("x7", "x8", "x9"))),
       resCov = NULL)

   #
   #  CONFIRMATORY FACTOR ANALYSIS
   #
   #  Factor Loadings
   #  -----------------------------------------------------------------
   #    Factor     Indicator    Estimate    SE        Z        p
   #  -----------------------------------------------------------------
   #    Visual     x1              0.900    0.0832    10.81    < .001
   #               x2              0.498    0.0808     6.16    < .001
   #               x3              0.656    0.0776     8.46    < .001
   #    Textual    x4              0.990    0.0567    17.46    < .001
   #               x5              1.102    0.0626    17.60    < .001
   #               x6              0.917    0.0538    17.05    < .001
   #    Speed      x7              0.619    0.0743     8.34    < .001
   #               x8              0.731    0.0755     9.68    < .001
   #               x9              0.670    0.0775     8.64    < .001
   #  -----------------------------------------------------------------
   #
   #
   #  FACTOR ESTIMATES
   #
   #  Factor Covariances
   #  --------------------------------------------------------------
   #                          Estimate    SE        Z       p
   #  --------------------------------------------------------------
   #    Visual     Visual      1.000 a
   #               Textual     0.459      0.0635    7.22    < .001
   #               Speed       0.471      0.0862    5.46    < .001
   #    Textual    Textual     1.000 a
   #               Speed       0.283      0.0715    3.96    < .001
   #    Speed      Speed       1.000 a
   #  --------------------------------------------------------------
   #    a fixed parameter
   #
   #
   #  MODEL FIT
   #
   #  Test for Exact Fit
   #  ------------------------
   #    X²      df    p
   #  ------------------------
   #    85.3    24    < .001
   #  ------------------------
   #
   #
   #  Fit Measures
   #  -----------------------------------------------
   #    CFI      TLI      RMSEA     Lower     Upper
   #  -----------------------------------------------
   #    0.931    0.896    0.0921    0.0714    0.114
   #  -----------------------------------------------
   #

��          �               |  �   }  1     �   @  }  �  
  I     T     `     u  3   �     �  9
  �  H       Y  x   j  �   �  �   �  3   m  s   �  �     L   �  �     �  �  �   �  C   /  �   s  J  *  j  u     �      �      !  6    !     W!  F
  w!  l   �+  g  +,  ~   �-  R  .  �   e/  C   0  �   b0  �   �0  k   �1  �   $2   But you can also use functions from R libraries: .. code-block: R stats::aggregate(as.numeric(data[, 'var1']), list(data[, 'gender']), mean) Click on the «R» icon and select «Rj Editor». First you have to `install the module <Install_modules.html>`__ Rj from the jamovi library. This will create a «R»-icon in the icon bar. It may take a bit of time to figure out how to use these functions, especially to discover, e.g., which format is required for the data matrices you use as input to functions (those may need to be converted to numbers with «as.numeric» or to a list with «list»). But once you managed that, you have unlimited access to (almost) any kind of statistical analysis you can imagine. Per default, Rj uses the R-installation that is included with jamovi. For most circumstances this will be sufficient (not the least because quite a wealth of libraries is included; see above). However, there might be occasions where you would like to use the R-installation on your computer; typically, if you want to use libraries that are not included in jamovi's R-version. To do this, click on the cogwheel symbol in the top-right corner of the Rj-input field. A window opens where you can set whether you would like to use jamovi's R version («jamovi R» in the dropdown box at the bottom) or your system's R version («System R»). Please note that currently (Nov 2019), this option is not available for certain system-and-R-version-combinations (e.g., R > 3.4 on Linux). Preparation Rj-module for jamovi Running R commands Some of these libraries are especially interesting: Switch between R-versions This is not at least because there come already a wealth of R libraries installed with jamovi and Rj: ``abind``, ``acepack``, ``afex``, ``arm``, ``assertthat``, ``backports``, ``base``, ``base64enc``, ``BayesFactor``, ``BDgraph``, ``BH``, ``bindr``, ``bindrcpp``, ``bitops``, ``boot``, ``ca``, ``car``, ``carData``, ``caTools``, ``cellranger``, ``checkmate``, ``class``, ``cli``, ``clipr``, ``cluster``, ``coda``, ``codetools``, ``colorspace``, ``compiler``, ``contfrac``, ``corpcor``, ``crayon``, ``curl``, ``d3Network``, ``data.table``, ``datasets``, ``deSolve``, ``digest``, ``dplyr``, ``ellipsis``, ``elliptic``, ``emmeans``, ``estimability``, ``evaluate``, ``evaluate``, ``exact2x2``, ``exactci``, ``fansi``, ``fdrtool``, ``forcats``, ``foreign``, ``Formula``, ``gdata``, ``GGally``, ``ggm``, ``ggplot2``, ``ggridges``, ``glasso``, ``glue``, ``gnm``, ``GPArotation``, ``gplots``, ``graphics``, ``grDevices``, ``grid``, ``gridExtra``, ``gtable``, ``gtools``, ``haven``, ``highr``, ``Hmisc``, ``hms``, ``htmlTable``, ``htmltools``, ``htmlwidgets``, ``huge``, ``hypergeo``, ``igraph``, ``jmv``, ``jmvcore``, ``jpeg``, ``jsonlite``, ``KernSmooth``, ``knitr``, ``kutils``, ``labeling``, ``lattice``, ``latticeExtra``, ``lavaan``, ``lazyeval``, ``lisrelToR``, ``lme4``, ``lmerTest``, ``lmtest``, ``magrittr``, ``maptools``, ``markdown``, ``MASS``, ``Matrix``, ``matrixcalc``, ``MatrixModels``, ``methods``, ``mgcv``, ``mi``, ``mime``, ``minqa``, ``mnormt``, ``multcomp``, ``munsell``, ``mvnormtest``, ``mvtnorm``, ``nlme``, ``nloptr``, ``nnet``, ``numDeriv``, ``OpenMx``, ``openxlsx``, ``parallel``, ``pbapply``, ``pbivnorm``, ``pbkrtest``, ``pillar``, ``pkgconfig``, ``pkgconfig``, ``plogr``, ``plyr``, ``PMCMR``, ``png``, ``praise``, ``prettyunits``, ``progress``, ``psych``, ``purrr``, ``qgraph``, ``quantreg``, ``qvcalc``, ``R6``, ``RColorBrewer``, ``Rcpp``, ``RcppArmadillo``, ``RcppEigen``, ``RCurl``, ``readr``, ``readxl``, ``regsem``, ``relimp``, ``rematch``, ``reshape``, ``reshape2``, ``RInside``, ``rio``, ``Rj``, ``rjson``, ``rlang``, ``rockchalk``, ``ROCR``, ``rpart``, ``rpf``, ``RProtoBuf``, ``Rsolnp``, ``rstudioapi``, ``RUnit``, ``sandwich``, ``scales``, ``sem``, ``semPlot``, ``semTools``, ``sp``, ``SparseM``, ``spatial``, ``splines``, ``ssanv``, ``StanHeaders``, ``stats``, ``stats4``, ``stringi``, ``stringr``, ``survival``, ``tcltk``, ``testthat``, ``TH.data``, ``tibble``, ``tidyselect``, ``tools``, ``truncnorm``, ``utf8``, ``utils``, ``vcd``, ``vcdExtra``, ``vctrs``, ``viridis``, ``viridisLite``, ``whisker``, ``withr``, ``xfun``, ``XML``, ``xtable``, ``yaml``, ``zeallot``, ``zip``, ``zoo``. This opens an input field on the left side where you can use R commands. You can access your dataset with the variable ``data``. The first line selects the first three columns of your dataset. Alternatively, you can use variable names as shown in the second line. .. code-block: R summary(data[1:3]) summary(data[, c('var1', 'var2', 'var3')]) there are also several of Hadley Wickham's |tidyverse|_ libraries included, \e.g., |dplyr|_, |stringr|_ or |tidyselect|_ |BayesFactor|_ to run several types of Bayes-analyses to complement your «classical» (frequentist) statistics (e.g. the Bayes-equivalent of the t-test; NB: it is of course easier to use the jamovi-module «jsq» for that) |MASS|_ implements analyses from Venables og Ripley's famous book «Modern Applied Statistics with S» (which includes, e.e., linear discriminant analysis ``MASS::lda``) |cluster|_ to run several types of cluster analyses |ggplot2|_ to produce (almost) any type of fancy `figures <http://www.ggplot2-exts.org/gallery/>`__ you can imagine |lavaan|_ to run a wide range of analyses with latent variables (incl. confirmatory factor analysis, structural equation modeling and latent growth curve models) |lme4|_ to calculate Linear, Generalized Linear, and Nonlinear mixed modells |stats|_ to get access to a wealth of statistical analyses (e.g., ``stats::glm`` for fitting Generalized Linear Models or ``stats:kmeans`` for running k-means cluster analyses) Project-Id-Version:  jamovi
Report-Msgid-Bugs-To: sebastian.jentschke@uib.no
POT-Creation-Date: 2021-09-14 17:24+0200
PO-Revision-Date: 2021-07-25 17:14+0000
Last-Translator: Sebastian Jentschke <sebastian.jentschke@uib.no>
Language: de
Language-Team: German <https://hosted.weblate.org/projects/jamovi/rj_overview/de/>
Plural-Forms: nplurals=2; plural=n != 1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 Sie können aber auch Funktionen aus R-Bibliotheken verwenden:
.. code-block: R
  stats::aggregate(as.numeric(data[, 'var1']), list(data[, 'gender']), mean) Klicken Sie auf das „R“-Symbol und wählen Sie „Rj Editor“. Zuerst müssen Sie das `Modul <Install_modules.html>`__ Rj aus der jamovi-Bibliothek installieren. Wenn das Modul installiert ist, findet sich ein „R“-Symbol in der Symbolleiste. Es kann einige Zeit dauern, um herauszufinden, wie diese Funktionen verwendet werden können. Dies gibt insbesondere dafür, herauszufinden, welches Eingabe-Format / welcher Variablentyp sich als Eingabe für bestimmte R-Funktionen eignet (sie müssen möglicherweise die Variablen in Ihrem jamovi-Datensatz mit «as.numeric» in Zahlen konvertieren oder Variablen aus ihrem ``data frame`` mit ``list`` in eine list-Variable umwandeln). Sobald diese Hürden überwunden sind, haben Sie unbegrenzten Zugriff auf (fast) jede Art von statistischer Analyse, die Sie sich vorstellen können. Standardmäßig verwendet Rj die R-Installation, die in jamovi enthalten ist. Für die meisten Fälle ist dies ausreichend (nicht zuletzt, weil eine ganze Fülle von Bibliotheken enthalten ist; siehe oben). Es kann jedoch vorkommen, dass Sie die R-Installation auf Ihrem Computer verwenden möchten, in der Regel, wenn Sie Bibliotheken verwenden möchten, die nicht in der R-Version von jamovi enthalten sind. Klicken Sie dazu auf das Zahnradsymbol in der oberen rechten Ecke des Rj-Eingabefeldes. Es öffnet sich ein Fenster, in dem Sie einstellen können, ob Sie die R-Version von jamovi («jamovi R» in der Dropdown-Box im unteren Teil dieses Fensters) oder die R-Version Ihres Systems («System R») verwenden möchten. Bitte beachten Sie, dass diese Option derzeit (Nov 2019) für bestimmte System- und R-Versionskombinationen (z. B. unter Linux) nicht verfügbar ist. Vorbereitung Das Rj-Modul für jamovi Ausführen von R-Befehlen Einige dieser Bibliotheken sind besonders interessant: Umschalten zwischen R-Versionen Dies liegt nicht zuletzt daran, dass mit jamovi und Rj bereits eine Fülle von R-Bibliotheken installiert ist: ``abind``, ``acepack``, ``afex``, ``arm``, ``assertthat``, ``backports``, ``base``, ``base64enc``, ``BayesFactor``, ``BDgraph``, ``BH``, ``bindr``, ``bindrcpp``, ``bitops``, ``boot``, ``ca``, ``car``, ``carData``, ``caTools``, ``cellranger``, ``checkmate``, ``class``, ``cli``, ``clipr``, ``cluster``, ``coda``, ``codetools``, ``colorspace``, ``compiler``, ``contfrac``, ``corpcor``, ``crayon``, ``curl``, ``d3Network``, ``data.table``, ``datasets``, ``deSolve``, ``digest``, ``dplyr``, ``ellipsis``, ``elliptic``, ``emmeans``, ``estimability``, ``evaluate``, ``evaluate``, ``exact2x2``, ``exactci``, ``fansi``, ``fdrtool``, ``forcats``, ``foreign``, ``Formula``, ``gdata``, ``GGally``, ``ggm``, ``ggplot2``, ``ggridges``, ``glasso``, ``glue``, ``gnm``, ``GPArotation``, ``gplots``, ``graphics``, ``grDevices``, ``grid``, ``gridExtra``, ``gtable``, ``gtools``, ``haven``, ``highr``, ``Hmisc``, ``hms``, ``htmlTable``, ``htmltools``, ``htmlwidgets``, ``huge``, ``hypergeo``, ``igraph``, ``jmv``, ``jmvcore``, ``jpeg``, ``jsonlite``, ``KernSmooth``, ``knitr``, ``kutils``, ``labeling``, ``lattice``, ``latticeExtra``, ``lavaan``, ``lazyeval``, ``lisrelToR``, ``lme4``, ``lmerTest``, ``lmtest``, ``magrittr``, ``maptools``, ``markdown``, ``MASS``, ``Matrix``, ``matrixcalc``, ``MatrixModels``, ``methods``, ``mgcv``, ``mi``, ``mime``, ``minqa``, ``mnormt``, ``multcomp``, ``munsell``, ``mvnormtest``, ``mvtnorm``, ``nlme``, ``nloptr``, ``nnet``, ``numDeriv``, ``OpenMx``, ``openxlsx``, ``parallel``, ``pbapply``, ``pbivnorm``, ``pbkrtest``, ``pillar``, ``pkgconfig``, ``pkgconfig``, ``plogr``, ``plyr``, ``PMCMR``, ``png``, ``praise``, ``prettyunits``, ``progress``, ``psych``, ``purrr``, ``qgraph``, ``quantreg``, ``qvcalc``, ``R6``, ``RColorBrewer``, ``Rcpp``, ``RcppArmadillo``, ``RcppEigen``, ``RCurl``, ``readr``, ``readxl``, ``regsem``, ``relimp``, ``rematch``, ``reshape``, ``reshape2``, ``RInside``, ``rio``, ``Rj``, ``rjson``, ``rlang``, ``rockchalk``, ``ROCR``, ``rpart``, ``rpf``, ``RProtoBuf``, ``Rsolnp``, ``rstudioapi``, ``RUnit``, ``Sandwich``, ``Scales``, ```sem``, ```semPlot``, ```semTools``, ``sp``, ``SparseM``, ``spatial``, ``Splines``, ``ssanv``, ``StanHeaders``, ``stats``, ``stats4``, ``stringi``, ``stringr``, ```survival``, ``tcltk``, ``testthat``, ``TH.data``, ``tibble``, ``tidyselect``, ``tools``, ``truncnorm``, ``utf8``, ``utils``, ``vcd``, ``vcdExtra``, ``vctrs``, ``viridis``, ``viridisLite``, ``whisker``, ``withr``, ``xfun``, ``XML``, ``xtable``, ``yaml``, ``zeallot``, ``zip``, ``zoo``. Dies öffnet ein Eingabe-Panel auf der linken Seite, in dem Sie R-Befehle eintippen (oder kopieren) können. Sie können auf Ihren (gegenwärtig in jamovi geöffneten) Datensatz mit der Variable ``data`` zugreifen. Die erste Zeile wählt die ersten drei Spalten / Variablen dieses Datensatzes aus. Alternativ können Sie auch Variablennamen verwenden, wie in der zweiten Zeile gezeigt.
.. code-Block: R
  summary(data[1:3])
  summary(data[, c('var1', 'var2', 'var3')]) jamovi / Rj enthält auch mehrere von Hadley Wickhams |tidyverse|_-Bibliotheken, z. B. |dplyr|_, |stringr|_ oder |tidyselect|_ |BayesFactor|_ erlaubt Ihnen verschiedene Arten von Bayes-Analysen durchzuführen, um „klassische“ (frequentistische) statistische Analysen zu ergänzen (z.B. das Bayes-Äquivalent des t-Tests; NB: die meisten Analysen sind im jamovi-Modul ``jsq`` implementiert, und daher ist oft einfacher, die Analysen in diesem Modul zu verwenden) |MASS|_ implementiert Analysen aus dem berühmten Buch „Modern Applied Statistics with S“ von Venables und Ripley (dazu gehört z. B. die lineare Diskriminanzanalyse ``MASS::lda``) |cluster|_ um verschiedene Arten von Clusteranalysen durchzuführen |ggplot2|_ um (fast) jede Art von ausgefallenen `Diagrammen / Plots <http://www.ggplot2-exts.org/gallery/>`__ zu erzeugen, die Sie sich vorstellen können |lavaan|_ erlaubt das Durchführen einer Vielzahl von Analysen mit latenten Variablen (u. a. konfirmatorische Faktorenanalyse, Strukturgleichungsmodelle und *latent growth curve models*) |lme4|_ erlaubt das Berechnen von *Linear Models*, *Generalized Linear Models* und *Nonlinear Mixed Models* |stats|_, um Zugriff auf eine Vielzahl statistischer Analysen zu erhalten (z.B. ``stats::glm`` für Generalized Linear Models oder ``stats:kmeans`` für die Durchführung von k-means-Clusteranalysen) 
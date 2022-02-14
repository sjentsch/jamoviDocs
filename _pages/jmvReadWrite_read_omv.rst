.. sectionauthor:: `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

=============================================
Read files created with jamovi (``read_jmv``)
=============================================

Description
-----------

Read files created of the statistical spreadsheet `jamovi <www.jamovi.org>`__.

Usage
-----

.. code-block:: R

   read_omv(
       fleInp = "",
       useFlt = FALSE,
       rmMsVl = FALSE,
       sveAtt = TRUE,
       getSyn = FALSE,
       getHTM = FALSE
   )

Arguments
---------

+------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| ``fleInp`` | Name (including the path, if required) of the 'jamovi'-file to be read (``"FILENAME.omv"``; default: "")                                |
+------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| ``useFlt`` | Apply filters (remove the lines where the filter is set to 0; default: ``FALSE``)?                                                      |
+------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| ``rmMsVl`` | Remove values defined as missing values (replace them with NA; default: ``FALSE``)?                                                     |
+------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| ``sveAtt`` | Store attributes that are not required in the data set (if you want to write the same data set using ``write_omv``; default: ``TRUE``)? |
+------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| ``getSyn`` | Extract syntax from the analyses in the 'jamovi'-file and store it in the attribute ``"syntax"`` (default: ``FALSE``)?                  |
+------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| ``getHTM`` | Store index.html in the attribute ``"HTML"`` (default: FALSE)?                                                                          |
+------------+-----------------------------------------------------------------------------------------------------------------------------------------+

Output
------

data frame (can be directly used with functions included in the R-package 'jmv' and syntax from 'jamovi'; also compatible with the format of the R-package
"foreign")

Examples
--------

.. code-block:: R
  
   library(jmvReadWrite);
     fleOMV <- system.file("extdata", "ToothGrowth.omv", package = "jmvReadWrite");
     data <- read_omv(fleInp = fleOMV, getSyn = TRUE);
     # if the syntax couldn't be extracted, an empty list - length = 0 - is returned,
     # otherwise, the commands are shown and the first analysis is run, with the output
     # from the second analysis being assigned to the variable result
     if (length(attr(data, 'syntax')) >= 1) {
         print(attr(data, "syntax"));
         # the print-function is only used to force devtools::run_examples() to show output
         eval(parse(text=paste0('result = ', attr(data, 'syntax')[[1]])));
         # without assigning the output to a variable, the command would be:
         # eval(parse(text=attr(data, 'syntax')[[1]]))
         print(names(result));
         print(result$main);
         # -> "main"      "assump"    "contrasts" "postHoc"   "emm"       "residsOV"
         # (the names of the six output tables)
     }

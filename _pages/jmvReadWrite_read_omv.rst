.. sectionauthor:: `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

=============================================
Read files created with jamovi (``read_jmv``)
=============================================

Description
-----------

Read files created of the statistical spreadsheet `jamovi 
<www.jamovi.org>`__.

Usage
-----

.. code-block:: r

   jmvRead(fleNme = "", useFlt = FALSE, rmMsVl = FALSE, sveAtt = FALSE)

Arguments
---------

+------------+--------------------------------------------------------+
| ``fleNme`` | name of the 'jamovi' file to be read ("FILENAME.omv";  |
|            | default = "")                                          |
+------------+--------------------------------------------------------+
| ``useFlt`` | apply filters (remove the lines where the filter is    |
|            | set to 0; default: FALSE)                              |
+------------+--------------------------------------------------------+
| ``rmMsVl`` | remove values defined as missing values (replace them  |
|            | with NA; default - FALSE)                              |
+------------+--------------------------------------------------------+
| ``sveAtt`` | store attributes that are not required in the data set |
|            | (if you want to write the same data set using          |
|            | jmvWrite; default – FALSE)                             |
+------------+--------------------------------------------------------+

Output
------

data frame (can be directly used with functions included in the
R-package 'jmv' and syntax from 'jamovi'; also compatible with the
format of the R-package "foreign")

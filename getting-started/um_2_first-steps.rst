.. sectionauthor:: Jonathon Love

The first steps in jamovi
=========================

   When first starting jamovi, you will be presented with a user
   interface which looks something like this.

   |screenshot|

   To the left is the spreadsheet view, and to the right is where the
   results of statistical tests appear. Down the middle is a bar
   separating these two regions, and this can be dragged to the left or
   the right to change their sizes.

   It is possible to simply begin typing values into the jamovi
   spreadsheet as you would any other spreadsheet software.
   
   Alternatively, existing data sets in a range of formats (CSV, Excel,
   LibreOffice, R, SPSS, Stata, SAS, JASP) can be opened in jamovi.
   Additionally, there are a number of example data sets available in jamovi.
   To open a file, select the file menu (☰, at the top left hand corner of
   jamovi), select ``Open`` and then ``Data library`` or ``This PC``,
   depending on whether you want to open an example, or a file stored
   on your computer.

   |csv-data|

   A very common format for exchanging data is using files with “comma-
   separated values” (.csv or .txt). Given that these data are stored as simple
   text file using commas (or ";", "|", etc.) to separate values nearly any
   software package can read and write them (and you to can take a look using
   any text editor). An example is shown in the figure. The first line contains
   the variable names and any other line afterwards a measurement point
   (typically a person where data were acquired from). If you have your data in
   a spreadsheet program (e.g., Excel), you can create a CSV-file from your
   data by selecting ``File`` → ``Save as...`` and choose ``Comma delimited``
   in the drop-down menu close to the ``Save as``-button. Thereafter, you may
   open the CSV-file in jamovi.
  
   If jamovi does not open a file correctly, do file an issue (bug report) in
   our GitHub `issue tracker <https://github.com/jamovi/jamovi/issues>`__.
   We are keen to make our importer as robust as possible.


Analyses
========

   Analyses can be selected from the analyses ribbon or menu along the top.
   Selecting an analysis will present an “options panel” for that particular
   analysis, allowing you to assign different variables to different parts of
   the analysis, and select different options. At the same time, the results
   for the analysis will appear in the right “results panel”, and will update
   as you make changes to the options.

   When you have the analysis set up correctly, you can dismiss the analysis
   options by clicking the arrow to the top right of the options panel. If you
   wish to return to these options, you can click on the results that were
   produced. In this way, you can return to any analysis that you (or say, a
   colleague) created earlier.

   If you decide you no longer need a particular analysis, you can remove it
   with the results context menu. Right-clicking on the analysis results will
   bring up a menu, and by selecting ``Analysis``, and then ``Remove``, the
   analysis can be removed.

   |analysis|
   
   An overview with short, non-technical tutorials on how to do common
   procedures in jamovi can be found under `jamovi-guide <jg_0_welcome.html>`__
   (later in this section).


The Spreadsheet
===============

   In jamovi, data is represented in a spreadsheet, with each column
   representing a “variable”.

Data Variables
--------------

   The most commonly used variables in jamovi are “Data Variables”, these
   variables simply contain data either loaded from a data file, or “typed in”
   by the user. Data variables can be one three data types:

   -  ``Integer``
   -  ``Decimal``
   -  ``Text``

   and one of four measure types:

   -  |nominal|    ``Nominal``
   -  |ordinal|    ``Ordinal``
   -  |continuous| ``Continuous``
   -  |id|         ``ID``

   The measure types are designated by the symbol in the header of the
   variable’s column. Note that some combinations of data-type and measure-
   type don’t make sense, and jamovi won’t let you choose these.

   ``Nominal`` and ``Ordinal`` are, predictably, for nominal and ordinal 
   variables. ``Continuous`` is for variables with numeric values which are
   considered to be *Interval* or *Ratio* scales (Equivalent to ``Scale`` in
   SPSS). The ``ID`` measure type is, unlike the others, unique to jamovi. It’s
   intended for variables that contain identifiers that you would almost never
   want to analyse. For example, a persons name, or a participant ID. The
   advantage of IDs, is that jamovi does not need to maintain a list of levels
   internally, which can improve performance when interacting with very large
   data sets.

   When starting with a blank spreadsheet and typing values in, the data and
   measure types will change automatically depending on the data you enter.
   This is a good way to get a feel for which variable types go with which
   sorts of data. Similarly, when opening a data file, jamovi will infer the
   variable type from the data in each column. In both cases, this automatic
   approach may not be correct, and it may be necessary to manually specify the
   data and measure type with the variable editor.

   The variable editor can be invoked by selecting ``Setup`` from the ``Data``
   tab, double-clicking on the column header, or by pressing ``F3``. The
   variable editor allows you to change the name of the variable, and (for data
   variables) the data type, the measure type, the order of the levels, and the
   label displayed for each level. The variable editor can be dismissed by
   clicking the close arrow, or by pressing ``F3`` again.

   |change-name|

   New variables can be inserted or appended to the data set using the ``Add``
   button from the data ribbon. The ``Add`` button also allows the addition of
   *Computed variables*.


Computed Variables
------------------

   Computed Variables are those which take their value by performing a
   computation on other Variables. Computed Variables can be used for a range
   of purposes, including log transforms, z-scores, sum-scores, negative
   scoring and means.

   *Computed variable*\ s can be added to the data set, with the ``Add`` button
   available on the data tab. This will produce a formula box where you can
   specify the formula. The usual arithmetic operators are available. Some
   examples of formulas are:

   .. code-block:: text
   
      A + B
      LOG10(len)
      MEAN(A, B)
      (dose - VMEAN(dose)) / VSTDEV(dose)
      Z(dose)

   In order, these are the sum of A and B, a log (base 10) transform of
   ``len``, the mean of ``A`` and ``B``, and the z-score of ``dose``
   (twice).

   There are many more functions available.

``V``-functions
~~~~~~~~~~~~~~~

   A number of functions appear in pairs, one prefixed with a ``V`` and
   the other not. ``V`` functions perform their calculation on a
   variable *as a whole*, where as non-``V`` functions perform their
   calculation row by row. For example, ``MEAN(A, B)`` will produce the
   mean of ``A`` and ``B`` for each row. Where as ``VMEAN(A)`` gives the
   mean of *all* the values in ``A``.

   Additionally ``V`` functions support a ``group_by`` argument (in
   \0.9.6 and up). When a ``group_by`` variable is specified, a separate
   value is calculated for each level of the ``group_by`` variable. In
   the following example:

   .. code-block:: text
      
      VMEAN(len, group_by=dose)

   A separate mean is calculated for each level of ``dose``, and each
   value in the computed variable will be the mean corresponding to it’s
   row’s value of ``dose``.

Recoded Variables
-----------------

   Transformed and recoded variables are also available. See this `blog
   post <https://blog.jamovi.org/2018/10/23/transforming-variables.html>`__
   for details.

Filters
-------

   Filters in jamovi allow you to filter out rows that you don’t want included
   in your analysis. For example, you might want to only include people’s
   survey responses if they explicitly consented to having their data used, or
   you might want to exclude all left-handed people, or perhaps people who
   score “below chance” in an experimental task. In some cases you just want to
   exclude extreme scores, for example those that score more than 3 standard
   deviations from the mean.

   The filters in jamovi are build on top of jamovi’s *computed variable*
   formula system, which allows the building of arbitrarily complex formulas.

   More details about filters are covered in this `blog post
   <https://blog.jamovi.org/2018/04/25/jamovi-filters.html>`__

Updating data
=============

   Once a data set is set up with filters, computed variables, transforms and
   analyses, sometimes you may want to update the data. This may be for a
   number of reasons – It might be that you have a new data set, that you want
   to apply the analyses you performed earlier to it, or you may be conducting
   an experiment where you’re tesing a number of participants, and you now have
   an additional participant’s data to analyse. By importing into an existing
   data set you can re-run your analyses without having to re-perform all of
   your data cleaning and analysis steps (making your jamovi files behave a bit
   like scripts).

   For a video introduction to import and templates in jamovi, see this `blog
   post <https://blog.jamovi.org/2019/03/27/import.html>`__.

Single-file Import
------------------

   Import is available from the file menu (☰) at the top left of jamovi. When
   you import a file into an existing data set, the following operations are
   performed:

   #. All the rows of the existing data set are deleted.
   #. All the (original) names of the existing columns are matched to
      the names of the columns from the new data set.
   #. The new values are imported to the existing columns, *keeping* the
      data and measure types from the existing data set.
   #. The new columns which did not match names in the original data set
      are appended to the right of the data set.

   If no new column matches the column names in the existing data set, then
   those columns are left blank.

   Following a file import, all the filters, computed variables, transforms and
   analyses update.

Multi-file Import
-----------------

   It is also possible to import multiple files at once. This can be useful
   when you are combining multiple data sets, for example, where each file
   represents a participant. The process is the same as the single-file import
   detailed above, except that you select multiple files when performing the
   import. You can do this by holding down control or shift when selecting data
   files, or with the “multi-select” button at the top of the import dialog.

   When importing multiple files like this, they are combined vertically with
   the rows of the second file appearing below the first, the rows of the third
   file appearing below the second, and so on. An additional column called
   ``source`` is created detailing which file each row has come from. This can
   be useful when you need to “split-by” or “group-by” each participant. This
   column can be particularly useful to use with the ``group_by`` argument to
   ``V``-functions described above.

   At present, there is no way to combine files horizontally in jamovi.

Templates
---------

   Templates in jamovi are special data sets that are analagous to script files
   in more traditional statistical environments. They are a way to specify data
   types, computations, filters, transforms, and analyses in advance. Once the
   data becomes available, it can be imported into the template, and the
   template will update accordingly. The nice thing about jamovi templates is
   that they are entirely specified with the familiar user interface, and do
   not require working with a “syntax” or code.

   To save a data set as a template, select ``Export`` from the file menu, and
   select ``jamovi template (.omt)`` from the file type box. When opening a
   template, you’ll see it contains columns but no rows, and that all the
   analysis results are blank. To use the template, import a new data set (or
   data sets) using the file import described above. The data will update,
   followed by the filters, computed variables, and finally the analysis
   results.

   jamovi templates are also a great way to provide analyses to less capable
   students or colleagues.

Copy and Paste
==============

   jamovi produces nice APA formatted tables, and attractive plots. It is often
   useful to be able to copy and paste these, perhaps into a Word document, or
   into an email to a colleague. To copy results, right click on the object of
   interest, and from the menu select exactly what you want to copy. The menu
   allows you to choose to copy, say only the image, or the entire analysis.
   Selecting copy, copies the content to the clipboard, and can be pasted into
   the other program in the usual way.

   |copy-paste|

Syntax Mode
===========

   jamovi also provides an “R Syntax Mode”, in this mode, jamovi produces
   equivalent R code for each analysis. To change to syntax mode, select the
   application menu (⋮) at the top right of jamovi, and check the ``Syntax
   mode`` checkbox there. It is possible to leave syntax mode by clicking this
   a second time.

   In syntax mode, analyses continue to operate as before, but now they produce
   R syntax, and “ASCII output” like an R session. Like all results objects in
   jamovi, you can right click on these items (including the R syntax) and copy
   and paste them, for example, into an R session.

   |r-syntax|

   At present, the provided R syntax does not include the data import step, and
   this must be performed manually. There are many resources explaining how to
   import data into R, and we recommend you take a look at these (Most analyses
   in jamovi require data as a data frame).

   Another R feature that may be of interest is the `Rj module 
   <https://blog.jamovi.org/2018/07/30/rj.html>`__, which allows you to use R
   code to analyse data directly in jamovi.

.. ---------------------------------------------------------------------

.. |screenshot|          image:: ../_images/um_screenshot.png
   :width: 100%
.. |csv-data|            image:: ../_images/jg_csv_data.png
   :width: 40%
.. |analysis|            image:: ../_images/um_analysis.*
   :width: 100%
.. |nominal|             image:: ../_images/variable-nominal.*
   :width: 16px
.. |ordinal|             image:: ../_images/variable-ordinal.*
   :width: 16px
.. |continuous|          image:: ../_images/variable-continuous.*
   :width: 16px
.. |id|                  image:: ../_images/variable-id.*
   :width: 16px
.. |change-name|         image:: ../_images/um_changeName.*
   :width: 100%
.. |copy-paste|          image:: ../_images/um_copyPaste.*
   :width: 100%     
.. |r-syntax|            image:: ../_images/um_rSyntax.*
   :width: 100%

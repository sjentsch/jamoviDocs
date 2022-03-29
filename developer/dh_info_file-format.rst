.. sectionauthor:: `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

=============================
jamovi File Format (``.omv``)
=============================

jamovi files are ZIP-archives that contain a number of files.

- ``META-INF/MANIFEST.MF``
- ``metadata.json``
- ``xdata.json``
- ``data.bin``
- ``strings.bin`` (optional: if an variable with the ``measureType`` = ``ID`` and the ``dataType`` = ``Text`` exist in the data set)
- ``index.html``
- (optional: if analyses were conducted and are stored in the .omv-file, there are subfolders, one for each analysis, containing, e.g., figures and the syntax
  for the analysis)

The ``metadata.json``-file is the most useful starting point when trying to decode ``.omv``-files, at least if one is interested in, e.g., importing the data.
There exists already a package ``jmvReadWrite`` on CRAN if ones interest is reading or writing ``.omv``-files in R.

However, sometimes, one is only interested in having a brief look at results. In such case, it is sufficient to extract the ``.omv``-file (typically with
right-clicking and choosing "Extract..."). Afterwards, just go into the folder that was extracted and click on ``index.html``.


``META-INF/MANIFEST.MF``
------------------------

The manifest file contains four lines defining what version of the data and the jamovi archive were used to create the ``.omv``-file. An example of the content
is shown below.

.. code-block:: text
   
   Manifest-Version: 1.0
   Data-Archive-Version: 1.0.2
   jamovi-Archive-Version: 11.0
   Created-By: jamovi 2.2.3.0
   
.. TO-ADD
   Provide a more detailed description of what distinguishes the different
   versions numbers of the data and jamovi archives.


``metadata.json``
-----------------

The file is stored in JSON (JavaScript Object Notation) which is a lightweight data-interchange format. It is quite similar to YAML (but unfortunately a little
less easy to read). However, there are several packages that permit to import or export JSON, e.g., rjson inside R. Inside the ``metadata.json``-file, the name
of the top level hierarchy is ``dataSet``. This top-level hierarchy contains the following branches:

-  | ``rowCount``: number of rows in the data set

-  | ``columnCount``: number of rows in the data set

-  | ``removedRows``: positions where rows were removed (default: empty)
   | there can be several lists with pairs of ``index`` and ``count`` under ``removedRows`` (if rows were removed at different positions in the data file)

   -  | ``index``: line where lines where removed (after this line)
   -  | ``count``: number of removed lines

-  | ``addedRows``: positions where rows were added (default: empty)
   | there can be several lists with pairs of ``start`` and ``end`` under ``addedRows`` (if new rows were added at several positions in the data file) 

   -  | ``start``: line from where lines where removed (after this line)
   -  | ``end``: line from where lines where removed (up to this line)

-  | ``fields``: contains description for every data column (one field per each column)

   -  | ``name``: column name
   -  | ``id``: column id (numerical; unique column number)
   -  | ``columnType``: content that is contained in the column
      | ``Data`` (default), ``Computed``, ``Recoded``, ``Filter``
   -  | ``dataType``: `type of data <../usermanual/um_4_spreadsheet.html#data-variables>`__ contained in the column
      | ``Integer`` (default), ``Decimal``, ``Text``
   -  | ``measureType``: `scale level <../usermanual/um_4_spreadsheet.html#data-variables>`__ of the data in the column
      | ``ID``, ``Nominal`` (default), ``Ordinal``, ``Continuous``, ``None``
   -  | ``formula (for Computed Variables)``: formula used for calculations or filters (default: "")
   -  | ``formulaMessage``: error message for malformed formulas (default: "")
   -  | ``parentId``: ID of the parent object (default: 0)
   -  | ``width``: column width in the jamovi data editor (default: 100)
   -  | ``type``: variable class used to store the data in the binary file
      | ``integer``: 4 byte per cell, data type: long integer
      | ``number``:  8 byte per cell, data type: double
      | ``string``:  C-style zero-terminated character strings
      | generally are data read from ``data.bin`` with text data stored as ``integer`` and the text containedas variable levels contained in ``xdata.json``;
        there is one exception, though, which is if an variable with the ``measureType`` = ``ID`` is a text variable 
   -  | ``importName``: name of the column when it was originally imported
      | (default: same as "name"; "" if created new)
   -  | ``description``: variable description / label (default: "")
   -  | ``transform``: for transformed variables?
   -  | ``edits``: marks which rows in the table where edited (can contain several ranges as those listed below)
      | ``start`` (row)
      | ``end`` (row)
   -  | ``missingValues``: contains a list with strings containing which values are defined as missing values (default: empty); an entry could look like 
        "== '0'" defining the '0' as a missing value; there can be several such entries if more than one value is defined as indicating a missing value
   -  | ``trimValues``: TRUE / FALSE (retain unused levels – trimValues``: T doesn’t retain them)
   -  | ``filterNo`` (only columnType ``Filter``): unique ID for the filter
   -  | ``active`` (only columnType ``Filter``): TRUE / FALSE (filter active)

-  | ``transforms``: contains a description for every transformation rule (those rules can be applied to several columns)

   -  | ``name``: name of the transformation rule (e.g., "Transform 1")
   -  | ``id``: transformation id (numerical; unique number for the transformation)
   -  | ``suffix``: ? (default: "")
   -  | ``formula``: formula for the transformation (e.g., "MATCH($source, 'VC', 'OJ')")
   -  | ``formulaMessage``: error message if the calculation of the transformation failed
   -  | ``measureType``: scale level of the transformation
      | ``ID``, ``Nominal``, ``Ordinal``, ``Continuous``, ``None`` (default)
   -  | ``description``: variable description / label (default: "")


``xdata.json``
--------------

This file also uses JSON-format. The file contains value-label-combinations. Each variable containing variable labels has an entry with the name of the
variable as a branch name. This branch then contains the entries for the labels.

-  | ``variable name``: variable name, matches a column ``name`` in the data frame

   -  | ``labels``: contains a list with three values for each value labels
      | (e.g., [1, 'Females', 'Females']); there is one entry for each value-label-comination (i.e, there likely would be a second entry with, e.g.
        [2, 'Males', 'Males'])

.. If you have text data, jamovi stores them as numerical (


``data.bin``
------------

This file contains the data matrix that you can see in your jamovi-spreadsheet stored as binary data. Data are organized as columns. The arrangement of columns
follows the order of the fields in ``metadata.json`` (the value of ``name`` of the field is the column name).

In order to read data from the binary file, one needs to iterate through each column, determine as as which variable ``type`` the data are stored: ``integer``
(long, 4 byte) or ``numeric`` (double, 8 bytes), and then to read the data from the column by repeating reading the number of rows (``rowCount``). Often the
functions to read binary data let you give the number of occurences so that you can read a column at once.

.. code-block:: R

   if        (mtaDta$dataSet$fields[[i]]$type == 'integer') { 
       colRaw = readBin(binHdl, integer(), n = rowNum)
   } else if (mtaDta$dataSet$fields[[i]]$type == 'number') { 
       colRaw = readBin(binHdl,  double(), n = rowNum)
   } else if (mtaDta$dataSet$fields[[i]]$type == 'string') { 
       colRaw = as.data.frame(readBin(strHdl, character(), n = rowNum))
                              readBin(binHdl,   integer(), n = rowNum)
   }

The R-code above demonstrates the steps during reading: ``i`` counts over the columns, and determines from the ``type`` of each ``field`` of the ``dataSet``
contained in ``metadata.json`` (here assigned to the variable ``mtaDta``) what type (either ``integer()`` or ``double()`` has to be read. ``n =`` permits to
define the number of repetitions (how many cells). It is set to ``rowNum`` (which contains the value of ``rowCount``).

The condition where ``type`` is ``string`` is a very special one and happens rarely. One has in this case to read the C-style zero-terminated character strings
from the ``strings.bin``-file and at the same time has to discard the respective column (containing ``integer()``-values) from the ``data.bin``-file.


``index.html``
--------------

As mentioned above, the ``index.html`` can be obtained from extracting the ``.omv``-file of interest and the opening it in a browser. This should match the
output that you can see in the right-hand panel with the results in jamovi. There might be tiny differences though (e.g., comments that you can create with
jamovi [version 1.4 or above] might not show, etc.). Remember that you have to extract all files (not only ``index.html``) if you want to see the figures as
well.

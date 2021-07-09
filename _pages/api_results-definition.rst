.. sectionauthor:: Jonathon Love

======================================
Results Definition (``.r.yaml`` files)
======================================

(work in progress)

Overview
--------

The results definition is a yaml file in the ``jamovi/`` directory, with
the extension ``.r.yaml``. the results definition describes the results
produced by the analysis. the file is named to match the name of the
analysis, but converted to lowercase. an example is ``ttestis.r.yaml``:

.. code-block:: yaml

   - name: TTestIS
     title: Independent Samples T-Test
     jrs: '1.0'
     items:
     - name: ...
       type: ...
     - name: ...
       type: ...

+----------------+-----------------------------------------------------+
| property       | function                                            |
+================+=====================================================+
| name           | the name of the analysis. must correspond to the    |
|                | filename.                                           |
+----------------+-----------------------------------------------------+
| title          | the title to display at the top of the results.     |
+----------------+-----------------------------------------------------+
| jrs            | the ``jamovi results spec``. should be ‘1.0’. must  |
|                | be wrapped in quotes to prevent it being            |
|                | interpretted as a number.                           |
+----------------+-----------------------------------------------------+
| items          | an array of results elements that make up the       |
|                | results. these are described in greater detail      |
|                | below.                                              |
+----------------+-----------------------------------------------------+

Results
-------

each results element has the following properties:

-  name
-  type
-  title
-  visible: ``true``
-  clearWith: ``*``

different results element types have different additional properties.

The different results element types are as follows:

Preformatted
~~~~~~~~~~~~

Preformatted represents the simplest of results elements. it is simply a
block of preformattd text.

it has no additional properties.

Table
~~~~~

Table is the most common result element in the results from jamovi
analyses. Tables are represented as rich HTML tables in jamovi, and as
nicely formatted ascii tables in an interactive R session.

It can have the following properties:

+-------------------+--------+----------------------------------------+
| property          | d      | description                            |
|                   | efault |                                        |
+===================+========+========================================+
| columns           |        | an array of columns objects, see below |
+-------------------+--------+----------------------------------------+
| rows              | ``0``  | an integer specifying the number of    |
|                   |        | rows, or a data-binding where one row  |
|                   |        | is created per element of the bound    |
|                   |        | value                                  |
+-------------------+--------+----------------------------------------+
| swapRowsColumns   | ``f    | whether the rows and columns should be |
|                   | alse`` | swapped                                |
+-------------------+--------+----------------------------------------+
| notes             | `      | an array of strings which appear as    |
|                   | `[ ]`` | additional notes in the footnotes of   |
|                   |        | the table.                             |
+-------------------+--------+----------------------------------------+

Column
^^^^^^

Columns within a table can have the following properties:

+--------------+----------+--------------------------------------------+
| property     | default  | description                                |
+==============+==========+============================================+
| name         |          | the name of the column, a string           |
+--------------+----------+--------------------------------------------+
| title        |          | the title that appears at the top of the   |
|              |          | column                                     |
+--------------+----------+--------------------------------------------+
| type         | ``       | either ``number`` (aligned right),         |
|              | number`` | ``integer`` (aligned right, displayed to   |
|              |          | zero decimal places) or ``text`` (aligned  |
|              |          | left)                                      |
+--------------+----------+--------------------------------------------+
| format       |          | (optional) a string with comma separated   |
|              |          | values; ``zto``, ``pvalue``                |
+--------------+----------+--------------------------------------------+
| content      |          | (optional) the content to appear in the    |
|              |          | cells of the column.                       |
+--------------+----------+--------------------------------------------+
| visible      | ``true`` | ``true``, ``false`` or a data-binding. the |
|              |          | column will be visible if the bound value  |
|              |          | isn’t ``false`` or ``null``                |
+--------------+----------+--------------------------------------------+
| superTitle   |          | (optional) a title to appear above the     |
|              |          | title of the column                        |
+--------------+----------+--------------------------------------------+
| combineBelow | `        | if multiple adjacent cells in the column   |
|              | `false`` | contain the same value, they will be       |
|              |          | combined into a single cell                |
+--------------+----------+--------------------------------------------+

Image
~~~~~

Images can have the following properties:

-  width
-  height
-  renderFun
-  requiresData

Group
~~~~~

Groups can have the following properties:

-  items

Array
~~~~~

Arrays can have the following properties:

-  items
-  template

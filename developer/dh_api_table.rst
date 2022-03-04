.. sectionauthor:: Jonathon Love

===================================
Assign results to tables (in ``R``)
===================================

   This document describes the properties and methods of a jamovi ``table``-object.

   The values of properties can be accessed using the ``$`` operator, followed by the name. For example, to retrieve the title of a table, one can go:

   .. code-block:: R

      table$title


   The methods of a table object are called using the ``$`` operator as well. For example:

   .. code-block:: R

      table$setRow(rowKey=1, values=list(t=2.3, df=2, p=0.45))


   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | **Property**                       | Description                                                                                                         |
   +====================================+=====================================================================================================================+
   | ``name``                           | A string specifying the name of the table.                                                                          |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``title``                          | A string specifying the title of the table.                                                                         |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``visible``                        | Whether the table is visible or not (``true`` or ``false``, default: ``true``).                                     |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``status``                         | The status of the table. A string, one of ``complete``, ``error``, ``inited``, ``running``.                         |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``rowKeys``                        | A list of ‘keys’.                                                                                                   |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``state``                          | The state of the table.                                                                                             |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+


   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | **Method**                         | Description                                                                                                         |
   +====================================+=====================================================================================================================+
   | ``setStatus(status)``              | Sets the table’s status, should be one of ``complete``, ``error``, ``inited``, ``running``.                         |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``setVisible(visible=TRUE)``       | Overrides the tables default visibility.                                                                            |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``setTitle(title)``                | Sets the table’s title.                                                                                             |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``setError(message)``              | Sets the table’s status to ‘error’, and assigns the error message.                                                  |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``setState(object)``               | Sets the state object on the table.                                                                                 |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``addColumn(name, …)``             | Adds a new column to the table.                                                                                     |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``addRow(rowKey, values)``         | Adds a row to the table. ``rowKey`` is an object which uniquely identifies the row – for many cases, simply         |
   |                                    | providing the index is sufficient. ``values`` is a named list with the values to place in the cells of that row.    |
   |                                    | The names must correspond to the column names. Not all column values must be provided, and if a blank row is        |
   |                                    | desired, the values argument can be omitted entirely. A more detailed description of possible values is given in    |
   |                                    | the table below.                                                                                                    |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``deleteRows()``                   | Deletes all the rows in the table.                                                                                  |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``setRow(rowKey, values)``         | Sets the values in an existing row. ``rowKey`` is a key uniquely identifying the row, ``rowNo`` is a number         |
   | ``setRow(rowNo, values)``          | specifying the row number. Either of these two options has to be used. ``values`` is a named list of values. The    |
   |                                    | names must correspond to the column names. Not all column values need to be provided.                               |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``setCell(rowKey, col, value)``    | Sets the value of a cell. Generally ``setRow()`` is more efficient.                                                 | 
   | ``setCell(rowNo, col, value)``     |                                                                                                                     |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``getCell(rowKey, col)``           | Retrieves a cell.                                                                                                   |
   | ``getCell(rowNo, col)``            |                                                                                                                     |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``addFormat(rowKey, col, format)`` | Adds additional formatting to a cell. ``col`` can be an index or a name. Format can be one of: ``Cell.BEGIN_GROUP``,|
   | ``addFormat(rowNo, col, format)``  | ``Cell.END_GROUP``, ``Cell.BEGIN_END_GROUP`` or `Cell.NEGATIVE``. ``Cell.BEGIN_GROUP`` adds additional padding      |
   |                                    | above the cell, ``Cell.END_GROUP`` below. Cell.NEGATIVE colours the value red.                                      |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``addFootnote(rowKey, col, note)`` | Adds a footnote to the cell.                                                                                        |
   | ``addFootnote(rowNo, col, note)``  |                                                                                                                     | 
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``addSymbol(rowKey, col, symbol)`` | Adds a symbol to a cell – for example an asterisk denoting significance.                                            |
   | ``addSymbol(rowNo, col, symbol)``  |                                                                                                                     | 
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+
   | ``setNote(key, note, init=TRUE)``  | ``setNote()`` adds (or clears) a note placed in the footer of the table. ``key`` is a string identifying the note,  |
   |                                    | ``note`` is a string representing the text of the note (or NULL), ``init`` indicates whether this be considered an  |
   |                                    | ``init`` note. Specifying a ``note`` of NULL causes the note to be removed.                                         |
   |                                    | ``init`` notes are those that are added during the *init* phase. ``init`` notes are typically based on the values   |
   |                                    | the options. For example, if the user has specified an alternative hypothesis — that population one is greater than |
   |                                    | of population two — the analysis could add a note indicating this. In contrast, ``non-init`` notes are created in   |
   |                                    | the *run* phase. An example might be the number of subjects that were excluded from the analysis as a result of     |
   |                                    | containing missing values. ``init`` notes are typically based on the values of options, where as ``non-init`` notes |
   |                                    | depend on the data.                                                                                                 |
   |                                    | In practice, when an analysis is changed or re-run, ``init`` notes are not restored from state; they are simply     |
   |                                    | recreated during the ``init`` phase. In contrast, ``non-init`` notes are restored from state.                       |
   |                                    | Note that if the text of the note will always be the same, it is recommended to set the note in the |ryaml|_-file   |
   |                                    | instead.                                                                                                            |
   +------------------------------------+---------------------------------------------------------------------------------------------------------------------+


   The following arguments are possible for ``addColumn``:

   +------------------+-----------------+---------------------------------------------------------------------------------------------------------------------+
   | Argument         | Type            | Description                                                                                                         |
   +==================+=================+=====================================================================================================================+
   | ``name``         | string          | The name of the column                                                                                              |
   +------------------+-----------------+---------------------------------------------------------------------------------------------------------------------+
   | ``index``        | integer         | The index to insert the column at. If unspecified, the column is appended.                                          |
   +------------------+-----------------+---------------------------------------------------------------------------------------------------------------------+
   | ``title``        | string          | The title to appear at the top of the column. If unspecified, the name is used.                                     |
   +------------------+-----------------+---------------------------------------------------------------------------------------------------------------------+
   | ``superTitle``   | string          | The title to appear above column titles.                                                                            |
   +------------------+-----------------+---------------------------------------------------------------------------------------------------------------------+
   | ``visible``      | |trFl| / string | Whether the column should be visible. If a string is specified, this must be a data-binding to an option.           |
   +------------------+-----------------+---------------------------------------------------------------------------------------------------------------------+
   | ``content``      | string          | Either a string that will be placed in every cell, or a data-binding.                                               |
   +------------------+-----------------+---------------------------------------------------------------------------------------------------------------------+
   | ``type``         | string          | ``integer``, ``number`` or ``text``; ``text`` is left aligned, ``number`` is right aligned, ``integer`` is          |
   |                  |                 | formatted to zero decimal places.                                                                                   |
   +------------------+-----------------+---------------------------------------------------------------------------------------------------------------------+
   | ``format``       | string          | A comma separated list of values, such as ``zto``, ``pvalue``.                                                      |
   +------------------+-----------------+---------------------------------------------------------------------------------------------------------------------+
   | ``combineBelow`` | |trFl|          | If ``TRUE``, when cells in the column are contiguous and contain the same value, the lower cells will be made blank.|
   +------------------+-----------------+---------------------------------------------------------------------------------------------------------------------+

   .. warning ::

      Note that you must explicitly name either the ``rowNo`` or the ``rowKey`` argument when calling this method: 

      .. code-block:: R

         setRow(rowNo = ...)
         setRow(rowKey = ...) 

         setCell(rowKey = ..., col, value)
         setCell(rowNo = ..., col, value)

         addFormat(rowKey = ..., col, format)
         addFormat(rowNo = ..., col, format)

      to differentiate between the ``rowKey=...`` and the ``rowNo=...`` argument.

.. ------------------------------------------------------------------------------------------------------------------------------------------------------------

.. |trFl|                              replace:: ``TRUE`` / ``FALSE``

.. |ryaml|                             replace:: ``.r.yaml``
.. _ryaml:                             dh_api_results-definition.html

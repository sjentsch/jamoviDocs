.. sectionauthor:: Jonathon Love

The Spreadsheet
===============

In jamovi, data is represented in a spreadsheet, with each column
representing a “variable”.

Data Variables
--------------

The most commonly used variables in jamovi are “Data Variables”, these variables simply contain data either loaded from a data file, or "typed in" by the user. Data variables can be one three data types:

-  ``Integer``
-  ``Decimal``
-  ``Text``

and one of four measure types:

-  |nominal|    ``Nominal``
-  |ordinal|    ``Ordinal``
-  |continuous| ``Continuous``
-  |id|         ``ID``

The measure types are designated by the symbol in the header of the variable’s column. Note that some combinations of data-type and measure-type don’t make sense, and jamovi won’t let you choose these.

``Nominal`` and ``Ordinal`` are, predictably, for nominal and ordinal variables. ``Continuous`` is for variables with numeric values which are considered to be *Interval* or *Ratio* scales (Equivalent to ``Scale`` in SPSS). The ``ID`` measure type is, unlike the others, unique to jamovi. It’s intended for variables that contain identifiers that you would almost never want to analyse. For example, a persons name, or a participant ID. The advantage of IDs, is that jamovi does not need to maintain a list of levels internally, which can improve performance when interacting with very large data sets.

When starting with a blank spreadsheet and typing values in, the data and measure types will change automatically depending on the data you enter. This is a good way to get a feel for which variable types go with which sorts of data. Similarly, when opening a data file, jamovi will infer the variable type from the data in each column. In both cases, this automatic approach may not be correct, and it may be necessary to manually specify the data and measure type with the variable editor.

The variable editor can be invoked by selecting ``Setup`` from the ``Data`` tab, double-clicking on the column header, or by pressing ``F3``. The variable editor allows you to change the name of the variable, and (for data variables) the data type, the measure type, the order of the levels, and the label displayed for each level. The variable editor can be dismissed by clicking the close arrow, or by pressing ``F3`` again.

.. raw:: html

   <div class="gif-player" data-anim-src="../_static/um_changeName.gif" data-static-src="../_static/um_changeName.png"></div>


New variables can be inserted or appended to the data set using the ``Add`` button from the data ribbon. The ``Add`` button also allows the addition of *Computed variables*.


Computed Variables
------------------

Computed Variables are those which take their value by performing a computation on other Variables. Computed Variables can be used for a range of purposes, including log transforms, z-scores, sum-scores, negative scoring and means.

*Computed variable*\ s can be added to the data set, with the ``Add`` button available on the data tab. This will produce a formula box where you can specify the formula. The usual arithmetic operators are available. Some examples of formulas are:

.. code-block:: text

   A + B
   LOG10(len)
   MEAN(A, B)
   (dose - VMEAN(dose)) / VSTDEV(dose)
   Z(dose)

In order, these are the sum of A and B, a log (base 10) transform of ``len``, the mean of ``A`` and ``B``, and the z-score of ``dose`` (twice).

There are many more functions available.

``V``-functions
~~~~~~~~~~~~~~~

A number of functions appear in pairs, one prefixed with a ``V`` and the other not. ``V`` functions perform their calculation on a variable *as a whole*, where as non-``V`` functions perform their calculation row by row. For example, ``MEAN(A, B)`` will produce the mean of ``A`` and ``B`` for each row. Where as ``VMEAN(A)`` gives the mean of *all* the values in ``A``.

Additionally ``V`` functions support a ``group_by`` argument. When a ``group_by`` variable is specified, a separate value is calculated for each level of the ``group_by`` variable. In the following example:

.. code-block:: text

   VMEAN(len, group_by=dose)

A separate mean is calculated for each level of ``dose``, and each value in the computed variable will be the mean corresponding to it’s row’s value of ``dose``.

Recoded Variables
-----------------

Transformed and recoded variables are also available. See this `blog post <https://blog.jamovi.org/2018/10/23/transforming-variables.html>`__ for details.

Filters
-------

Filters in jamovi allow you to filter out rows that you don’t want included in your analysis. For example, you might want to only include people’s survey responses if they explicitly consented to having their data used, or you might want to exclude all left-handed people, or perhaps people who score “below chance” in an experimental task. In some cases you just want to exclude extreme scores, for example those that score more than 3 standard deviations from the mean.

The filters in jamovi are build on top of jamovi’s *computed variable* formula system, which allows the building of arbitrarily complex formulas.

More details about filters are covered in this `blog post <https://blog.jamovi.org/2018/04/25/jamovi-filters.html>`__

.. raw:: html

   <script type="text/javascript" src="../_static/gif-player.js"></script>


.. ---------------------------------------------------------------------

.. |nominal|             image:: ../_images/variable-nominal.*
   :width: 16px
.. |ordinal|             image:: ../_images/variable-ordinal.*
   :width: 16px
.. |continuous|          image:: ../_images/variable-continuous.*
   :width: 16px
.. |id|                  image:: ../_images/variable-id.*
   :width: 16px

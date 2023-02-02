.. sectionauthor:: Jonathon Love

=======================================
Analysis definition (``.a.yaml``-files)
=======================================

Overview
--------

   The analysis definition is a YAML-file in the ``jamovi/`` directory, with the extension ``.a.yaml``. the analysis definition describes the analysis, the way
   it appears in menus, and the options it requires. The file is named to match the name of the analysis it describes, but converted to lowercase. an example
   is ``ttestis.a.yaml``.

   .. code-block:: yaml

      - name:  TTestIS
        title: Independent Samples T-Test
        menuGroup: T-Tests
        version: '1.0.0'
        jas: '1.0'
        options:
        - name: ...
          type: ...
        - name: ...
          type: ...


   +------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | Property         | Function                                                                                                                              |
   +==================+=======================================================================================================================================+
   | ``name``         | The name of the analysis. camel case. Underscores are discouraged, dots are not permitted.                                            |
   +------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | ``title``        | The title of the analysis in title case.                                                                                              |
   +------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | ``version``      | The version of the analysis. Should make use of `semantic versioning <http://semver.org>`__.                                          |
   +------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | ``jas``          | The ``jamovi analysis spec``. Should be '1.0'. must be wrapped in quotes to prevent it being interpreted as a number.                 |
   +------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | ``menuGroup``    | The name of the top level menu where the analysis should appear.                                                                      |
   +------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | ``menuSubgroup`` | Places the menu entry under a subheading (optional).                                                                                  |
   +------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | ``menuTitle``    | The title to be used in the menu. If unspecified, then the ``title`` is used (optional).                                              |
   +------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | ``menuSubtitle`` | Additional text placed to the lower right of the menu entry (optional).                                                               |
   +------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | ``options``      | An array of options that the analysis requires. these are described in greater detail below.                                          |
   +------------------+---------------------------------------------------------------------------------------------------------------------------------------+


Options
-------

   Options represent the options that an analysis requires in order to run. When a jamovi module is used as an R package, they represent the arguments to the
   function. when used in jamovi itself, they represent the user interface (UI) options presented to the user.

   Each option has a name, a type, and some additional properties which are described in greater detail below.

   When a value is specified by the user (either through the jamovi user interface, or through a function argument), the option checks the value and produces
   an error if the value is not suitable. The checks performed by each option are also detailed below.


   The different option types are as follows:


Data
~~~~

   ``Data`` is used for analyses which require data (almost all of them). If used, it should be the first of the options, and should always be called ``data``.
   It has no additional properties.


   **Example**

   .. code-block:: yaml

      - name: data
        type: Data


Bool
~~~~

   ``Bool`` is used for true / false values, and is typically represented in the UI as a checkbox.

   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | Property          | default         | Description                                                                                                        |
   +===================+=================+====================================================================================================================+
   | ``title``         |                 | Name of the user interface option element                                                                          |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | ``default``       | ``false``       | Default value for the user interface option element                                                                |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+


   **Checks**
   The value must be ``true`` or ``false``.

   **Example**

   .. code-block:: yaml

      - name: bf
        type: Bool
        title: Bayes factor
        default: false


Integer
~~~~~~~

   ``Integer`` is used for values which need to be whole numbers. For ‘floating point’ numbers, use ``Number`` instead.

   +-------------------+-----------------+-----------------------------------------------------------------------------------------------------------------------+
   | Property          | default         | Description                                                                                                           |
   +===================+=================+=======================================================================================================================+
   | ``title``         |                 | Name of the user interface option element                                                                             |
   +-------------------+-----------------+-----------------------------------------------------------------------------------------------------------------------+
   | ``default``       | ``0``           | Default value of the user interface option element                                                                    |
   +-------------------+-----------------+-----------------------------------------------------------------------------------------------------------------------+
   | ``min``           | ``-Inf``        | Permitted minimum value of the user interface option element                                                          |
   +-------------------+-----------------+-----------------------------------------------------------------------------------------------------------------------+
   | ``max``           | ``Inf``         | Permitted maximum value of the user interface option element                                                          |
   +-------------------+-----------------+-----------------------------------------------------------------------------------------------------------------------+


   **Checks**
   -  the value must be a whole number
   -  the value must fall between the ``min`` and the ``max``


Number
~~~~~~

   ``Number`` is used for values which need to be numeric. For whole numbers, use ``Integer`` instead.

   +-------------------+-----------------+-----------------------------------------------------------------------------------------------------------------------+
   | Property          | default         | Description                                                                                                           |
   +===================+=================+=======================================================================================================================+
   | ``title``         |                 | Name of the user interface option element                                                                             |
   +-------------------+-----------------+-----------------------------------------------------------------------------------------------------------------------+
   | ``default``       | ``0.0``         | Default value of the user interface option element                                                                    |
   +-------------------+-----------------+-----------------------------------------------------------------------------------------------------------------------+
   | ``min``           | ``-Inf``        | Permitted minimum value of the user interface option element                                                          |
   +-------------------+-----------------+-----------------------------------------------------------------------------------------------------------------------+
   | ``max``           | ``Inf``         | Permitted maximum value of the user interface option element                                                          |
   +-------------------+-----------------+-----------------------------------------------------------------------------------------------------------------------+


   **Checks**
   -  the value must be a number
   -  the value must fall between the ``min`` and the ``max``


   **Example**

   .. code-block:: yaml

      - name: ciWidth
        type: Number
        title: Confidence level
        min: 50
        max: 99.9
        default: 95


List
~~~~

   ``List`` is used where only one of several values may be specified, and only one at a time. In the UI, these are typically represented as either a listbox,
   or a set of radio buttons.

   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | Property          | default         | Description                                                                                                        |
   +===================+=================+====================================================================================================================+
   | ``title``         |                 | Name of the user interface option element                                                                          |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | ``options``       |                 | List of choices for the list box (must be specified as an array of strings)                                        |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | ``default``       | <first option>  | Which of the elements of ``options`` does serve as default                                                         |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+


   **Checks**
   -  the value must be one of the options


Variable
~~~~~~~~

   ``Variable`` is used where a variable/column from the data set needs to be specified. In the UI, these are typically represented as a ‘drop box’, where
   variables can be dragged and dropped. The value of ``Variable`` is a string (in R, a character vector of length 1) containing the assigned variable name. If
   nothing is assigned it has a value of ``null``.

   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | Property          | default         | Description                                                                                                        |
   +===================+=================+====================================================================================================================+
   | ``title``         |                 | Name of the user interface option element                                                                          |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | ``suggested``     | ``[]``          | Suggested variable type (shown as variable type icon at the bottom of the variable drop box); must be a list of    |
   |                   |                 | the following types: ``continuous``, ``ordinal``, ``nominal``, ``nominaltext``                                     |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | ``permitted``     | ``[]``          | Suggested variable type (variables of non-permitted types can't be assigned)                                       |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | ``rejectInf``     | ``true``        | Reject the assignment of variables containing non-finite values                                                    |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | ``rejectMissing`` | ``false``       | Reject the assignment of variables containing missing values                                                       |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+


   **Checks**
   - whether the value is a string
   - whether the variable exists in the data set
   - whether the variable type is permitted
   - whether the variable contains non-finite values (if ``rejectInf`` is ``true``)
   - whether the variable contains missing values (if ``rejectMissing`` is ``true``)


Variables
~~~~~~~~~

   ``Variables`` is used where multiple variables / columns from the data set need to be specified. In the UI, these are typically represented as a ‘drop box’,
   where variables can be dragged and dropped. The value is an array of strings (in R, a character vector). If nothing is assigned to ``Variables`` it’s value
   is an empty array (in R, a character vector of length 0).

   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | Property          | default         | Description                                                                                                        |
   +===================+=================+====================================================================================================================+
   | ``title``         |                 | Name of the user interface option element                                                                          |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | ``suggested``     | ``[]``          | Suggested variable type (shown as variable type icon at the bottom of the variable drop box), must be a list of    |
   |                   |                 | the following types: ``continuous``, ``ordinal``, ``nominal``, ``nominaltext``                                     |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | ``permitted``     | ``[]``          | Suggested variable type (variables of non-permitted types can't be assigned)                                       |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | ``rejectInf``     | ``true``        | Reject the assignment of variables containing non-finite values                                                    |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+
   | ``rejectMissing`` | ``false``       | Reject the assignment of variables containing missing values                                                       |
   +-------------------+-----------------+--------------------------------------------------------------------------------------------------------------------+


   **Checks**
   - whether the variable exists in the data set
   - whether the variable type is permitted
   - whether the variable contains non-finite values (if ``rejectInf`` is ``true``)
   - whether the variable contains missing values (if ``rejectMissing`` is ``true``)

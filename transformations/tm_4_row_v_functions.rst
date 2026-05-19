.. sectionauthor:: Laiton Hedley


===================
Row and V Functions
===================

Functions in jamovi can be either *Row functions* or *Variable functions*.
As their names imply Row functions only make use of other values in the same row, whereas Variable functions (typically prefixed with the letter ``V``) compute values using the entire variable (or rather column).

Row Functions
-------------

*Row functions* only make use of other values in the same row. For example, the function ``MEAN(A, B, C)`` will result in a column of values where each cell's value is only computed from the values in its row.

.. list-table:: Example of the MEAN() Function
   :header-rows: 1

   * - A
     - B
     - C
     - MEAN(A, B, C)
   * - 1
     - 3
     - 4
     - 2.33
   * - 6
     - 3
     - 1
     - 3.33
   * - 5
     - 5
     - 9
     - 6.33

V Functions
-----------

*V functions* or *Variable functions* (typically prefixed with the letter ``V``), compute values using the entire variable. For example, ``VMEAN(A)`` computes the mean of the *entire* variable ``A``.

.. list-table:: Example of the VMEAN() Function
   :header-rows: 1

   * - A
     - B
     - C
     - VMEAN(A)
   * - 1
     - 3
     - 4
     - 4
   * - 6
     - 3
     - 1
     - 4
   * - 5
     - 5
     - 9
     - 4

It's possible to combine Row and V functions together. For example, to compute a z-score, use the function

  ``(A - VMEAN(A)) / VSTDEV(A)``

(but it's also possible to use the more concise ``Z(...)`` function!)

Grouping with V Functions
-------------------------

Several V functions allow a ``group_by`` parameter, allowing the calculation of values within groups.


Perhaps you have a dataset with a column labelled Dosage to indicate the treatment each participant recieved (e.g., 50 mg vs 100 mg vs 150 mg).
To compute the mean score of the outcome variable for each Dosage group separately (without the scores from one treatment being combined with those from another) call the ``group_by`` parameter, such as:

  ``VMEAN(outcome, group_by = Dosage)``

.. list-table:: Example of the VMEAN() Function with group_by argument
   :header-rows: 1

   * - Dosage
     - outcome
     - VMEAN(outcome, group_by = Dosage)
   * - 150 mg
     - 4
     - 4.33
   * - 150 mg
     - 4
     - 4.33
   * - 150 mg
     - 5
     - 4.33
   * - 100 mg
     - 3
     - 3
   * - 100 mg
     - 2
     - 3
   * - 100 mg
     - 4
     - 3
   * - 50 mg
     - 1
     - 1.33
   * - 50 mg
     - 2
     - 1.33
   * - 50 mg
     - 1
     - 1.33
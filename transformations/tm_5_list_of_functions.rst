.. sectionauthor:: Laiton Hedley


.. _list-of-functions:

====================
⚡ List of Functions
====================

Below is a list of functions available in jamovi.
These functions can be used in the formula editor to create new variables, filter data, and perform a variety of transformations on existing data.


.. https://github.com/jamovi/jamovi/blob/4b490813d1442f93059e606a15ac39ef626c6d07/client/main/vareditor/formulatoolbar.ts#L89-L168

.. list-table:: Functions available in jamovi
   :header-rows: 1
   :widths: 12 55 10

   * - Function
     - Description
     -
   * -
     - **MATH FUNCTIONS**
     -
   * - ``ABS(var)``
     - Absolute value: Returns the absolute value in a column of data.
     - `More info <https://en.wikipedia.org/wiki/Absolute_value>`__
   * - ``EXP(var)``
     - Exponential: raises *e* to the power of each value in a column of data.
     - `More info <https://en.wikipedia.org/wiki/Exponential_function>`__
   * - ``LN(var)``
     - Natural logarithm (base *e*): the natural logarithm (base e) of each value in a column of data.
     - `More info <https://doi.org/10.1177/00045632211050531>`__
   * - ``LOG10(var)``
     - Log base 10: the logarithm (base 10) of each value in a column of data.
     - `More info <https://doi.org/10.1177/00045632211050531>`__
   * - ``SQRT(var)``
     - Square root: the square root of each value in a column of data.
     - `More info <https://en.wikipedia.org/wiki/Square_root>`__
   * -
     - **STATISTICAL FUNCTIONS**
     -
   * - ``ABSIQR(var)``
     - Absolute deviation from the median: measures the average absolute deviation of values from the median. Convenience short-hand for ``ABS(IQR(var))``.
     - `More info <https://en.wikipedia.org/wiki/Interquartile_range>`__
   * - ``ABSZ(var)``
     - Absolute z-score: Convenience short-hand for ``ABS(Z(var))``
     - `More info <https://en.wikipedia.org/wiki/Standard_score>`__
   * - ``BOXCOX(var)``
     - Box Cox: Returns a Box Cox transformation of the variable.
     - `More info <https://en.wikipedia.org/wiki/Power_transform#Box%E2%80%93Cox_transformation>`__
   * - ``CEILING(var)``
     - Ceiling: returns the smallest integer that is greater than or equal to each value in a column of numbers, effectively rounding up to the nearest whole number.
     - `More info <https://en.wikipedia.org/wiki/Floor_and_ceiling_functions>`__
   * - ``FLOOR(var)``
     - Floor: returns the greatest integer that is less than each value in a column of numbers, effectively rounding down to the nearest whole number.
     - `More info <https://en.wikipedia.org/wiki/Floor_and_ceiling_functions>`__
   * - ``IQR(var)``
     - Interquartile Range: Returns values of 0 to indicate a number is within the box of a boxplot and values larger than 1.5 to indicate the number is outside the whiskers.
     - `More info <https://en.wikipedia.org/wiki/Interquartile_range>`__
   * - | ``MAX(var)``
       | ``MAX(var_1, var_2, ...)``
       | ``VMAX(var)``
       | ``VMAX(var, group_by = other_var)``
     - Maximum: identifies the highest value in a row or column of data.
     - `More info <https://en.wikipedia.org/wiki/Maximum_and_minimum>`__
   * - ``MAXABSIQR(var)``
     - Maximum Absolute Interquartile Range: Convenience short-hand for ``MAX(ABSIQR( variable 1, variable 2, … ))``.
     - `More info <https://en.wikipedia.org/wiki/Interquartile_range>`__
   * - ``MAXABSZ(var)``
     - Maximum Absolute Z-Score: Convenience short-hand for ``MAX(ABSZ( variable 1, variable 2, … ))``.
     - `More info <https://en.wikipedia.org/wiki/Standard_score>`__
   * - | ``MEAN(var)``
       | ``MEAN(var_1, var_2, ...)``
       | ``VMEAN(var)``
       | ``VMEAN(var, group_by = other_var)``
     - Mean: Calculate the mean score across a row or column of data.
     - `More info <https://en.wikipedia.org/wiki/Mean>`__
   * - | ``MIN(var)``
       | ``MIN(var_1, var_2, ...)``
       | ``VMIN(var)``
       | ``VMIN(var, group_by = other_var)``
     - Minimum: identifies the lowest value in a row or column of data.
     - `More info <https://en.wikipedia.org/wiki/Maximum_and_minimum>`__
   * - ``RANK(var)``
     - Ranking: assigns an ordinal rank to each value in a column of data.
     - `More info <https://en.wikipedia.org/wiki/Ranking_(statistics)>`__
   * - ``ROUND(var, n)``
     - Rounding: adjusts each value in a column of data to a specified number of decimal places or to the nearest whole number.
     - `More info <https://en.wikipedia.org/wiki/Rounding>`__
   * - ``SCALE(var)``
     - Scale: Returns the normalized values of a set of numbers - synonym for ``Z(var)``.
     - `More info <https://en.wikipedia.org/wiki/Standard_score>`__
   * - | ``STDEV(var)``
       | ``STDEV(var_1, var_2, ...)``
       | ``VSTDEV(var)``
       | ``VSTDEV(var, group_by = other_var)``
     - Standard deviation: measures the amount of standard deviation in a row or column of data.
     - `More info <https://en.wikipedia.org/wiki/Standard_deviation>`__
   * - | ``SUM(var)``
       | ``SUM(var_1, var_2, ...)``
       | ``VSUM(var)``
       | ``VSUM(var, group_by = other_var)``
     - Summation: Returns the sum of a row or column of data.
     - `More info <https://en.wikipedia.org/wiki/Summation>`__
   * - | ``VMAD(var)``
       | ``VMAD(var, group_by = other_var)``
     - Median Absolute Deviation: Returns the median absolute deviation of a variable.
     - `More info <https://en.wikipedia.org/wiki/Median_absolute_deviation>`__
   * - | ``VMADR(var)``
       | ``VMADR(var, group_by = other_var)``
     - Robust Median Absolute Deviation: Returns the robust median absolute deviation of a variable.
     - `More info <https://en.wikipedia.org/wiki/Median_absolute_deviation>`__
   * - | ``VMED(var)``
       | ``VMED(var, group_by = other_var)``
     - Median: Returns the median of a variable.
     - `More info <https://en.wikipedia.org/wiki/Median>`__
   * - | ``VMODE(var)``
       | ``VMODE(var, group_by = other_var)``
     - Mode: Returns the most common value, or mode, in a variable.
     - `More info <https://en.wikipedia.org/wiki/Mode_(statistics)>`__
   * - | ``VN(var)``
       | ``VN(var, group_by = other_var)``
     - Sample Size (or n): Returns the number of cases in a variable.
     - `More info <https://en.wikipedia.org/wiki/Sample_size_determination>`__
   * - | ``VSE(var)``
       | ``VSE(var, group_by = other_var)``
     - Standard Error: Returns the standard error of a variable.
     - `More info <https://en.wikipedia.org/wiki/Standard_error>`__
   * - | ``VAR(var)``
       | ``VVAR(var)``
       | ``VVAR(var, group_by = other_var)``
     - Variance: Returns the variance of a row or column of data.
     - `More info <https://en.wikipedia.org/wiki/Variance>`__
   * - ``Z(var)``
     - Z-score: Returns the normalized values of a set of numbers.
     - `More info <https://en.wikipedia.org/wiki/Standard_score>`__
   * -
     - **LOGICAL FUNCTIONS**
     -
   * - ``IF(var, value, else)``
     - If the expression resolves true, use the value, otherwise the else.
     - `More info <https://en.wikipedia.org/wiki/Conditional_(computer_programming)>`__
   * - ``IFMISSING(var, value, else)``
     - When the variable contains a missing value, use the value, otherwise the else.
     - `More info <https://en.wikipedia.org/wiki/Conditional_(computer_programming)>`__
   * - ``NOT(var)``
     - Inverts a boolean value: true (1) becomes false (0), false (0) becomes true (1).
     - `More info <https://en.wikipedia.org/wiki/Negation>`__
   * -
     - **TEXT FUNCTIONS**
     -
   * - ``CONTAINS('needle', haystack)``
     -  Determines if specificied string of text (i.e. 'needle') appears in the variable (i.e. haystack) and can be expanded to look for multiple strings across one or more variables: ``CONTAINS('text_1', 'text_2', var_1, var_2)``.
     - `More info <https://en.wikipedia.org/wiki/String_searching_algorithm>`__
   * - ``SPLIT(var, 'by', position)``
     - Splits a string of text in a variable by a specified character (or string of text) and returns only the text at the specified position. For example, the string `ParticipantbyP01` using ``SPLIT(var, 'by', 3)`` would return `P01`.
     -  `More info <https://en.wikipedia.org/wiki/String_(computer_science)>`__
   * - ``TEXT(var)``
     - Converts values to text format (numbers to strings of text).
     -  `More info <https://en.wikipedia.org/wiki/String_(computer_science)>`__
   * - ``VALUE(var)``
     - Converts text (strings) to values (if possible).
     - `More info <https://en.wikipedia.org/wiki/String_(computer_science)>`__
   * -
     - **DATE/TIME FUNCTIONS**
     -
   * - ``DATEVALUE(var)``
     - Takes a date in text format (i.e. 2000-12-20) and converts to the number of days since the 1st of January, 1970.
     - `More info <https://en.wikipedia.org/wiki/Unix_time>`__
   * - ``DATE(var)``
     - Takes a number representing the number of days since the 1st of January 1970, and produces a formatted date.
     - `More info <https://en.wikipedia.org/wiki/Unix_time>`__
   * -
     - **REFERENCE FUNCTIONS**
     -
   * - ``HLOOKUP(index, var_1, var_2, ...)``
     - Returns the values in the rows, specified by index, from the provided variables.
     - `More info <https://en.wikipedia.org/wiki/Lookup_table>`__
   * - ``MATCH(var, value_1, value_2, ...)``
     - Returns the row index of the variable of interest that matches the value provided.
     - `More info <https://en.wikipedia.org/wiki/Lookup_table>`__
   * -
     - **MISC. FUNCTIONS**
     -
   * - ``COUNT(var)``
     - Counts the number of non-missing values.
     - `More info <https://en.wikipedia.org/wiki/Counting>`__
   * - ``FILTER(var, filter expression)``
     - Filters a variable using a filter expression. For example, ``FILTER(var_1, var_2 == "Group_A")`` returns only rows in var_1 where var_2 is matched with the label "Group A".
     - `More info <https://en.wikipedia.org/wiki/Filter_(higher-order_function)>`__
   * - ``INT(var)``
     - Converts a number to an integer (a positive or negative number without a fractional component).
     - `More info <https://en.wikipedia.org/wiki/Integer>`__
   * - ``OFFSET(var, n)``
     - Offsets a column of data up or down by +/- n rows
     - `More info <https://en.wikipedia.org/wiki/Offset_(computer_science)>`__
   * - ``ROW()``
     - Returns a column with each row indicating the row number.
     -
   * - ``SAMPLE(var, n)``
     - Draws a random sample of n values from a variable.
     - `More info <https://en.wikipedia.org/wiki/Sampling_(statistics)>`__
   * - ``VROWS(var)``
     - Returns the number of rows of a variable.
     -
   * -
     - **SIMULATION FUNCTIONS**
     -
   * - ``BETA()``
     - Draws samples from a Beta distribution, using the parameters alpha (proportional successes) and beta (proportional failures).
     - `More info <https://en.wikipedia.org/wiki/Beta_distribution>`__
   * - ``GAMMA()``
     - Draws samples from a Gamma distribution, using the parameters shape (skewness) and scale (spread of data).
     - `More info <https://en.wikipedia.org/wiki/Gamma_distribution>`__
   * - ``NORM()``
     - Draws samples from a Normal (Gaussian) distribution, using the mean (center of the distribution) and standard deviation (spread of the distribution).
     - `More info <https://en.wikipedia.org/wiki/Normal_distribution>`__
   * - ``UNIF()``
     - Draws samples from a Uniform distribution, providing a minimum value and a maximum value.
     - `More info <https://en.wikipedia.org/wiki/Uniform_distribution_(continuous)>`__


Understanding Formulas
----------------------
  In jamovi formulas are constructed using a combination of numbers, variables, values, operators and functions.

  Numbers are simply numbers (i.e. 1, 2.5, -3), adding two numbers together performs arithmetic (i.e. 2 + 2 = 4).
  Variables are referred to by their name (i.e. variable_name) and can be referred to with backticks as well (i.e. \`variable name\`) - when the variable name contains spaces it is a requirement to use backticks otherwise jamovi will not be able to interpret the formula correctly.

  Often we use strings of text in our rows of data to indicate categories or conditions.
  In jamovi, adding two text values together performs concatenation or rather joins them together (i.e. hello + world = helloworld).
  Adding numbers and strings of text together, again performs concatenation where by the number is converted to text alogside the string of text (i.e. 2 + apples = 2apples).
  Values surrounded by ticks are strings of text (i.e. \'10\').

  When using formulas often we may wish to use ``and`` and ``or``  when performing are logical operations (i.e. ``IF(var_1 > 5 and var_2 < 10, 'Yes', 'No')`` and ``IF(var_1 == 'A' or var_2 == 'B', 'Match', 'No Match')``).
.. sectionauthor:: Jonathon Love

=============
Handling Data
=============

   So far in these tutorials, we haven’t really examined what the ``self$data`` data frame *actually* contains. It contains the data from the dataset which is
   displayed in the spreadsheet view, but exactly how these values map to the R type system is a bit nuanced.

   In jamovi there are four variable types:

   - ``Nominal Text``
   - ``Nominal``
   - ``Ordinal``
   - ``Continuous``

   ``Nominal Text`` variables only ever have ‘text’ values, so will come through in the ``self$data`` data frame simply as factors. ``Continuous`` variables only
   ever have numeric values, so in the ``self$data`` data frame, they are of type numeric. However, the ``Nominal`` and ``Ordinal`` variable types are a little
   more tricky. These can have *both* numeric *and* text values.

   .. (**NOTE**: jamovi currently doesn’t support assigning text values (labels) to Nominal and Ordinal variables. This will be added in the future.)

   Further, there are situations where you want to treat a ``Nominal`` or ``Ordinal`` variable as a factor (i.e. when it is used as the grouping variable for a
   t-test), but other times where you want to use it as a number (i.e. when taking a mean of say, Likert items). Some would argue that this should never happen –
   you should never be taking the mean of a categorial variable, and that’s possibly true – but some people do still find it useful.

   The other advantage of the ‘dual nature’ of ``Nominal`` variables, is that it means the users can ignore the variable type if they don’t want to worry about
   it. When working with large datasets, the process of going through and setting up all the columns, making sure they have the correct variable type, etc. can
   be long and tedious. So only using the variable type as a guide can make it easier for the user. This is also consistent with the way that many statistical
   software work, including SPSS.

   So whether a ``Nominal`` variable should be treated as a factor or a continuous variable should be determined by context. For example, for an ANCOVA, variables
   assigned to ‘factors’ should be treated as factors, and variables assigned to ‘covariates’ should be treated as numeric. Avoid *inferring* how the user wants
   to treat the variable based on its type, i.e. avoid an ‘independent variables’ option, where if the user assigns a nominal variable, it is treated as a factor,
   and if the user assigns a continuous variable, it is treated as a covariate – this is *implied* behaviour, and users make mistakes.

   In jamovi, by default, ``Nominal`` and ``Ordinal`` variables in ``self$data`` come through as factors. The numeric values for each column are attached to the
   column as an attribute. You don’t need to interact with this attribute directly, but there are situations where it’s good to know it’s there.

   One issue to do with these attributes, is that a number of R functions in the ``base`` package have no respect for attributes. Using the functions ``na.omit``,
   ``subset`` and likely others on ``self$data``, results in the discarding of these attributes. For this reason, it is better to convert these columns to the
   types you want to use (so the attributes are no longer needed) *before* using these functions.

   To convert a ``Nominal`` or ``Ordinal`` variable (which come through as factors) to a numeric, ``jmvcore`` provides the ``toNumeric()`` function. To convert in
   the other direction, from a numeric to a factor, you can use the ``factor()`` or ``as.factor()`` functions built into R. If ``toNumeric()`` is called on a
   variable which is already numeric, it has no effect. Similarly, if ``as.factor()`` is called on a variable which is already a factor, it has no effect. So you
   can call these on every column, without needing to check whether they are already the correct type.

   Returning to our ANCOVA example, which requires a single numeric dependent variable, one or more factors as factors, and one or more covariates as numeric, we
   might begin the ``.run()`` function as follows:

   .. code-block:: R

      .run = function() {

         # read the option values into shorter variable names

         dep  <- self$options$dep
         facs <- self$options$factors
         covs <- self$options$covs

         # get the data

         data <- self$data

         # convert to appropriate data types

         data[[dep]] <- jmvcore::toNumeric(data[[dep]])
         for (fac in facs)
             data[[fac]] <- as.factor(data[[fac]])
         for (cov in covs)
             data[[cov]] <- jmvcore::toNumeric(data[[cov]])

         # data is now all of the appropriate type we can begin!

         data <- na.omit(data)

         ...
      }

   In this way, one of the first things you will do in the ``.run()`` function, is setting up all the columns from ``self$data`` to be the correct types.

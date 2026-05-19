.. sectionauthor:: Laiton Hedley


==================
Restructuring Data
==================

What is Wide vs Long Format?
-----------------------------
  Within data analysis, two common data structures are often required these are *wide format* and *long format* .
  Wide format data is set up such that each row represents a participant, and repeated measurements are stored in separate columns (one column per outcome at each time point or condition).
  For example, below we have the quiz score of students during Weeks 2, 4, and 6 of Semester displayed in wide format:

    .. list-table:: Wide Format Example
      :header-rows: 1

      * - ID
        - ScoreWeek_2
        - ScoreWeek_4
        - ScoreWeek_6
      * - 1
        - 30
        - 50
        - 70
      * - 2
        - 20
        - 30
        - 55
      * - 3
        - 40
        - 50
        - 52

  Here each row represents a unique student (ID), and their quiz scores at Weeks 2, 4, and 6 are stored in separate columns.
  To run a repeated measures ANOVA, or rather to compare the average quiz scores across the three weeks, jamovi (much like other statistical software) requires the data to be in wide format as shown above.

  In long-format, each row represents a single measurement occasion for a participant with multiple rows per participant.
  Below is the same data of the quiz scores at Weeks 2, 4, and 6 represented in long format:

    .. list-table:: Long Format Example
      :header-rows: 1

      * - ID
        - Time
        - Score
      * - 1
        - Week_2
        - 30
      * - 1
        - Week_4
        - 50
      * - 1
        - Week_6
        - 70
      * - 2
        - Week_2
        - 20
      * - 2
        - Week_4
        - 30
      * - 2
        - Week_6
        - 55
      * - 3
        - Week_2
        - 40
      * - 3
        - Week_4
        - 50
      * - 3
        - Week_6
        - 52

  As shown above, Score is now a single column with all Score values stacked, and Time is a separate variable that indicates the Week of measurement (e.g., Week_2, Week_4, Week_6).
  Using long format makes it easy to summarise, plot, and model change over time because time is represented explicitly as data rather than being embedded in column names.
  Long format is also required for mixed modelling, by having the data in long format, we can easily specify both fixed effects (e.g., the effect of time on quiz scores) and random effects (e.g., individual differences between students).

  When working with data, it is often necessary to restructure the data from a wide format to a long format or vice versa. Below is a guide on how to restructure data in jamovi.

Restructuring with jReshape
---------------------------

  To restructure data in jamovi (at this time) requires the jReshape module, which can be installed by clicking the plus icon in the top right of jamovi and searching for the module name ``jReshape``.
  Once installed and loaded, the jReshape module allows for the functionality to restructure data from wide to long format and vice versa.
  Under the ``Analyses`` tab, a new option called ``Data`` will appear which contains the jReshape options.

Wide to Long
~~~~~~~~~~~~

  To transform data from wide format to long format, click on ``Analyses`` tab, select ``Data``, and then from the dropdown select ``Wide to Long``.
  Here, take the columns that represent the repeated measurements (i.e., Score_Week_2, Score_Week_4, Score_Week_6) and move them into the ``Columns to row`` box.
  Below we have the option rename our new columns, under ``Target Variable`` rename this variable sensibly such as the name of the dependant variable (i.e., ``Score``).
  Additonaly, under ``Index Variable (conatins repeated levels values)`` this should be named something that indicates the condition or time point (i.e., ``Time``).
  In the output window, check the data preview (this shows what the data will look like once transformed).
  If the preview is correct and sensible, click the blue ``Create`` button and jamovi will open a new jamovi window with the data set now transformed to long format.

Long to Wide
~~~~~~~~~~~~

  To transform data from long format to wide format in jamovi, click on ``Analyses`` tab, select ``Data``, and then from the dropdown select ``Long to Wide``.
  Here, move the variable that contains the variable of interest (i.e., ``Score``) into the ``Rows to Columns`` box.
  Next, choose the variable that identifies the repeated measurements time point or condition (i.e., ``Time``) and move this into the ``Indexing Variables`` box.
  To ensure the data is restructured correctly, we need to also move the variable that identifies the unique participant (i.e., ``ID``) into the ``ID Variable`` box.
  In the right hand side output window, double-check the data preview (this shows what the data will look like once transformed).
  If the preview is correct and sensible, click the blue ``Create`` button and jamovi will open a new jamovi window with the data set now transformed to wide format.

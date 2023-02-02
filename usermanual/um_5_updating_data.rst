.. sectionauthor:: Jonathon Love

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

   A summary of how to import multiple file and how to use templates in jamovi
   is provided in this `video introduction <https://youtu.be/u1K47yLEMbc>`__
   (in English).


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
   files, or with the “multi-select” button (three lines preceded by tick
   marks) at the top of the import dialog.

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

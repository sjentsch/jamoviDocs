.. sectionauthor:: Jonathon Love

Combining jamovi and R
======================

Syntax Mode
-----------

   jamovi also provides an “R Syntax Mode”, in this mode, jamovi produces
   equivalent R code for each analysis. To change to syntax mode, select the
   application menu (⋮) at the top right of jamovi, and check the ``Syntax
   mode`` checkbox there. It is possible to leave syntax mode by clicking this
   a second time.

   In syntax mode, analyses continue to operate as before, but now they produce
   R syntax. Like all results objects in jamovi, you can right click on these
   items (including the R syntax) and copy and paste them, for example, into an
   R session.

   .. raw:: html

      <div class="gif-player" data-anim-src="../_static/gifs/um_rSyntax.gif" data-static-src="../_static/gifs/um_rSyntax.png"></div>


   At present, the provided R syntax does not include the data import step, and
   this must be performed manually. The easiest way of reading and writing
   jamovi data files in R is the |jmvReadWrite| R package. Alternatively, the
   |jmvconnect| R-package permits you to access data sets that you have opened
   in your jamovi session from R. 


``Rj`` Editor
-------------

   The ``Rj Editor`` allows you to use ``R`` code to analyse data directly in
   jamovi, and make use of your favourite R packages from within jamovi. ``Rj``
   is a module for jamovi (see :doc:`../howto/howto_Install_modules`) that
   allows you to use the R programming language to analyse data from within
   jamovi.

   |um_Rj1|

   There are many reasons you might want to do this; there are a lot of
   analyses available in R packages that haven’t (yet) been made available as
   jamovi modules, and ``Rj`` allows you to make use of these analyses from
   within jamovi. Additionally, you can make use of loops and if-statements,
   allowing (among other things) conditional analyses and simulation studies.

   For some, using R in a spreadsheet will be an ideal place to begin learning
   ``R``. For others, it can be an easy way to share R analyses with less
   technically savvy colleagues (and some people just prefer to code).

   To run an R analysis, select ``Rj Editor`` from the ``R``-icon in the
   ``Analyses`` ribbon. This will bring up the editor for entering your ``R``
   code. The data set you have opened in jamovi is available to you as a data
   frame, simply as ``data``. To get started, you might like to run
   ``descriptives`` on it.

   |um_Rj2|

   Or if you prefer the ``dplyr`` approach, you could go:

   .. code-block:: R

      library(jmv)
      library(dplyr)
      library(magrittr)
      
      select(data, 1:3) %>% descriptives()

   You’ll notice as you’re entering this code, ``Rj`` auto-suggests function
   names. To run the code, click on the green triangle or press Control +
   Shift + Enter (or ⌘ + Shift + Enter if you’re on a Mac). jamovi will run
   the ``R`` code and the results will appear in the results panel like other
   analyses. You can continue to make changes to the code, and then run it
   again.

   By default, ``Rj`` makes use of the version of ``R`` bundled with jamovi.
   This includes many packages (``jmv`` and all it’s `dependencies
   <https://cran.r-project.org/package=jmv>`_\ ), and will be sufficient for
   many people, but if you need to make use of additional ``R`` packages then
   you’ll need to make use of the ``System R`` version. If you select ⚙ (at
   the top right of the code box), you’ll see an option to change the
   ``R version`` used. The ``System R`` version uses the version of ``R`` you
   have installed on your system. This has the advantage that your ``R`` code
   now has access to all of the packages you have installed for that version
   of ``R``. The last thing you will need is to have the |jmvconnect| R
   package installed in the R library on your system. This package allows the
   ``R`` version on your system to access the jamovi data sets. You can install
   it in ``R`` with:

   .. code-block:: R

      install.packages('jmvconnect')

   Once this is done, moving from the ``jamovi R`` to the ``System R`` should
   be seamless.

   It’s worth remembering that sharing jamovi files with colleagues becomes a
   bit more complicated when you make use of the ``System R`` version. If they
   want to make changes and re-run your analyses, they will need to have the
   same R packages installed – that’s the price of flexibility!

   When ``Rj`` runs ``R`` code, by default it makes the whole data set
   available as a data frame called ``data``. However, it’s likely that your
   analysis only makes use of a few columns, and doesn’t need the whole data
   set. You can limit the columns made available to the analysis by including
   a special comment at the top of your script, of the form:

   .. code-block:: R

      # (column1, column2, column3)
      
      library(jmv)
      
      ...

   In this instance, only the named columns will appear in the data data frame.
   This can speed the analysis up, particularly if you are working with large
   data sets. Additionally, this lets jamovi know that the analysis is only
   using these columns, and the analysis will not need to be re-run if changes
   are made to other columns.

   There may be times where you’ll want to transition to an R session for
   analysing a data set. This is where the |jmvconnect| R package comes in
   handy. |jmvconnect| let’s you read the data sets from a running jamovi
   instance into an R session. It has two functions: ``what()`` lists the
   available data sets, and ``read()`` reads them. For example, you might use:

   .. code-block:: R

      > library(jmvconnect)
      > what()
      
       Available Data Sets
       ─────────────────────────────────────
               Title           Rows    Cols   
       ─────────────────────────────────────
          1    iris             150       5   
          2    Tooth Growth      60       3   
       ─────────────────────────────────────

   and then read the data set with either of these two commands:

   .. code-block:: R

      data <- read('Tooth Growth')
      data <- read(2)

   Rj, |jmvconnect| and |jmvReadWrite| make is easy to access R from jamovi,
   and jamovi from R.   

.. raw:: html

   <script type="text/javascript" src="../_static/gif-player.js"></script>

.. ----------------------------------------------------------------------------

.. |jmvconnect|                        replace:: ``jmvconnect``
.. _jmvconnect:                        https://cran.r-project.org/package=jmvconnect

.. |jmvReadWrite|                      replace:: ``jmvReadWrite``
.. _jmvReadWrite:                      https://cran.r-project.org/package=jmvReadWrite

.. |um_Rj1|                            image:: ../_images/um_Rj1.*
.. |um_Rj2|                            image:: ../_images/um_Rj2.*

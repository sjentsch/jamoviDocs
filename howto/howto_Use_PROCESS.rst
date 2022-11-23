.. sectionauthor:: `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

.. role:: red

=========================================================
Use the R-version of the PROCESS-macro from within jamovi
=========================================================

In preparation: You need to install Rj and to download the most recent version
of the `PROCESS-macro <from http://processmacro.org/download.html>`__\ .
Open the ZIP-file that you downloaded, go into the folder ``PROCESS v... for
R`` and extract the ``process.R``-file into your ``Documents``-directory.

Open a data file that you want to use for your analyses. Afterwards, open
``Rj`` using the ``R``-symbol in the ``Analyses``-icon-bar (``Rj`` is a
jamovi module; if you have not installed it yet, you may check
:doc:`Install modules in jamovi <howto_Install_modules>`).

Now you are ready to write R-code inside jamovi. Run the following code in the
``Rj`` text box for commands. You may just copy-and-paste the following code.

* on Windows
  
  .. code:: R
  
     source(file.path(Sys.getenv('HOMEDRIVE'), Sys.getenv('HOMEPATH'), 'Documents', 'process.R'))
  
* on Mac and Linux

  .. code:: R

     source(file.path(Sys.getenv('HOME'), 'Documents', 'process.R'))

Run this code (``source…``) by pressing the green triangle. Please be patient,
it might take a moment (up to a minute, depending on how fast your computer
is). You should see an output like this

.. code:: rout

   ******************** PROCESS for R Version 4.2 beta **************** 
   
              Written by Andrew F. Hayes, Ph.D.  www.afhayes.com              
      Documentation available in Hayes (2022). www.guilford.com/p/hayes3   
   
   *********************************************************************** 
 
   PROCESS is now ready for use.
   Copyright 2022 by Andrew F. Hayes ALL RIGHTS RESERVED
   Workshop schedule at http://haskayne.ucalgary.ca/CCRAM

Afterwards, the PROCESS-macro is initialized and you can comment the line out
(by putting a ``#`` at the start of the line) → ``# source(…``

Now you are set to run analyses. Please note that the :red:`PROCESS-macro for R
uses a different random number generator` and that therefore the 
:red:`bootstrapping-values for the Indirect effect(s) of X on Y are different`
from what the output shown in the book. Furthermore does the current version of
the :red:`PROCESS-macro for R accept data only in numeric format`. Thus,
factors must be converted to numeric form (e.g., 0 and 1) prior to their use
in a PROCESS command. This can be done using the following command in ``Rj``
(just copy-and-paste it).

  .. code:: R

     for (C in names(data)[sapply(data, is.factor)]) {
         data[[C]] = as.numeric(data[[C]]) - min(as.numeric(data[[C]]))
     }

Once this is done, you may just write (or copy-and-paste if you own the e-book)
the commands that are shown in the book. Please note that you have to change
the name of the data set: in this example, taken from p. 188 of Hayes (2022),
the dataset ``pmi`` is required (to download the `data sets
<https://afhayes.com/public/hayes2022data.zip>`__). Thecommand in the book has
to be adjusted by changing ``data = pmi`` into ``data = data`` (``data`` refers
to the currently opened dataset in jamovi).

  .. code:: R

     process(data = data, y = "reaction", x = "cond", m = c("import", "pmi"), total = 1, contrast = 1, model = 6,seed = 31216)

Please remember that you have to run the ``source…`` command again whenever you
open a new dataset / a new jamovi session. If you want to run several analyses
with the same dataset / within the same jamovi session, this is not required.

.. ----------------------------------------------------------------------------

.. sectionauthor:: Jonathon Love

Syntax Mode
===========

   jamovi also provides an “R Syntax Mode”, in this mode, jamovi produces
   equivalent R code for each analysis. To change to syntax mode, select the
   application menu (⋮) at the top right of jamovi, and check the ``Syntax
   mode`` checkbox there. It is possible to leave syntax mode by clicking this
   a second time.

   In syntax mode, analyses continue to operate as before, but now they produce
   R syntax, and “ASCII output” like an R session. Like all results objects in
   jamovi, you can right click on these items (including the R syntax) and copy
   and paste them, for example, into an R session.

   |r-syntax|

   At present, the provided R syntax does not include the data import step, and
   this must be performed manually. There are many resources explaining how to
   import data into R, and we recommend you take a look at these (Most analyses
   in jamovi require data as a data frame).

   Another R feature that may be of interest is the `Rj module 
   <https://blog.jamovi.org/2018/07/30/rj.html>`__, which allows you to use R
   code to analyse data directly in jamovi.

.. ---------------------------------------------------------------------

.. |r-syntax|            image:: ../_images/um_rSyntax.*
   :width: 100%

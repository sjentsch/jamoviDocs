.. sectionauthor:: Jonathon Love

=====================
Debugging an Analysis
=====================

   Hopefully you got throw the last section without encountering any errors in your analysis. In this section, we’ll explore how to debug an analysis which is
   going wrong. For example, if we change our ``.run()`` function to produce an error:
   
   .. code:: R

      ttestISClass <- R6Class("ttestISClass",
          inherit=ttestISBase,
          private=list(
              .run=function() {

                  t.test(c(Inf, 3))  # <-- produces an error!
              })
      )


   We receive the following error message.

   |error|

   In this example, our code is only one line of code, so we can be reasonably confident where the problem lies. However, in practice software can be two or
   three or even more lines of code. In more complex situations, it can be handy to have a ‘stack trace’ which tells us where the problem occurred. jamovi can
   be placed in ‘dev mode’, which displays stack traces when errors occur. dev mode can be toggled from the app menu to the top right of the jamovi window:

   |dev-mode|

   With dev mode turned on, we can see the stack trace and see that the call to ``t.test(c(Inf, 3))`` is responsible for the error.

   |stack|

   When developing jamovi modules, it’s best to just leave dev mode on.


.. ---------------------------------------------------------------------------------

.. |error|                             image:: ../_images/dh_tut_15-debugging-an-analysis-error.png
   :width: 290px
.. |dev-mode|                          image:: ../_images/dh_tut_15-debugging-an-analysis-dev-mode.png
   :width: 294px
.. |stack|                             image:: ../_images/dh_tut_15-debugging-an-analysis-stack.png
   :width: 356px

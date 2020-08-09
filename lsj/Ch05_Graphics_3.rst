.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Bar graphs
----------

Another form of graph that you often want to plot is the **bar graph**. Let’s
use the ``afl.finalists`` data set with the ``afl.finalists`` variable that I
introduced in `Mode <Ch04_Descriptives_1.html#mode>`__. What I want to do is
draw a bar graph that displays the number of finals that each team has played
in over the time spanned by the ``afl.finalists`` data set. There are lots of
teams, but I am particularly interested in just four: Brisbane, Carlton,
Fremantle and Richmond. So the first step is to set up a filter so just those
four teams are included in the bar graph. This is straightforward in jamovi
and you can do it by using the ``Filters`` function that we used previously. Open
up the ``Filters`` screen and type in the following:

``afl.finalists == "Brisbane" or afl.finalists == "Carlton" or afl.finalists == "Fremantle" or afl.finalists == "Richmond"``\ [#]_

When you have done this you will see, in the ``Data`` view, that jamovi has
filtered out all values apart from those we have specified. Next, open up the
``Exploration`` → ``Descriptives`` window and click on the ``Bar plot`` check
box (remember to move the ``afl.finalists`` variable across into the
``Variables`` box so that jamovi knows which variable to use). You should then
get a bar graph, something like that shown in :numref:`fig-bar1`.

.. ----------------------------------------------------------------------------

.. _fig-bar1:
.. figure:: ../_images/lsj_bar1.*
   :alt: Bar plot in jamovi, showing just four AFL teams

   Filtering to include just four AFL teams, and drawing a bar plot in jamovi
   
.. ----------------------------------------------------------------------------

Saving image files using jamovi
-------------------------------

Hold on, you might be thinking. What’s the good of being able to draw
pretty pictures in jamovi if I can’t save them and send them to friends
to brag about how awesome my data is? How do I save the picture?
Simples. Just right click on the plot image and save it to a file,
either as ``eps`, ``svg`` or ``pdf``. These formats all produce nice images
that you can the send to your friends, or include in your assignments or
papers.

------

.. [#]
   jamovi uses the symbol “``==``” here to mean “matches”.

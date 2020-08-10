.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Extracting a subset of the data
-------------------------------

One very important kind of data handling is being able to extract a particular
subset of the data. For instance, you might be interested only in analysing the
data from one experimental condition, or you may want to look closely at the
data from people over 50 years in age. To do this, the first step is getting
jamovi to filter the subset of the data corresponding to the observations that
you’re interested in.

This section returns to the ``nightgarden`` data set. If you’re reading this
whole chapter in one sitting, then you should already have this data set loaded
into a jamovi window. For this section, let’s focus on the two variables
``speaker`` and ``utterance`` (see `Tabulating and cross-tabulating data
<Ch06_DataHandling_1.html#tabulating-and-cross-tabulating-data>`__ if you’ve
forgotten what those variables look like). Suppose that what I want to do is
pull out only those utterances that were made by ``makka-pakka``. To that end, we
need to specify a filter in jamovi. First open up a filter window by clicking
on ``Filters`` on the main jamovi ``Data`` toolbar. Then, in the ``Filter 1``
text box, next to the ``=`` sign, type the following:

.. code-block:: rout

   speaker == "makka-pakka"

When you have done this, you will see that a new column has been added to the
spreadsheet window (see :numref:`fig-subset1`), labelled ``Filter 1``, with the
cases where ``speaker`` is not ``makka-pakka`` greyed-out (i.e., filtered out)
and, conversely, the cases where ``speaker`` is ``makka-pakka`` have a green
check mark indicating they are filtered in. You can test this by running
``Exploration`` → ``Descriptives``, assigning ``speaker`` to the ``Variables``-
box and checking ``Frequency tables``. Go on, try it, and see what that shows!

.. ----------------------------------------------------------------------------

.. _fig-subset1:
.. figure:: ../_images/lsj_subset1.*
   :alt: Creating a subset using ``Filters``

   Creating a subset of the ``nightgarden``-data using the jamovi ``Filters``
   option
   
.. ----------------------------------------------------------------------------

Following on from this simple example, you can also build up more complex
filters using logical expressions in jamovi. For instance, suppose I wanted to
keep only those cases when the utterance is either ``pip`` or ``oo``. In this
case in the ``Filter 1`` text box, next to the ``=`` sign, you would type the
following:

.. code-block:: rout

   utterance == "pip" or utterance == "oo"

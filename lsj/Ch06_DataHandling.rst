.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Pragmatic matters
=================

.. epigraph::

   *The garden of life never seems to confine itself*
   *to the plots philosophers have laid out for its convenience.*
   *Maybe a few more tractors would do the trick.*
     
   -- Roger Zelazny\ [#]_

This is a somewhat strange chapter, even by my standards. My goal in
this chapter is to talk a bit more honestly about the realities of
working with data than you’ll see anywhere else in the book. The problem
with real world data sets is that they are *messy*. Very often the data
file that you start out with doesn’t have the variables stored in the
right format for the analysis you want to do. Sometimes there might be a
lot of missing values in your data set. Sometimes you only want to
analyse a subset of the data. Et cetera. In other words, there’s a lot
of **data manipulation** that you need to do just to get the variables
in your data set into the format that you need it. The purpose of this
chapter is to provide a basic introduction to these pragmatic topics.
Although the chapter is motivated by the kinds of practical issues that
arise when manipulating real data, I’ll stick with the practice that
I’ve adopted through most of the book and rely on very small, toy data
sets that illustrate the underlying issue. Because this chapter is
essentially a collection of techniques and doesn’t tell a single
coherent story, it may be useful to start with a list of topics:

- `Tabulating and cross-tabulating data
  <Ch06_DataHandling_1.html#tabulating-and-cross-tabulating-data>`__
  
- `Logical expressions in jamovi
  <Ch06_DataHandling_2.html#logical-expressions-in-jamovi>`__

- `Transforming or recoding a variable
  <Ch06_DataHandling_3.html#transforming-or-recoding-a-variable>`__

- `Mathematical functions and operations
  <Ch06_DataHandling_4.html#a-few-more-mathematical-functions-and-operations>`__

- `Extracting a subset of the data
  <Ch06_DataHandling_5.html#extracting-a-subset-of-the-data>`__

As you can see, the list of topics that the chapter covers is pretty
broad, and there’s a *lot* of content there. Even though this is one of
the longest and hardest chapters in the book, I’m really only scratching
the surface of several fairly different and important topics. My advice,
as usual, is to read through the chapter once and try to follow as much
of it as you can. Don’t worry too much if you can’t grasp it all at
once, especially the later sections. The rest of the book is only
lightly reliant on this chapter so you can get away with just
understanding the basics. However, what you’ll probably find is that
later on you’ll need to flick back to this chapter in order to
understand some of the concepts that I refer to here.

.. toctree::
   :hidden:

   Ch06_DataHandling_1
   Ch06_DataHandling_2
   Ch06_DataHandling_3
   Ch06_DataHandling_4
   Ch06_DataHandling_5

------

.. [#]
   The quote comes from *Home is the Hangman*, published in 1975.

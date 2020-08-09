.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Hypothesis testing
==================

.. epigraph::

   | *The process of induction is the process of assuming the simplest
     law that can be made to harmonize with our experience. This
     process, however, has no logical foundation but only a
     psychological one. It is clear that there are no grounds for
     believing that the simplest course of events will really happen. It
     is an hypothesis that the sun will rise tomorrow: and this means
     that we do not know whether it will rise.*
     
   -- Ludwig Wittgenstein\ [#]_

In the last chapter I discussed the ideas behind estimation, which is
one of the two “big ideas” in inferential statistics. It’s now time to
turn our attention to the other big idea, which is *hypothesis testing*.
In its most abstract form, hypothesis testing is really a very simple
idea. The researcher has some theory about the world and wants to
determine whether or not the data actually support that theory. However,
the details are messy and most people find the theory of hypothesis
testing to be the most frustrating part of statistics. The structure of
the chapter is as follows. First, I’ll describe how hypothesis testing
works in a fair amount of detail, using a simple running example to show
you how a hypothesis test is “built”. I’ll try to avoid being too
dogmatic while doing so, and focus instead on the underlying logic of
the testing procedure.\ [#]_ Afterwards, I’ll spend a bit of time talking
about the various dogmas, rules and heresies that surround the theory of
hypothesis testing.

.. toctree::
   :hidden:
   
   Ch09_HypothesisTesting_01
   Ch09_HypothesisTesting_02
   Ch09_HypothesisTesting_03
   Ch09_HypothesisTesting_04
   Ch09_HypothesisTesting_05
   Ch09_HypothesisTesting_06
   Ch09_HypothesisTesting_07
   Ch09_HypothesisTesting_08
   Ch09_HypothesisTesting_09
   Ch09_HypothesisTesting_10

------

.. [#]
   The quote comes from Wittgenstein’s (1922) text, *Tractatus
   Logico-Philosphicus*.

.. [#]
   A technical note. The description below differs subtly from the
   standard description given in a lot of introductory texts. The
   orthodox theory of null hypothesis testing emerged from the work of
   Sir Ronald Fisher and Jerzy Neyman in the early 20th century; but
   Fisher and Neyman actually had very different views about how it
   should work. The standard treatment of hypothesis testing that most
   texts use is a hybrid of the two approaches. The treatment here is a
   little more Neyman-style than the orthodox view, especially as
   regards the meaning of the *p* value.

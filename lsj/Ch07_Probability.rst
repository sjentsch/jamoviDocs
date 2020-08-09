.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Introduction to probability
===========================

.. epigraph::

   | *[God] has afforded us only the twilight … of Probability.*
   
   -- John Locke

Up to this point in the book we’ve discussed some of the key ideas in
experimental design, and we’ve talked a little about how you can
summarise a data set. To a lot of people this is all there is to
statistics: collecting all the numbers, calculating averages, drawing
pictures, and putting them all in a report somewhere. Kind of like stamp
collecting but with numbers. However, statistics covers much more than
that. In fact, descriptive statistics is one of the smallest parts of
statistics and one of the least powerful. The bigger and more useful
part of statistics is that it provides information that lets you make
inferences about data.

Once you start thinking about statistics in these terms, that statistics
is there to help us draw inferences from data, you start seeing examples
of it everywhere. For instance, here’s a tiny extract from a newspaper
article in the Sydney Morning Herald (30 Oct 2010):

   “I have a tough job,” the Premier said in response to a poll which
   found her government is now the most unpopular Labor administration
   in polling history, with a primary vote of just 23 per cent.

This kind of remark is entirely unremarkable in the papers or in
everyday life, but let’s have a think about what it entails. A polling
company has conducted a survey, usually a pretty big one because they
can afford it. I’m too lazy to track down the original survey so let’s
just imagine that they called 1000 New South Wales (NSW) voters at
random, and 230 (23%) of those claimed that they intended to vote for
the Australian Labor Party (ALP). For the 2010 Federal election the
Australian Electoral Commission reported 4,610,795 enrolled voters in
NSW, so the opinions of the remaining 4,609,795 voters (about 99.98% of
voters) remain unknown to us. Even assuming that no-one lied to the
polling company the only thing we can say with 100% confidence is that
the true ALP primary vote is somewhere between 230/4610795 (about
\0.005%) and 4610025/4610795 (about 99.83%). So, on what basis is it
legitimate for the polling company, the newspaper, and the readership to
conclude that the ALP primary vote is only about 23%?

The answer to the question is pretty obvious. If I call 1000 people at
random, and 230 of them say they intend to vote for the ALP, then it
seems very unlikely that these are the *only* 230 people out of the
entire voting public who actually intend to vote ALP. In other words, we
assume that the data collected by the polling company is pretty
representative of the population at large. But how representative? Would
we be surprised to discover that the true ALP primary vote is actually
24%? 29%? 37%? At this point everyday intuition starts to break down a
bit. No-one would be surprised by 24%, and everybody would be surprised
by 37%, but it’s a bit hard to say whether 29% is plausible. We need
some more powerful tools than just looking at the numbers and guessing.

**Inferential statistics** provides the tools that we need to answer
these sorts of questions, and since these kinds of questions lie at the
heart of the scientific enterprise, they take up the lions share of
every introductory course on statistics and research methods. However,
the theory of statistical inference is built on top of **probability
theory**. And it is to probability theory that we must now turn. This
discussion of probability theory is basically background detail. There’s
not a lot of statistics per se in this chapter, and you don’t need to
understand this material in as much depth as the other chapters in this
part of the book. Nevertheless, because probability theory does underpin
so much of statistics, it’s worth covering some of the basics.

.. toctree::
   :hidden:
   
   Ch07_Probability_1
   Ch07_Probability_2
   Ch07_Probability_3
   Ch07_Probability_4
   Ch07_Probability_5
   Ch07_Probability_6
   Ch07_Probability_7

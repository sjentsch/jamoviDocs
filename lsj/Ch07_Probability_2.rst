.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

What does probability mean?
---------------------------

Let’s start with the first of these questions. What is “probability”? It
might seem surprising to you but while statisticians and mathematicians
(mostly) agree on what the *rules* of probability are, there’s much less
of a consensus on what the word really *means*. It seems weird because
we’re all very comfortable using words like “chance”, “likely”,
“possible” and “probable”, and it doesn’t seem like it should be a very
difficult question to answer. But if you’ve ever had that experience in
real life you might walk away from the conversation feeling like you
didn’t quite get it right, and that (like many everyday concepts) it
turns out that you don’t *really* know what it’s all about.

So I’ll have a go at it. Let’s suppose I want to bet on a soccer game
between two teams of robots, *Arduino Arsenal* and *C Milan*. After
thinking about it, I decide that there is an 80% probability of *Arduino
Arsenal* winning. What do I mean by that? Here are three possibilities:

-  They’re robot teams so I can make them play over and over again, and
   if I did that *Arduino Arsenal* would win 8 out of every 10 games on
   average.

-  For any given game, I would agree that betting on this game is only
   “fair” if a $1 bet on *C Milan* gives a $5 payoff (i.e. I get my $1
   back plus a $4 reward for being correct), as would a $4 bet on
   *Arduino Arsenal* (i.e., my $4 bet plus a $1 reward).

-  My subjective “belief” or “confidence” in an *Arduino Arsenal*
   victory is four times as strong as my belief in a *C Milan* victory.

Each of these seems sensible. However, they’re not identical and not
every statistician would endorse all of them. The reason is that there
are different statistical ideologies (yes, really!) and depending on
which one you subscribe to, you might say that some of those statements
are meaningless or irrelevant. In this section I give a brief
introduction the two main approaches that exist in the literature. These
are by no means the only approaches, but they’re the two big ones.

The frequentist view
~~~~~~~~~~~~~~~~~~~~

The first of the two major approaches to probability, and the more
dominant one in statistics, is referred to as the **frequentist view**
and it defines probability as a **long-run frequency**. Suppose we were
to try flipping a fair coin over and over again. By definition this is a
coin that has *P*\(H) = *0.5*. What might we observe? One possibility
is that the first 20 flips might look like this:

.. code-block::

   T,H,H,H,H,T,T,H,H,H,H,T,H,H,T,T,T,T,T,H

In this case 11 of these 20 coin flips (55%) came up heads. Now suppose
that I’d been keeping a running tally of the number of heads (which I’ll
call *N*\ :sub:`H`\ ) that I’ve seen, across the first *N* flips, and
calculate the proportion of heads *N*\ :sub:`H` / *N* every time. Here’s
what I’d get (I did literally flip coins to produce this!):

=============== ==== ==== ==== ==== ==== ==== ==== ==== ==== ====
number of flips 1    2    3    4    5    6    7    8    9    10  
number of heads 0    1    2    3    4    4    4    5    6    7   
proportion      0.00 0.50 0.67 0.75 0.80 0.67 0.57 0.63 0.67 0.70 
=============== ==== ==== ==== ==== ==== ==== ==== ==== ==== ====

=============== ==== ==== ==== ==== ==== ==== ==== ==== ==== ====
number of flips 11   12   13   14   15   16   17   18   19   20  
number of heads 8    8    9    10   10   10   10   10   10   11  
proportion      0.73 0.67 0.69 0.71 0.67 0.63 0.59 0.56 0.53 0.55 
=============== ==== ==== ==== ==== ==== ==== ==== ==== ==== ====

Notice that at the start of the sequence the *proportion* of heads
fluctuates wildly, starting at 0.00 and rising as high as 0.80. Later on,
one gets the impression that it dampens out a bit, with more and more of
the values actually being pretty close to the “right” answer of 0.50.
This is the frequentist definition of probability in a nutshell. Flip a
fair coin over and over again, and as *N* grows large (approaches
infinity, denoted *N* → ∞) the proportion of heads will converge to 50%.
There are some subtle technicalities that the mathematicians care about, but
qualitatively speaking that’s how the
frequentists define probability. Unfortunately, I don’t have an infinite
number of coins or the infinite patience required to flip a coin an
infinite number of times. However, I do have a computer and computers
excel at mindless repetitive tasks. So I asked my computer to simulate
flipping a coin 1000 times and then drew a picture of what happens to
the proportion *N*\ :sub:`H` / *N* as *N* increases. Actually, I did
it four times just to make sure it wasn’t a fluke. The results are shown
in :numref:`fig-frequentistProb`. As you can see, the *proportion of observed
heads* eventually stops fluctuating and settles down. When it does, the number
at which it finally settles is the true probability of heads.

.. ----------------------------------------------------------------------------

.. _fig-frequentistProb:
.. figure:: ../_images/lsj_frequentistProb.*
   :alt: Illustration of how frequentist probability works

   Illustration of how frequentist probability works: If you flip a fair coin
   over and over again the proportion of heads that you’ve seen eventually
   settles down and converges to the true probability of 0.5. Each panel shows
   four different simulated experiments. In each case we pretend we flipped a
   coin 1000 times and kept track of the proportion of flips that were heads
   as we went along. Although none of these sequences actually ended up with an
   exact value of 0.5, if we’d extended the experiment for an infinite number
   of coin flips they would have.
   
.. ----------------------------------------------------------------------------

The frequentist definition of probability has some desirable
characteristics. First, it is objective. The probability of an event is
*necessarily* grounded in the world. The only way that probability
statements can make sense is if they refer to (a sequence of) events
that occur in the physical universe.\ [#]_ Secondly, it is unambiguous.
Any two people watching the same sequence of events unfold, trying to
calculate the probability of an event, must inevitably come up with the
same answer.

However, it also has undesirable characteristics. First, infinite
sequences don’t exist in the physical world. Suppose you picked up a
coin from your pocket and started to flip it. Every time it lands it
impacts on the ground. Each impact wears the coin down a bit. Eventually
the coin will be destroyed. So, one might ask whether it really makes
sense to pretend that an “infinite” sequence of coin flips is even a
meaningful concept, or an objective one. We can’t say that an “infinite
sequence” of events is a real thing in the physical universe, because
the physical universe doesn’t allow infinite anything. More seriously,
the frequentist definition has a narrow scope. There are lots of things
out there that human beings are happy to assign probability to in
everyday language, but cannot (even in theory) be mapped onto a
hypothetical sequence of events. For instance, if a meteorologist comes
on TV and says “the probability of rain in Adelaide on 2 November 2048
is 60%” we humans are happy to accept this. But it’s not clear how to
define this in frequentist terms. There’s only one city of Adelaide, and
only one 2 November 2048. There’s no infinite sequence of events here,
just a one-off thing. Frequentist probability genuinely *forbids* us
from making probability statements about a single event. From the
frequentist perspective it will either rain tomorrow or it will not.
There is no “probability” that attaches to a single non-repeatable
event. Now, it should be said that there are some very clever tricks
that frequentists can use to get around this. One possibility is that
what the meteorologist means is something like “There is a category of
days for which I predict a 60% chance of rain, and if we look only
across those days for which I make this prediction, then on 60% of those
days it will actually rain”. It’s very weird and counterintuitive to
think of it this way, but you do see frequentists do this sometimes. And
it *will* come up later in this book (see `Estimating a confidence interval 
<Ch08_Estimation_5.html#estimating-a-confidence-interval>`__).

The Bayesian view
~~~~~~~~~~~~~~~~~

The **Bayesian view** of probability is often called the subjectivist
view, and although it has been a minority view among statisticians it
has been steadily gaining traction for the last several decades. There
are many flavours of Bayesianism, making it hard to say exactly what
“the” Bayesian view is. The most common way of thinking about subjective
probability is to define the probability of an event as the **degree of
belief** that an intelligent and rational agent assigns to that truth of
that event. From that perspective, probabilities don’t exist in the
world but rather in the thoughts and assumptions of people and other
intelligent beings.

However, in order for this approach to work we need some way of
operationalising “degree of belief”. One way that you can do this is to
formalise it in terms of “rational gambling”, though there are many
other ways. Suppose that I believe that there’s a 60% probability of
rain tomorrow. If someone offers me a bet that if it rains tomorrow then
I win $5, but if it doesn’t rain I lose $5. Clearly, from my
perspective, this is a pretty good bet. On the other hand, if I think
that the probability of rain is only 40% then it’s a bad bet to take. So
we can operationalise the notion of a “subjective probability” in terms
of what bets I’m willing to accept.

What are the advantages and disadvantages to the Bayesian approach? The
main advantage is that it allows you to assign probabilities to any
event you want to. You don’t need to be limited to those events that are
repeatable. The main disadvantage (to many people) is that we can’t be
purely objective. Specifying a probability requires us to specify an
entity that has the relevant degree of belief. This entity might be a
human, an alien, a robot, or even a statistician. But there has to be an
intelligent agent out there that believes in things. To many people this
is uncomfortable, it seems to make probability arbitrary. Whilst the
Bayesian approach requires that the agent in question be rational (i.e.,
obey the rules of probability), it does allow everyone to have their own
beliefs. I can believe the coin is fair and you don’t have to, even
though we’re both rational. The frequentist view doesn’t allow any two
observers to attribute different probabilities to the same event. When
that happens then at least one of them must be wrong. The Bayesian view
does not prevent this from occurring. Two observers with different
background knowledge can legitimately hold different beliefs about the
same event. In short, where the frequentist view is sometimes considered
to be too narrow (forbids lots of things that that we want to assign
probabilities to), the Bayesian view is sometimes thought to be too
broad (allows too many differences between observers).

What’s the difference? And who is right?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now that you’ve seen each of these two views independently it’s useful
to make sure you can compare the two. Go back to the hypothetical robot
soccer game at the start of the section. What do you think a frequentist
and a Bayesian would say about these three statements? Which statement
would a frequentist say is the correct definition of probability? Which
one would a Bayesian opt for? Would some of these statements be
meaningless to a frequentist or a Bayesian? If you’ve understood the two
perspectives you should have some sense of how to answer those
questions.

Okay, assuming you understand the difference then you might be wondering
which of them is *right*? Honestly, I don’t know that there is a right
answer. As far as I can tell there’s nothing mathematically incorrect
about the way frequentists think about sequences of events, and there’s
nothing mathematically incorrect about the way that Bayesians define the
beliefs of a rational agent. In fact, when you dig down into the details
Bayesians and frequentists actually agree about a lot of things. Many
frequentist methods lead to decisions that Bayesians agree a rational
agent would make. Many Bayesian methods have very good frequentist
properties.

For the most part, I’m a pragmatist so I’ll use any statistical method
that I trust. As it turns out, that makes me prefer Bayesian methods for
reasons I’ll explain towards the end of the book. But I’m not
fundamentally opposed to frequentist methods. Not everyone is quite so
relaxed. For instance, consider Sir Ronald Fisher, one of the towering
figures of 20th century statistics and a vehement opponent to all things
Bayesian, whose paper on the mathematical foundations of statistics
referred to Bayesian probability as “an impenetrable jungle [that]
arrests progress towards precision of statistical concepts” (`Fisher,
1922b <References.html#fisher-1922b>`__\ ). Or the psychologist Paul
Meehl, who suggests that relying on frequentist methods could turn you
into “a potent but sterile intellectual rake who leaves in his merry
path a long train of ravished maidens but no viable scientific offspring”
(`Meehl, 1967 <References.html#cronbach-1951>`__\ ; p. 114). The history
of statistics, as you might gather, is not devoid of entertainment.

In any case, whilst I personally prefer the Bayesian view, the majority
of statistical analyses are based on the frequentist approach. My
reasoning is pragmatic. The goal of this book is to cover roughly the
same territory as a typical undergraduate stats class in psychology, and
if you want to understand the statistical tools used by most
psychologists you’ll need a good grasp of frequentist methods. I promise
you that this isn’t wasted effort. Even if you end up wanting to switch
to the Bayesian perspective, you really should read through at least one
book on the “orthodox” frequentist view. Besides, I won’t completely
ignore the Bayesian perspective. Every now and then I’ll add some commentary
from a Bayesian point of view, and I’ll revisit the topic in more depth
in Chapter `Bayesian statistics <Ch16_Bayes.html#bayesian-statistics>`__.

------

.. [#]
   This doesn’t mean that frequentists can’t make hypothetical
   statements, of course. It’s just that if you want to make a statement
   about probability then it must be possible to redescribe that
   statement in terms of a sequence of potentially observable events,
   together with the relative frequencies of different outcomes that
   appear within that sequence.

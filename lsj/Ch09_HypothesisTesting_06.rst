.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Reporting the results of a hypothesis test
------------------------------------------

When writing up the results of a hypothesis test there’s usually several pieces
of information that you need to report, but it varies a fair bit from test to
test. Throughout the rest of the book I’ll spend a little time talking about
how to report the results of different tests (see Section `How to report the
results of the test
<Ch10_ChiSquare_1.html#how-to-report-the-results-of-the-test>`__ for a
particularly detailed example), so that you can get a feel for how it’s usually
done. However, regardless of what test you’re doing, the one thing that you
always have to do is say something about the *p* value and whether or not the
outcome was significant.

The fact that you have to do this is unsurprising, it’s the whole point of
doing the test. What might be surprising is the fact that there is some
contention over exactly how you’re supposed to do it. Leaving aside those
people who completely disagree with the entire framework underpinning null
hypothesis testing, there’s a certain amount of tension that exists
regarding whether or not to report the exact *p* value that you obtained,
or if you should state only that *p* < *α* for a significance level that
you chose in advance (e.g., *p* < 0.05).

The issue
~~~~~~~~~

To see why this is an issue, the key thing to recognise is that
*p* values are *terribly* convenient. In practice, the fact that
we can compute a *p* value means that we don’t actually have to
specify any *α* level at all in order to run the test.
Instead, what you can do is calculate your *p* value and interpret
it directly. If you get *p* = 0.062, then it means that you’d have
to be willing to tolerate a Type I error rate of 6.2% to justify
rejecting the null. If you personally find 6.2% intolerable then you
retain the null. Therefore, the argument goes, why don’t we just report
the actual *p* value and let the reader make up their own minds
about what an acceptable Type I error rate is? This approach has the big
advantage of “softening” the decision making process. In fact, if you
accept the Neyman definition of the *p* value, that’s the whole
point of the *p* value. We no longer have a fixed significance
level of *α* = 0.05 as a bright line separating “accept” from
“reject” decisions, and this removes the rather pathological problem of
being forced to treat *p* = 0.051 in a fundamentally different way
to *p* = 0.049.

This flexibility is both the advantage and the disadvantage to the
*p* value. The reason why a lot of people don’t like the idea of
reporting an exact *p* value is that it gives the researcher a bit
*too much* freedom. In particular, it lets you change your mind about
what error tolerance you’re willing to put up with *after* you look at
the data. For instance, consider my ESP experiment. Suppose I ran my
test and ended up with a *p* value of 0.09. Should I accept or
reject? Now, to be honest, I haven’t yet bothered to think about what
level of Type I error I’m “really” willing to accept. I don’t have an
opinion on that topic. But I *do* have an opinion about whether or not
ESP exists, and I *definitely* have an opinion about whether my research
should be published in a reputable scientific journal. And amazingly,
now that I’ve looked at the data I’m starting to think that a 9% error
rate isn’t so bad, especially when compared to how annoying it would be
to have to admit to the world that my experiment has failed. So, to
avoid looking like I just made it up after the fact, I now say that my
*α* is 0.1, with the argument that a 10% type I error rate
isn’t too bad and at that level my test is significant! I win.

In other words, the worry here is that I might have the best of
intentions, and be the most honest of people, but the temptation to just
“shade” things a little bit here and there is really, really strong. As
anyone who has ever run an experiment can attest, it’s a long and
difficult process and you often get *very* attached to your hypotheses.
It’s hard to let go and admit the experiment didn’t find what you wanted
it to find. And that’s the danger here. If we use the “raw”
*p*-value, people will start interpreting the data in terms of
what they *want* to believe, not what the data are actually saying and,
if we allow that, why are we even bothering to do science at all? Why
not let everyone believe whatever they like about anything, regardless
of what the facts are? Okay, that’s a bit extreme, but that’s where the
worry comes from. According to this view, you really *must* specify your
*α* value in advance and then only report whether the test
was significant or not. It’s the only way to keep ourselves honest.

Two proposed solutions
~~~~~~~~~~~~~~~~~~~~~~

In practice, it’s pretty rare for a researcher to specify a single
*α* level ahead of time. Instead, the convention is that
scientists rely on three standard significance levels: 0.05, 0.01 and
.001. When reporting your results, you indicate which (if any) of these
significance levels allow you to reject the null hypothesis. This is
summarised in :numref:`tab-pvaltable`. This allows us to soften
the decision rule a little bit, since *p* < 0.01 implies that the
data meet a stronger evidential standard than *p* < 0.05 would.
Nevertheless, since these levels are fixed in advance by convention, it
does prevent people choosing their *α* level after looking at
the data.

.. _tab-pvaltable:
.. table:: A commonly adopted convention for reporting *p*
   values: in many places it is conventional to report one of four
   different things (e.g., *p* < 0.05) as shown below. I’ve included
   the “significance stars” notation (i.e., a \* indicates
   *p* < 0.05) because you sometimes see this notation produced by
   statistical software. It’s also worth noting that some people will
   write *n.s.* (not significant) rather than *p* > 0.05.

   +-------------+---------+------------------------------+----------+
   | Usual       | Signif. | English                      | The null |
   | notation    | stars   | translation                  | is...    |
   +=============+=========+==============================+==========+
   | *p* > 0.05  |         | The test wasn’t significant. | Retained |
   +-------------+---------+------------------------------+----------+
   | *p* < 0.05  | \*      | The test was significant     | Rejected |
   |             |         | at *α* = 0.05; but not at    |          |
   |             |         | *α* =.01 or *α* = 0.001.     |          |
   +-------------+---------+------------------------------+----------+
   | *p* < 0.01  | \*\*    | The test was significant at  | Rejected |
   |             |         | *α* = 0.05 and *α* = 0.01;   |          |
   |             |         | but not at *α* = 0.001.      |          |
   +-------------+---------+------------------------------+----------+
   | *p* < 0.001 | \*\*\*  | The test was significant at  | Rejected |
   |             |         | all levels                   |          |
   +-------------+---------+------------------------------+----------+

Nevertheless, quite a lot of people still prefer to report exact
*p* values. To many people, the advantage of allowing the reader
to make up their own mind about how to interpret *p* = 0.06
outweighs any disadvantages. In practice, however, even among those
researchers who prefer exact *p* values it is quite common to just
write *p* < 0.001 instead of reporting an exact value for small
*p*. This is in part because a lot of software doesn’t actually
print out the *p* value when it’s that small (e.g., SPSS just
writes *p* = 0.000 whenever *p* < 0.001), and in part because a
very small *p* value can be kind of misleading. The human mind
sees a number like 0.0000000001 and it’s hard to suppress the gut feeling
that the evidence in favour of the alternative hypothesis is a near
certainty. In practice however, this is usually wrong. Life is a big,
messy, complicated thing, and every statistical test ever invented
relies on simplifications, approximations and assumptions. As a
consequence, it’s probably not reasonable to walk away from *any*
statistical analysis with a feeling of confidence stronger than
*p* < 0.001 implies. In other words, *p* < 0.001 is really code
for “as far as *this test* is concerned, the evidence is overwhelming.”

In light of all this, you might be wondering exactly what you should do.
There’s a fair bit of contradictory advice on the topic, with some
people arguing that you should report the exact *p* value, and
other people arguing that you should use the tiered approach illustrated
in :numref:`tab-pvaltable`. As a result, the best advice I can
give is to suggest that you look at papers/reports written in your field
and see what the convention seems to be. If there doesn’t seem to be any
consistent pattern, then use whichever method you prefer.

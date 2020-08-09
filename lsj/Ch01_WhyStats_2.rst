.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

The curse of belief bias
~~~~~~~~~~~~~~~~~~~~~~~~

People are mostly pretty smart. We’re certainly smarter than the other
species that we share the planet with (though many people might
disagree). Our minds are quite amazing things, and we seem to be capable
of the most incredible feats of thought and reason. That doesn’t make us
perfect though. And among the many things that psychologists have shown
over the years is that we really do find it hard to be neutral, to
evaluate evidence impartially and without being swayed by pre-existing
biases. A good example of this is the **belief bias effect** in logical
reasoning: if you ask people to decide whether a particular argument is
logically valid (i.e., conclusion would be true if the premises were
true), we tend to be influenced by the believability of the conclusion,
even when we shouldn’t. For instance, here’s a valid argument where the
conclusion is believable:

   | All cigarettes are expensive (Premise 1)
   | Some addictive things are inexpensive (Premise 2)
   | Therefore, some addictive things are not cigarettes (Conclusion)

And here’s a valid argument where the conclusion is not believable:

   | All addictive things are expensive (Premise 1)
   | Some cigarettes are inexpensive (Premise 2)
   | Therefore, some cigarettes are not addictive (Conclusion)

The logical *structure* of argument #2 is identical to the structure of
argument #1, and they’re both valid. However, in the second argument,
there are good reasons to think that premise 1 is incorrect, and as a
result it’s probably the case that the conclusion is also incorrect. But
that’s entirely irrelevant to the topic at hand; an argument is
deductively valid if the conclusion is a logical consequence of the
premises. That is, a valid argument doesn’t have to involve true
statements.

On the other hand, here’s an invalid argument that has a believable
conclusion:

   | All addictive things are expensive (Premise 1)
   | Some cigarettes are inexpensive (Premise 2)
   | Therefore, some addictive things are not cigarettes (Conclusion)

And finally, an invalid argument with an unbelievable conclusion:

   | All cigarettes are expensive (Premise 1)
   | Some addictive things are inexpensive (Premise 2)
   | Therefore, some cigarettes are not addictive (Conclusion)

Now, suppose that people really are perfectly able to set aside their
pre-existing biases about what is true and what isn’t, and purely
evaluate an argument on its logical merits. We’d expect 100% of people
to say that the valid arguments are valid, and 0% of people to say that
the invalid arguments are valid. So if you ran an experiment looking at
this, you’d expect to see data like this:

+---------------------+-----------------------+------------------------+
|                     | conclusion feels true | conclusion feels false |
+=====================+=======================+========================+
| argument is valid   | 100% say “valid”      | 100% say “valid”       |
+---------------------+-----------------------+------------------------+
| argument is invalid | 0% say “valid”        | 0% say “valid”         |
+---------------------+-----------------------+------------------------+

If the psychological data looked like this (or even a good approximation
to this), we might feel safe in just trusting our gut instincts. That
is, it’d be perfectly okay just to let scientists evaluate data based on
their common sense, and not bother with all this murky statistics stuff.
However, you guys have taken psych classes, and by now you probably know
where this is going.

In a classic study, `Evans et al. (1983) <References.html#evans-1983>`__ ran an
experiment looking at exactly this. What they found is that when pre-existing
biases (i.e., beliefs) were in agreement with the structure of the data,
everything went the way you’d hope:

+---------------------+-----------------------+------------------------+
|                     | conclusion feels true | conclusion feels false |
+=====================+=======================+========================+
| argument is valid   | 92% say “valid”       |                        |
+---------------------+-----------------------+------------------------+
| argument is invalid |                       | 8% say “valid”         |
+---------------------+-----------------------+------------------------+

Not perfect, but that’s pretty good. But look what happens when our
intuitive feelings about the truth of the conclusion run against the
logical structure of the argument:

+---------------------+-----------------------+------------------------+
|                     | conclusion feels true | conclusion feels false |
+=====================+=======================+========================+
| argument is valid   | 92% say “valid”       | **46% say “valid”**    |
+---------------------+-----------------------+------------------------+
| argument is invalid | **92% say “valid”**   | 8% say “valid”         |
+---------------------+-----------------------+------------------------+

Oh dear, that’s not as good. Apparently, when people are presented with
a strong argument that contradicts our pre-existing beliefs, we find it
pretty hard to even perceive it to be a strong argument (people only did
so 46% of the time). Even worse, when people are presented with a weak
argument that agrees with our pre-existing biases, almost no-one can see
that the argument is weak (people got that one wrong 92% of the
time!).\ [#]_

If you think about it, it’s not as if these data are horribly damning.
Overall, people did do better than chance at compensating for their
prior biases, since about 60% of people’s judgements were correct (you’d
expect 50% by chance). Even so, if you were a professional “evaluator of
evidence”, and someone came along and offered you a magic tool that
improves your chances of making the right decision from 60% to (say)
95%, you’d probably jump at it, right? Of course you would. Thankfully,
we actually do have a tool that can do this. But it’s not magic, it’s
statistics. So that’s reason #1 why scientists love statistics. It’s
just *too easy* for us to “believe what we want to believe”. So instead,
if we want to “believe in the data”, we’re going to need a bit of help
to keep our personal biases under control. That’s what statistics does,
it helps keep us honest.

------

.. [#]
   In my more cynical moments I feel like this fact alone explains 95%
   of what I read on the internet.

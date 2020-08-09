.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

The cautionary tale of Simpson’s paradox
----------------------------------------

The following is a true story (I think!). In 1973, the University of
California, Berkeley had some worries about the admissions of students
into their postgraduate courses. Specifically, the thing that caused the
problem was that the gender breakdown of their admissions, which looked
like this:

.. tabularcolumns:: |l|r|r|

+---------+----------------------+------------------+
|         | Number of applicants | Percent admitted |
+=========+======================+==================+
| Males   |                 8442 |              44% |
+---------+----------------------+------------------+
| Females |                 4321 |              35% |
+---------+----------------------+------------------+

Given this, they were worried about being sued!\ [#]_ Given that there
were nearly 13,000 applicants, a difference of 9% in admission rates
between males and females is just way too big to be a coincidence.
Pretty compelling data, right? And if I were to say to you that these
data *actually* reflect a weak bias in favour of women (sort of!), you’d
probably think that I was either crazy or sexist.

Oddly, it’s actually sort of true. When people started looking more
carefully at the they told a rather different story (`Bickel et al., 1975
<References.html#bickel-1975>`__\ ). Specifically, when they looked at
it on a department by department basis, it turned out that most of the
departments actually had a slightly *higher* success rate for female
applicants than for male applicants. The table below shows the admission
figures for the six largest departments (with the names of the
departments removed for privacy reasons):

.. tabularcolumns:: |l|r|r|r|r|

+------------+-------------------------------+-------------------------------+
|            | Males                         | Females                       |
+------------+------------+------------------+------------+------------------+
| Department | Applicants | Percent admitted | Applicants | Percent admitted |
+============+============+==================+============+==================+
| A          |        825 |              62% |        108 |              82% |
+------------+------------+------------------+------------+------------------+
| B          |        560 |              63% |         25 |              68% |
+------------+------------+------------------+------------+------------------+
| C          |        325 |              37% |        593 |              34% |
+------------+------------+------------------+------------+------------------+
| D          |        417 |              33% |        375 |              35% |
+------------+------------+------------------+------------+------------------+
| E          |        191 |              28% |        393 |              24% |
+------------+------------+------------------+------------+------------------+
| F          |        272 |               6% |        341 |               7% |
+------------+------------+------------------+------------+------------------+

Remarkably, most departments had a *higher* rate of admissions for
females than for males! Yet the overall rate of admission across the
university for females was *lower* than for males. How can this be? How
can both of these statements be true at the same time?

Here’s what’s going on. Firstly, notice that the departments are *not*
equal to one another in terms of their admission percentages: some
departments (e.g., A, B) tended to admit a high percentage of the
qualified applicants, whereas others (e.g., F) tended to reject most of
the candidates, even if they were high quality. So, among the six
departments shown above, notice that department A is the most generous,
followed by B, C, D, E and F in that order. Next, notice that males and
females tended to apply to different departments. If we rank the
departments in terms of the total number of male applicants, we get
**A** > **B** > D > C > F > E (the “easy” departments are in bold). On the
whole, males tended to apply to the departments that had high admission rates.
Now compare this to how the female applicants distributed themselves. Ranking
the departments in terms of the total number of female applicants produces a
quite different ordering C > E > D > F > **A** > **B**.
In other words, what these data seem to be suggesting is that the female
applicants tended to apply to “harder” departments. And in fact, if we
look at :numref:`fig-berkeley` we see that this trend is systematic, and
quite striking. This effect is known as **Simpson’s paradox**. It’s not common,
but it does happen in real life, and most people are very surprised by it when
they first encounter it, and many people refuse to even believe that it’s real.
It is very real. And while there are lots of very subtle statistical lessons
buried in there, I want to use it to make a much more important point: doing
research is hard, and there are *lots* of subtle, counter-intuitive traps lying
in wait for the unwary. That’s reason #2 why scientists love statistics,
and why we teach research methods. Because science is hard, and the
truth is sometimes cunningly hidden in the nooks and crannies of
complicated data.

.. ----------------------------------------------------------------------------

.. _fig-berkeley:
.. figure:: ../_images/lsj_berkeleyadmissions.*
   :alt: Berkeley 1973 college admissions data

   The Berkeley 1973 college admissions data. This figure plots the admission
   rate for the 85 departments that had at least one female applicant, as a
   function of the percentage of applicants that were female. The plot is a
   redrawing of Figure 1 from `Bickel et al. (1975) <References.html#bickel-1975>`__.
   Circles plot departments with more than 40 applicants; the area of the circle is
   proportional to the total number of applicants. The crosses plot departments
   with fewer than 40 applicants.
   
.. ----------------------------------------------------------------------------

Before leaving this topic entirely, I want to point out something else
really critical that is often overlooked in a research methods class.
Statistics only solves *part* of the problem. Remember that we started
all this with the concern that Berkeley’s admissions processes might be
unfairly biased against female applicants. When we looked at the
“aggregated” data, it did seem like the university was discriminating
against women, but when we “disaggregate” and looked at the individual
behaviour of all the departments, it turned out that the actual
departments were, if anything, slightly biased in favour of women. The
gender bias in total admissions was caused by the fact that women tended
to self-select for harder departments. From a legal perspective, that
would probably put the university in the clear. Postgraduate admissions
are determined at the level of the individual department, and there are
good reasons to do that. At the level of individual departments the
decisions are more or less unbiased (the weak bias in favour of females
at that level is small, and not consistent across departments). Since
the university can’t dictate which departments people choose to apply
to, and the decision making takes place at the level of the department
it can hardly be held accountable for any biases that those choices
produce.

That was the basis for my somewhat glib remarks earlier, but that’s not
exactly the whole story, is it? After all, if we’re interested in this
from a more sociological and psychological perspective, we might want to
ask *why* there are such strong gender differences in applications. Why
do males tend to apply to engineering more often than females, and why
is this reversed for the English department? And why is it the case that
the departments that tend to have a female-application bias tend to have
lower overall admission rates than those departments that have a
male-application bias? Might this not still reflect a gender bias, even
though every single department is itself unbiased? It might. Suppose,
hypothetically, that males preferred to apply to “hard sciences” and
females prefer “humanities”. And suppose further that the reason for why
the humanities departments have low admission rates is because the
government doesn’t want to fund the humanities (Ph.D. places, for
instance, are often tied to government funded research projects). Does
that constitute a gender bias? Or just an unenlightened view of the
value of the humanities? What if someone at a high level in the
government cut the humanities funds because they felt that the
humanities are “useless chick stuff”. That seems pretty *blatantly*
gender biased. None of this falls within the purview of statistics, but
it matters to the research project. If you’re interested in the overall
structural effects of subtle gender biases, then you probably want to
look at *both* the aggregated and disaggregated data. If you’re
interested in the decision making process at Berkeley itself then you’re
probably only interested in the disaggregated data.

In short there are a lot of critical questions that you can’t answer
with statistics, but the answers to those questions will have a huge
impact on how you analyse and interpret data. And this is the reason why
you should always think of statistics as a *tool* to help you learn
about your data. No more and no less. It’s a powerful tool to that end,
but there’s no substitute for careful thought.

------

.. [#]
   Earlier versions of these notes incorrectly suggested that they
   actually were sued. But that’s not true. There’s a nice commentary on
   this here:
   https://www.refsmmat.com/posts/2016-05-08-simpsons-paradox-berkeley.html.
   A big thank you to Wilfried Van Hirtum for pointing this out to me.

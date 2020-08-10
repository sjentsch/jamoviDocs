.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

A few more mathematical functions and operations
------------------------------------------------

In the previous section, I discussed the ideas behind variable transformations
and showed that a lot of the transformations that you might want to apply to
your data are based on fairly simple mathematical functions and operations. In
this section I want to return to that discussion and mention several other
mathematical functions and arithmetic operations that are actually quite useful
for a lot of real world data analysis. :numref:`tab-mathfunc` gives a brief
overview of the various mathematical functions I want to talk about here, or
later.\ [#]_ Obviously this doesn’t even come close to cataloguing the range of
possibilities available, but it does cover a range of functions that are used
regularly in data analysis and that are available in jamovi.

.. _tab-mathfunc:
.. table:: Some of the mathematical functions available in jamovi

   +----------------+----------------------+----------------------+----------+
   |                | Function             | Example input        | (answer) |
   +================+======================+======================+==========+
   | Square root    | ``SQRT(x)``          | ``SQRT(25)``         | 5        |
   +----------------+----------------------+----------------------+----------+
   | Absolute value | ``ABS(x)``           | ``ABS(-23)``         | 23       |
   +----------------+----------------------+----------------------+----------+
   | Logarithm      | ``LOG10(x)``         | ``LOG10(1000)``      | 3        |
   | (base 10)      |                      |                      |          |
   +----------------+----------------------+----------------------+----------+
   | Logarithm      | ``LN(x)``            | ``LN(1000)``         | 6.908    |
   | (base *e*)     |                      |                      |          |
   +----------------+----------------------+----------------------+----------+
   | Exponentiation | ``EXP(x)``           | ``EXP(6.908)``       | 1000.245 |
   +----------------+----------------------+----------------------+----------+
   | Box-Cox        | ``BOXCOX(x, lamda)`` | ``BOXCOX(6.908, 3)`` | 109.551  |
   +----------------+----------------------+----------------------+----------+
   | Rounding to    | ``round()``          | ``round(1.32)``      | 1        |
   | nearest        |                      |                      |          |
   +----------------+----------------------+----------------------+----------+
   | Rounding down  | ``floor()``          | ``floor(1.32)``      | 1        |
   +----------------+----------------------+----------------------+----------+
   | Rounding up    | ``ceiling()``        | ``ceiling(1.32)``    | 2        |
   +----------------+----------------------+----------------------+----------+


Logarithms and exponentials
~~~~~~~~~~~~~~~~~~~~~~~~~~~

As I’ve mentioned earlier, jamovi has an useful range of mathematical
functions built into it and there really wouldn’t be much point in
trying to describe or even list all of them. For the most part, I’ve
focused only on those functions that are strictly necessary for this
book. However I do want to make an exception for logarithms and
exponentials. Although they aren’t needed anywhere else in this book,
they are *everywhere* in statistics more broadly. And not only that,
there are a *lot* of situations in which it is convenient to analyse the
logarithm of a variable (i.e., to take a “log-transform” of the
variable). I suspect that many (maybe most) readers of this book will
have encountered logarithms and exponentials before, but from past
experience I know that there’s a substantial proportion of students who
take a social science statistics class who haven’t touched logarithms
since high school, and would appreciate a bit of a refresher.

In order to understand logarithms and exponentials, the easiest thing to
do is to actually calculate them and see how they relate to other simple
calculations. There are three jamovi functions in particular that I want
to talk about, namely ``LN()``, ``LOG10()`` and ``EXP()``. To start
with, let’s consider ``LOG10()``, which is known as the “logarithm in
base 10”. The trick to understanding a **logarithm** is to understand
that it’s basically the “opposite” of taking a power. Specifically, the
logarithm in base 10 is closely related to the powers of 10. So let’s
start by noting that 10-cubed is 1000. Mathematically, we would write
this:

| 10³ = 1000

The trick to understanding a logarithm is to recognise that the
statement that “10 to the power of 3 is equal to 1000” is equivalent to
the statement that “the logarithm (in base 10) of 1000 is equal to 3”.
Mathematically, we write this as follows, 

| log\ :sub:`10`\(1000) = 3

Okay, since the ``LOG10()`` function is related to the powers of 10, you
might expect that there are other logarithms (in bases other than 10)
that are related to other powers too. And of course that’s true: there’s
not really anything mathematically special about the number 10. You and
I happen to find it useful because decimal numbers are built around the
number 10, but the big bad world of mathematics scoffs at our decimal
numbers. Sadly, the universe doesn’t actually care how we write down
numbers. Anyway, the consequence of this cosmic indifference is that
there’s nothing particularly special about calculating logarithms in
base 10. You could, for instance, calculate your logarithms in base 2.
Alternatively, a third type of logarithm, and one we see a lot more of
in statistics than either base 10 or base 2, is called the **natural
logarithm**, and corresponds to the logarithm in base *e*. Since you might one
day run into it, I’d better explain what *e* is. The number *e*, known as
**Euler’s number**, is one of those annoying “irrational” numbers whose decimal
expansion is infinitely long, and is considered one of the most important
numbers in mathematics. The first few digits of *e* are:

*e* = 2.718282

There are quite a few situation in statistics that require us to
calculate powers of *e*, though none of them appear in this book.
Raising *e* to the power *x* is called the **exponential**
of *x*, and so it’s very common to see e\ :sup:`x` written as
*exp(x)*. And so it’s no surprise that jamovi has a function that
calculates exponentials, called ``EXP()``. Because the number *e*
crops up so often in statistics, the natural logarithm (i.e., logarithm
in base *e*) also tends to turn up. Mathematicians often write it
as log\ :sub:`e`\ (x) or *ln(x)*. In fact, jamovi works the same
way: the ``LN()`` function corresponds to the natural logarithm.

And with that, I think we’ve had quite enough exponentials and
logarithms for this book!

------

.. [#]
   We’ll leave the box-cox function until :ref:`later on <box-cox>`.

.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Logical expressions in jamovi
-----------------------------

A key concept that a lot of data transformations in jamovi rely on is
the idea of a **logical value**. A logical value is an assertion about
whether something is true or false. This is implemented in jamovi in a
pretty straightforward way. There are two logical values, namely
``TRUE`` and ``FALSE``. Despite the simplicity, logical values are very
useful things. Let’s see how they work.

Assessing mathematical truths
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In George Orwell’s classic book *1984* one of the slogans used by the
totalitarian Party was “two plus two equals five”. The idea being that
the political domination of human freedom becomes complete when it is
possible to subvert even the most basic of truths. It’s a terrifying
thought, especially when the protagonist Winston Smith finally breaks
down under torture and agrees to the proposition. “Man is infinitely
malleable”, the book says. I’m pretty sure that this isn’t true of
humans\ [#]_ and it’s definitely not true of jamovi. jamovi is not
infinitely malleable, it has rather firm opinions on the topic of what
is and isn’t true, at least as regards basic mathematics. If I ask it to
calculate ``2 + 2``\ [#]_, it always gives the same answer, and it’s
not bloody 5!

Of course, so far jamovi is just doing the calculations. I haven’t asked
it to explicitly assert that ``2 + 2 = 4`` is a true statement. If I
want jamovi to make an explicit judgement, I can use a command like
this: ``2 + 2 == 4``

What I’ve done here is use the **equality operator**, ``==``, to force jamovi
to make a “``TRUE`` or ``FALSE``” judgement.\ [#]_ Okay, let’s see what jamovi
thinks of the Party slogan, so type this into the compute new variable ``Formula`` box:

.. code-block::

   2 + 2 == 5

And what do you get? It should be a whole set of ``FALSE`` values in the
spreadsheet column for your newly computed variable. Booyah! Freedom and ponies
for all! Or something like that. Anyway, it was worth having a look at what
happens if I try to *force* jamovi to believe that two plus two is five by
making a statement like ``2 + 2 = 5``. I know that if I do this in another
program, say ``R``, then it throws up an error message. But wait, if you do
this in jamovi you get a whole set of ``FALSE`` values. So what is going on?
Well, it seems that jamovi is being pretty smart and realises that you are
testing whether it is ``TRUE`` or ``FALSE`` that ``2 + 2 = 5``, regardless of
whether you use the correct **equality operator**, ``==``, or the equals sign
``=``.

Logical operations
~~~~~~~~~~~~~~~~~~

So now we’ve seen logical operations at work. But so far we’ve only seen
the simplest possible example. You probably won’t be surprised to
discover that we can combine logical operations with other operations
and functions in a more complicated way, like this:

.. code-block::

   3 * 3 + 4 * 4 == 5 * 5

or this

.. code-block::

   SQRT(25) == 5

Not only that, but as :numref:`tab-logicals` illustrates, there are several
other logical operators that you can use corresponding to some basic
mathematical concepts. Hopefully these are all pretty self-explanatory. For
example, the **less than** operator ``<`` checks to see if the number on the
left is less than the number on the right. If it’s less, then jamovi returns an
answer of ``TRUE``, but if the two numbers are equal, or if the one on the
right is larger, then jamovi returns an answer of ``FALSE``.

.. _tab-logicals:
.. table:: Some logical operators. Technically I should be calling
   these “binary relational operators”, but quite frankly I don’t want
   to. It’s my book so no-one can make me.

   ======================== ======== ============= =========
   operation                operator example input answer
   ======================== ======== ============= =========
   less than                ``<``                  ``TRUE``
   less than or equal to    ``<=``                 ``TRUE``
   greater than             ``>``                  ``FALSE``
   greater than or equal to ``>=``                 ``TRUE``
   equal to                 ``==``                 ``FALSE``
   not equal to             ``!=``                 ``TRUE``
   ======================== ======== ============= =========

In contrast, the **less than or equal to** operator ``<=`` will do
exactly what it says. It returns a value of ``TRUE`` if the number of
the left hand side is less than or equal to the number on the right hand
side. At this point I hope it’s pretty obvious what the **greater than**
operator ``>`` and the **greater than or equal to** operator ``>=`` do!

Next on the list of logical operators is the **not equal to** operator
``!=`` which, as with all the others, does what it says it does. It
returns a value of ``TRUE`` when things on either side are not identical
to each other. Therefore, since ``2 + 2`` isn’t equal to *5* we would get
``TRUE`` as the value for our newly computed variable. Try it and see:

.. code-block::

   2 + 2 != 5
   
We’re not quite done yet. There are three more logical operations that
are worth knowing about, listed in :numref:'tab-logicals2`. These
are the **not** operator ``!``, the ``and``-operator and, and the
``or``-operator ``or``. Like the other logical operators, their
behaviour is more or less exactly what you’d expect given their names.
For instance, if I ask you to assess the claim that “either
``2 + 2 = 4`` *or* ``2+2 = 5``” you’d say that it’s true. Since
it’s an “either-or” statement, all we need is for one of the two parts
to be true. That’s what the ``or`` operator does:\ [#]_

.. code-block::

   (2 + 2 == 4) or (2 + 2 == 5)

.. _tab-logicals2:
.. table:: Some more logical operators.

   ========= ======== ===================== =========
   operation operator example input         answer
   ========= ======== ===================== =========
   not       ``NOT``  ``NOT(1==1)``         ``FALSE``
   or        ``or``   ``(1==1) or (2==3)``  ``TRUE``
   and       ``and``  ``(1==1) and (2==3)`` ``FALSE``
   ========= ======== ===================== =========

On the other hand, if I ask you to assess the claim that “both 2 + 2 = 4 *and*
2 + 2 = 5” you’d say that it’s false. Since this is an *and* statement we need
both parts to be true. And that’s what the ``and`` operator does:

.. code-block::

   (2 + 2 == 4) and (2 + 2 == 5)

Finally, there’s the *not* operator, which is simple but annoying to describe
in English. If I ask you to assess my claim that “it is not true that
``2 + 2 = 5``” then you would say that my claim is true, because actually my
claim is that “``2 + 2 = 5`` is false”. And I’m right. If we write this in
jamovi we use this:

.. code-block::

   NOT(2 + 2 == 5)

In other words, since ``2 + 2 == 5`` is a ``FALSE`` statement, it must be the
case that ``NOT(2 + 2 == 5)`` is a ``TRUE`` one. Essentially, what we’ve really
done is claim that “not false” is the same thing as “true”. Obviously, this
isn’t really quite right in real life. But jamovi lives in a much more black or
white world. For jamovi everything is either true or false. No shades of grey
are allowed.

Of course, in our ``2 + 2 = 5`` example, we didn’t really need to use
the “not” operator ``NOT`` and the “equals to” operator ``==`` as two
separate operators. We could have just used the “not equals to” operator
``!=`` like this:

.. code-block::

   2 + 2 != 5

Applying logical operation to text
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I also want to briefly point out that you can apply these logical
operators to text as well as to logical data. It’s just that we need to
be a bit more careful in understanding how jamovi interprets the
different operations. In this section I’ll talk about how the equal to
operator ``==`` applies to text, since this is the most important one.
Obviously, the not equal to operator ``!=`` gives the exact opposite
answers to ``==`` so I’m implicitly talking about that one too, but I
won’t give specific commands showing the use of ``!=``.

Okay, let’s see how it works. In one sense, it’s very simple. For
instance, I can ask jamovi if the word ``cat`` is the same as the word
``dog``, like this:

.. code-block::

   "cat" == "dog"

That’s pretty obvious, and it’s good to know that even jamovi can figure
that out. Similarly, jamovi does recognise that a ``cat`` is a ``cat``:

.. code-block::

   "cat" == "cat"

Again, that’s exactly what we’d expect. However, what you need to keep
in mind is that jamovi is not at all tolerant when it comes to grammar
and spacing. If two strings differ in any way whatsoever, jamovi will
say that they’re not equal to each other, as with the following:

.. code-block::

   " cat" == "cat"
   "cat" == "CAT"
   "cat" == "c a t"

You can also use other logical operators too. For instance jamovi also
allows you to use the ``<`` and ``>`` operators to determine which of
two text ‘strings’ comes first, alphabetically speaking. Sort of.
Actually, it’s a bit more complicated than that, but let’s start with a
simple example:

.. code-block::

   "cat" < "dog"

In jamovi, this example evaluates to ``TRUE``. This is because ``cat``
does does come before ``dog`` alphabetically, so jamovi judges the
statement to be true. However, if we ask jamovi to tell us if ``cat``
comes before ``anteater`` then it will evaluate the expression as
false. So far, so good. But text data is a bit more complicated than the
dictionary suggests. What about ``cat`` and ``CAT``? Which of these
comes first? Try it and find out:

.. code-block::

   "CAT" < "cat"

This in fact evaluates to ``TRUE``. In other words, jamovi assumes that
uppercase letters come before lowercase ones. Fair enough. No-one is
likely to be surprised by that. What you might find surprising is that
jamovi assumes that *all* uppercase letters come before *all* lowercase
ones. That is, while ``"anteater" < "zebra"`` is a true statement, and
the uppercase equivalent ``"ANTEATER" < "ZEBRA"`` is also true, it is
*not* true to say that ``"anteater" < "ZEBRA"``, as the following
extract illustrates. Try this:

.. code-block::

   "anteater" < "ZEBRA"

This evaluates to ‘false’, and this may seem slightly counterintuitive. With
that in mind, it may help to have a quick look at the various text characters
in the order that jamovi processes them:

.. code-block::

   ! " # $ % & ' ( ) * + , - . /  0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ 
   A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ]  ^ _ ` 
   a b c d e f g h i j k l m n o p q r s t u v w x y z } | {

------

.. [#]
   I offer up my teenage attempts to be “cool” as evidence that some
   things just can’t be done.

.. [#]
   You can do this in the Compute new variable screen, though just
   calculating ``2 + 2`` for every cell of a new variable is not very
   useful!

.. [#]
   Note that this is a very different operator to the equals operator
   ``=``. A common typo that people make when trying to write logical
   commands in jamovi (or other languages, since the “``=`` versus
   ``==``” distinction is important in many computer and statistical
   programs) is to accidentally type ``=`` when you really mean ``==``.
   Be especially cautious with this, I’ve been programming in various
   languages since I was a teenager and I *still* screw this up a lot.
   Hmm. I think I see why I wasn’t cool as a teenager. And why I’m still
   not cool.

.. [#]
   Now, here’s a quirk in jamovi. When you have simple logical
   expressions like the ones we have already met, e.g. ``2 + 2 == 5``
   then jamovi neatly states ``FALSE`` (or ``TRUE``) in the corresponding
   spreadsheet column. Underneath the hood, jamovi stores ``FALSE`` as
   ``0`` and ``TRUE`` as ``1``. When we have more complex logical
   expressions, such as ``(2 + 2 == 4) or (2 + 2 == 5)``, then jamovi just
   displays either ``0`` or ``1``, depending whether the logical
   expression is evaluated as false, or true.

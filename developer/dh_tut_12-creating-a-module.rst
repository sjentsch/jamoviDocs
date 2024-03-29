.. sectionauthor:: Jonathon Love

=================
Creating a Module
=================

   In this section we will create a jamovi module from scratch, and install it into jamovi. This section builds on knowledge from the previous: :doc:`Getting
   Started <dh_tut_11-getting-started>`.

   The easiest way to create a module for jamovi is with the ``create()`` function from the ``jmvtools`` package:

   .. code-block:: R

      jmvtools::create('SuperAwesome')


   This will create a module called ``SuperAwesome`` in the current working directory. If we now look at the contents of the freshly minted ``SuperAwesome``,
   we will find:

   .. code-block:: text

      SuperAwesome/
      ├── DESCRIPTION
      ├── NAMESPACE
      ├── jamovi/
      |   └── 0000.yaml
      └── R/


   This should seem suspiciously familiar to anyone who’s worked on R packages before. That’s because jamovi modules *are* R packages, but with that additional
   ``jamovi/``\ |0000|_-file. With that file, this package becomes a dual citizen: it can be built into an R package, and it can be built into a jamovi module.

   If you take a look in the |0000|_-file, you’ll notice it contains a very similar set of values to the ``DESCRIPTION``-file. However, as we add
   analyses to the module, they will come to be listed in this file as well. In the early stages of development, there’s not much need to interact with this
   file, so we’ll return to it later.

.. --------------------------------------------------------------------

.. |0000|       replace:: ``0000.yaml``
.. _0000:       dh_api_module-definition.html

.. sectionauthor:: Jonathon Love

================
Additional Notes
================

Dependencies
------------

   ``jmvtools::install()`` also downloads all your packages dependencies (listed in ``DESCRIPTION``), and bundles them into your module. This ensures that the
   module has everything it needs, and also that a module will always use predictable dependency versions. This results in larger module file sizes, but
   arguably is a small price to pay for reproducibility given how inexpensive disk space is.


Namespaces
----------

   We recommend you minimise import statements in your ``NAMESPACE``-file. These can lead to substantial delays when your package is loading, as *all* listed
   imports in the ``NAMESPACE``-file are loaded whether they are required or not.

   Instead, access functions with their full namespace, i.e.:

   .. code-block:: R

      stats::t.test(...)

   With this approach, dependencies are only loaded when they are required. This improves start-up time (the delay between a user selecting one of your analyses,
   and results appearing for the first time), and can lead to a significant reduction in the amount of RAM your module uses.

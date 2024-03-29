.. sectionauthor:: Jonathon Love

=====
State
=====

   The analyses demonstrated in the tutorial series so far, have been completely *state*-less. This means that each time an analysis is run (for example, in
   response to a user checking a checkbox), it runs the analysis from beginning to end. In many cases, this isn’t very efficient. A user may run a t-test, and
   then select a checkbox requesting descriptives. Without *state*, an analysis will recalculate the t-test results every time the analysis is changed, even
   when the changed option has no impact on the t-test results.

   For many analyses, this isn’t a problem – indeed, a t-test runs very quickly, so recalculating with every option change doesn’t really pose a problem; the
   user still receives the results near instantaneously. However, some analyses can take a considerable amount of time to run, and re-running these in their
   entirety with every change leads to long delays and a poor user experience. The solution to this problem is *state*.

   In using state, an analysis retains information from when it was previously run. If a user makes a change to an existing analysis, the analysis can make use
   of the results that were calculated previously. Using the example of a t-test, if the user checks a checkbox requesting an additional table of descriptives,
   the analysis can re-use the t-test results from the last time the analysis ran. However, if the user changes an option which affects the t-test results –
   say, the type of t-test – then the analysis should not re-use the earlier t-test results. Whether earlier results should be used or not is determined by the 
   ``clearWith`` property.


``clearWith``
-------------

   Each results element in the |ryaml|_-file can have a ``clearWith`` property specified. If no ``clearWith`` property is specified, then the default value of
   ``*`` is used, which means the ``Table`` or ``Image`` will be cleared if *any* option changes; *no* earlier results will ever be used. So far in this
   tutorial series, all analyses have behaved in this way.

   Specifying a ``clearWith`` property lets us specify the circumstances where results should be re-used, and when not. For example, returning to our *t-test*,
   our |ayaml|_-file might contain the following options:

   .. code-block:: yaml

      - name: data
        type: Data
        
      - name: deps
        title: Dependent Variables
        type: Variables

      - name: group
        title: Grouping Variable
        type: Variable

      - name: alt
        title: Alternative hypothesis
        type: List
        options:
        - name: notEqual
          title: Not equal
        - name: oneGreater
          title: One greater
        - name: twoGreater
          title: Two greater
        default: notEqual

      - name: varEq
        title: Assume equal variances
        type: Bool
        default: true


   We could add the `clearWith` property to the t-test results table in the |ryaml|-file as follows:

   .. code-block:: yaml

      - items:
          - name:  ttest
            title: Independent Samples T-Test
            type:  Table
            rows:  (deps)
            
            clearWith:  # <-- here
              - group
              - alt
              - varEq
              
            columns:
              - name: var
                title: ''
                type: text
                content: ($key)

   This ``clearWith`` specifies that the table is to be cleared if any of the options ``group``, ``alt`` or ``varEq`` change. Take note that we *haven’t* added
   the ``deps`` option to this list. When the user adds additional dependent variables, we don’t want it to clear the existing rows. You can see what happens
   by running this example, and adding multiple dependent variables one at a time.

   Before we added this ``clearWith`` property, adding another dependent variable caused the whole table to be cleared before being filled back in again. Now
   with ``clearWith`` (without ``deps`` listed), adding an additional dependent variable just adds another row, which is then filled in. The old rows are not
   cleared. This new behaviour minimises the amount the results flicker, and allows the user to see clearly what has changed in the results in response to their
   actions.

   However, it should be noted that we haven’t actually reduced the amount of calculations being performed. Although the table is no longer cleared when
   certain options are changed, our analysis implementation in the ``.b.R``-file still loops over all the dependent variables and performs a t-test for each.
   It then overrides the value already in the table with this newly calculated value; the exact same value. This isn’t a problem, because the t-test runs very
   quickly, but we can modify our ``.b.R``-file to not calculate values which are already present in the table. We find out what parts of the table are already
   filled in with the ``isFilled()`` method.


``isFilled()``
--------------

   The ``isFilled()`` method can be called with any of the following:

   .. code-block:: javascript

      table$isFilled()
      table$isFilled(rowNo=i, col)
      table$isFilled(rowKey=key, col)

   By specifying or omitting different arguments, it is possible to query whether the whole table is filled, whether a particular row or column is filled, or
   whether a particular cell is filled. ``isFilled()`` returns either ``TRUE`` or ``FALSE``.

   Let’s return to our t-test example, to the ``.b.R``-file. We might modify our ``.run()`` function as follows:

   .. code-block:: R

      .run=function() {
      
          table <- self$results$ttest
      
          for (dep in self$options$deps) {
          
              if ( ! table$isFilled(rowKey=dep)) {  # <- this if statement!
      
                  formula <- jmvcore::constructFormula(dep, self$options$group)
                  formula <- as.formula(formula)
              
                  results <- t.test(formula, self$data)
              
                  table$setRow(rowKey=dep, values=list(  # set by rowKey!
                      t=results$statistic,
                      df=results$parameter,
                      p=results$p.value
                  ))
              }
          }
      }

   We’ve added an if-statement which checks if the row is already filled. If it is already filled in then it won’t call the ``t.test()`` function or spend time
   populating the row. In this way we can skip calculations if the appropriate results are already filled in.


``setState()``
--------------

   However, sometimes we don’t want to just store the final results; sometimes we want to store the intermediate objects as well. For example, we may want to
   create a fit object, and then reuse this same fit object the next time the analysis is run.

   State can be saved and recovered from any results element, i.e. an ``Image`` or a ``Table``, using the ``setState()`` method and ``state`` property:

   .. code-block:: R

      table$setState(object)
      object <- table$state

   ``$state`` will return ``NULL`` if no state has been set.

   Note that the ``clearWith`` property also applies to the state attached to a results element. The same mechanism can be used to selectively clear the state
   or not, depending on what options have changed.

   When using ``setState()`` and ``state``, an analysis will typically try and retrieve the state as one of the first things it does. If the state doesn’t
   exist (``state`` has a value of ``NULL``), then the analysis will perform the calculations to create the object it requires and ``setState()`` that object
   onto a results element. Following this, the analysis can populate the tables and images from that object. Alternatively, if the state can be retrieved, then
   the analysis can bypass the initial time-consuming construction of the object, and just use the one from last time to populate the tables and images.

   **WARNING**: Some R objects, when serialised, take up a lot of space. If these objects are large, then the save and restore process between analyses will be
   very sluggish. As such, it’s worth investigating how large the objects you want to store will be. The following will give you the serialized size of an
   object in bytes:

   .. code-block:: R

      length(serialize(object), connection=NULL)

.. ------------------------------------------------------------------------------------------------------------------------------------------------------------
 
.. |ayaml|                             replace:: ``.a.yaml``
.. _ayaml:                             dh_api_analysis-definition.html

.. |ryaml|                             replace:: ``.r.yaml``
.. _ryaml:                             dh_api_results-definition.html

.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Multiple linear regression
--------------------------

The simple linear regression model that we’ve discussed up to this point
assumes that there’s a single predictor variable that you’re interested
in, in this case ``dan.sleep``. In fact, up to this point *every*
statistical tool that we’ve talked about has assumed that your analysis
uses one predictor variable and one outcome variable. However, in many
(perhaps most) research projects you actually have multiple predictors
that you want to examine. If so, it would be nice to be able to extend
the linear regression framework to be able to include multiple
predictors. Perhaps some kind of **multiple regression** model would be
in order?

Multiple regression is conceptually very simple. All we do is add more
terms to our regression equation. Let’s suppose that we’ve got two
variables that we’re interested in; perhaps we want to use both
``dan.sleep`` and ``baby.sleep`` to predict the ``dan.grump`` variable.
As before, we let *Y*\ :sub:`i` refer to my grumpiness on the i-th
day. But now we have two *X* variables: the first corresponding to
the amount of sleep I got and the second corresponding to the amount of
sleep my son got. So we’ll let *X*\ :sub:`i1` refer to the hours I slept
on the i-th day and *X*\ :sub:`i2` refers to the hours that the
baby slept on that day. If so, then we can write our regression model
like this:

| *Y*\ :sub:`i` = *b*\ :sub:`0` + *b*\ :sub:`1` *X*\ :sub:`i1` + *b*\ :sub:`2` *X*\ :sub:`i2` + ε\ :sub:`i`

As before, ε\ :sub:`i` is the residual associated with the
i-th observation, ε\ :sub:`i` = {Y}_i - \hat{Y}_i`. In
this model, we now have three coefficients that need to be estimated:
*b*\ :sub:`0` is the intercept, *b*\ :sub:`1` is the coefficient associated
with my sleep, and *b*\ :sub:`2` is the coefficient associated with my
son’s sleep. However, although the number of coefficients that need to
be estimated has changed, the basic idea of how the estimation works is
unchanged: our estimated coefficients :math:`\hat{b}_0`,
:math:`\hat{b}_1` and :math:`\hat{b}_2` are those that minimise the sum
squared residuals.

Doing it in jamovi
~~~~~~~~~~~~~~~~~~

Multiple regression in jamovi is no different to simple regression. All
we have to do is add additional variables to the ``Covariates`` box in
jamovi. For example, if we want to use both ``dan.sleep`` and
``baby.sleep`` as predictors in our attempt to explain why I’m so
grumpy, then move ``baby.sleep`` across into the ``Covariates`` box
alongside ``dan.sleep``. By default, jamovi assumes that the model
should include an intercept. The coefficients we get this time are:

.. code-block:: rout

   (Intercept)    dan.sleep   baby.sleep  
     125.97        -8.95        0.01  

The coefficient associated with ``dan.sleep`` is quite large, suggesting
that every hour of sleep I lose makes me a lot grumpier. However, the
coefficient for ``baby.sleep`` is very small, suggesting that it doesn’t
really matter how much sleep my son gets. What matters as far as my
grumpiness goes is how much sleep *I* get. To get a sense of what this
multiple regression model looks like, :numref:`fig-scatter3d_1` shows a 3D
plot that plots all three variables, along with the regression model
itself.

.. ----------------------------------------------------------------------------

.. _fig-scatter3d_1:
.. figure:: ../_images/lsj_scatter3d_1.*
   :alt: 3D visualisation of a multiple regression model

   3D visualisation of a multiple regression model: There are two predictors in
   the model, ``dan.sleep`` and ``baby.sleep`` and the outcome variable is
   ``dan.grump``. Together, these three variables form a 3D space. Each
   observation (dot) is a point in this space. In much the same way that a
   simple linear regression model forms a line in 2D space, this multiple
   regression model forms a plane in 3D space. When we estimate the regression
   coefficients what we’re trying to do is find a plane that is as close to all
   the blue dots as possible.
   
.. ----------------------------------------------------------------------------

Formula for the general case
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The equation that I gave above shows you what a multiple regression
model looks like when you include two predictors. Not surprisingly,
then, if you want more than two predictors all you have to do is add
more *X* terms and more *b* coefficients. In other words, if
you have K predictor variables in the model then the regression
equation looks like this

.. math:: Y_i = b_0 + \left( \sum_{k=1}^K b_{k} X_{ik} \right) + \epsilon_i

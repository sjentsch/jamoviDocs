.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Skew and kurtosis
-----------------

There are two more descriptive statistics that you will sometimes see
reported in the psychological literature: skew and kurtosis. In
practice, neither one is used anywhere near as frequently as the
measures of central tendency and variability that we’ve been talking
about. Skew is pretty important, so you do see it mentioned a fair bit,
but I’ve actually never seen kurtosis reported in a scientific article
to date.

.. ----------------------------------------------------------------------------

.. _fig-skewness:
.. figure:: ../_images/lsj_skewness.*
   :alt: Illustration of skewness

   Illustration of skewness. On the left we have a negatively skewed data set
   (skewness = -.93), in the middle we have a data set with no skew (well,
   hardly any: skewness = -.006), and on the right we have a positively skewed
   data set (skewness = 0.93).
   
.. ----------------------------------------------------------------------------

Since it’s the more interesting of the two, let’s start by talking about the
**skewness**. Skewness is basically a measure of asymmetry and the easiest way
to explain it is by drawing some pictures. As :numref:`fig-skewness`
illustrates, if the data tend to have a lot of extreme small values (i.e., the
lower tail is “longer” than the upper tail) and not so many extremely large
values (left panel) then we say that the data are *negatively skewed*. On the
other hand, if there are more extremely large values than extremely small ones
(right panel) we say that the data are *positively skewed*. That’s the
qualitative idea behind skewness. If there are relatively more values that are
far greater than the mean, the distribution is positively skewed or right
skewed, with a tail stretching to the right. Negative or left skew is the
opposite. A symmetric distribution has a skewness of 0. The skewness value for
a positively skewed distribution is positive, and a negative value for a
negatively skewed distribution.

One formula for the skewness of a data set is as follows

.. math:: \mbox{skewness}(X) = \frac{1}{N \hat{\sigma}^3} \sum_{i=1}^N (X_i - \bar{X})^3

where *N* is the number of observations, :math:`\bar{X}` is the
sample mean, and :math:`\hat{\sigma}` is the standard deviation (the
“divide by *N - 1*” version, that is).

Perhaps more helpfully, you can use jamovi to calculate skewness: it’s a
check box in the ``Statistics`` options under ``Exploration`` → ``Descriptives``.
For the ``afl.margins`` variable, the skewness figure is **0.780**. If you
divide the skewness estimate by the Std. error for skewness you have an
indication of how skewed the data is. Especially in small samples (*N* < 50),
one rule of thumb suggests that a value of 2 or less can mean that the data
is not very skewed, and a value of over 2 that there is sufficient skew in
the data to possibly limit its use in some statistical analyses. Though there
is no clear agreement on this interpretation. That said, this does indicate
that the AFL winning margins data is somewhat skewed (0.780 / 0.183 = 4.262).

.. ----------------------------------------------------------------------------

.. _fig-kurtosis:
.. figure:: ../_images/lsj_kurtosis.*
   :alt: Illustration of kurtosis

   Illustration of kurtosis. On the left, we have a “platykurtic” data set
   (kurtosis = -.95) meaning that the data set is “too flat”. In the middle we
   have a “mesokurtic” data set (kurtosis is almost exactly 0) which means that
   the pointiness of the data is just about right. Finally, on the right, we
   have a “leptokurtic” data set (kurtosis “ 2.12) indicating that the data
   set is “too pointy”. Note that kurtosis is measured with respect to a normal
   curve (black line).
      
.. ----------------------------------------------------------------------------

The final measure that is sometimes referred to, though very rarely in practice,
is the **kurtosis** of a data set. Put simply, kurtosis is a measure of the
“pointiness” of a data set, as illustrated in :numref:`fig-kurtosis`.
By convention, we say that the “normal curve” (black lines) has zero kurtosis,
so the pointiness of a data set is assessed relative to this curve.

The data in the left panel of :numref:`fig-kurtosis` are not pointy enough, so
the kurtosis is negative and we call the data *platykurtic*. The data in the
right panel are too pointy, so the kurtosis is positive and we say that the
data is *leptokurtic*. Only the data in the middle panel are just pointy
enough, so we say that it is *mesokurtic* and has kurtosis zero. This is
summarised in the table below:

==================== ============== ==============
informal term        technical name kurtosis value
==================== ============== ==============
“too flat”           platykurtic    negative
“just pointy enough” mesokurtic     zero
“too pointy”         leptokurtic    positive
==================== ============== ==============

The equation for kurtosis is pretty similar in spirit to the formulas
we’ve seen already for the variance and the skewness. Except that where
the variance involved squared deviations and the skewness involved cubed
deviations, the kurtosis involves raising the deviations to the fourth
power:\ [#]_

.. math:: \mbox{kurtosis}(X) = \frac{1}{N \hat\sigma^4} \sum_{i=1}^N \left( X_i - \bar{X} \right)^4  - 3

I know, it’s not terribly interesting to me either.

More to the point, jamovi has a check box for kurtosis just below the
check box for skewness, and this gives a value for kurtosis of **0.101**
with a standard error of **0.364**. This means that the AFL winning
margins data are just pointy enough.

------

.. [#]
   The “-3” part is something that statisticians tack on to
   ensure that the normal curve has kurtosis zero. It looks a bit
   stupid, just sticking a “-3” at the end of the formula, but there are
   good mathematical reasons for doing this.

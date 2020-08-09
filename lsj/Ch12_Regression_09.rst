.. sectionauthor:: `Danielle J. Navarro <https://djnavarro.net/>`_ and `David R. Foxcroft <https://www.davidfoxcroft.com/>`_

Assumptions of regression [sec:regressionassumptions]
-----------------------------------------------------

The linear regression model that I’ve been discussing relies on several
assumptions. In
Section `[sec:regressiondiagnostics] <#sec:regressiondiagnostics>`__
we’ll talk a lot more about how to check that these assumptions are
being met, but first let’s have a look at each of them.

-  *Normality*. Like many of the models in statistics, basic simple or
   multiple linear regression relies on an assumption of normality.
   Specifically, it assumes that the *residuals* are normally
   distributed. It’s actually okay if the predictors *X* and the
   outcome *Y* are non-normal, so long as the residuals
   :math:`\epsilon` are normal. See
   Section `[sec:regressionnormality] <#sec:regressionnormality>`__.

-  *Linearity*. A pretty fundamental assumption of the linear regression
   model is that the relationship between *X* and *Y*
   actually is linear! Regardless of whether it’s a simple regression or
   a multiple regression, we assume that the relationships involved are
   linear.

-  *Homogeneity of variance*. Strictly speaking, the regression model
   assumes that each residual :math:`\epsilon_i` is generated from a
   normal distribution with mean 0, and (more importantly for the
   current purposes) with a standard deviation *σ* that is
   the same for every single residual. In practice, it’s impossible to
   test the assumption that every residual is identically distributed.
   Instead, what we care about is that the standard deviation of the
   residual is the same for all values of :math:`\hat{Y}`, and (if we’re
   being especially paranoid) all values of every predictor *X* in
   the model.

-  *Uncorrelated predictors*. The idea here is that, in a multiple
   regression model, you don’t want your predictors to be too strongly
   correlated with each other. This isn’t “technically” an assumption of
   the regression model, but in practice it’s required. Predictors that
   are too strongly correlated with each other (referred to as
   “collinearity”) can cause problems when evaluating the model. See
   Section `[sec:regressioncollinearity] <#sec:regressioncollinearity>`__

-  *Residuals are independent of each other*. This is really just a
   “catch all” assumption, to the effect that “there’s nothing else
   funny going on in the residuals”. If there is something weird (e.g.,
   the residuals all depend heavily on some other unmeasured variable)
   going on, it might screw things up.

-  *No “bad” outliers*. Again, not actually a technical assumption of
   the model (or rather, it’s sort of implied by all the others), but
   there is an implicit assumption that your regression model isn’t
   being too strongly influenced by one or two anomalous data points
   because this raises questions about the adequacy of the model and the
   trustworthiness of the data in some cases. See
   Section `[sec:regressionoutliers] <#sec:regressionoutliers>`__.

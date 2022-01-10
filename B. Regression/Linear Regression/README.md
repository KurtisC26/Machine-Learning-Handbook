For a simple Linear Regression model, we will leverage the LinearRegression model.

This model is a Ordinary least squares Linear Regression.


<H3>Theory </h3>
Reference: https://towardsdatascience.com/understanding-the-ols-method-for-simple-linear-regression-e0a4e8f692cc

Simple linear regression is based on the concept that two variables can be explained by the formula below where ei is the error term, a and b are the true paramenters of the regresion. B represenets the variation of the dependent variable.


![image](https://user-images.githubusercontent.com/58488172/148777821-c1b325c2-14a0-4fb3-9cc7-c7ddf56813ef.png)

![image](https://user-images.githubusercontent.com/58488172/148778010-3ad5d5ab-eb40-44a9-ac38-17ced7995410.png)

![image](https://user-images.githubusercontent.com/58488172/148778432-4ab7e09f-7bac-4b1a-b977-98ee5b52e991.png)

The Simple Linear Regression Model will searhc to find parameters in a and b that minimize ei in a procedure called Ordinary Least Squared error.
Sample covariance:
![image](https://user-images.githubusercontent.com/58488172/148778544-886bf43f-c215-4e96-9c16-d2871b2425a1.png)


Correlation coefficient between two variables:
![image](https://user-images.githubusercontent.com/58488172/148778648-38bbe7e6-df93-4dc8-b148-f20ba2dd5be7.png)


![image](https://user-images.githubusercontent.com/58488172/148778778-189db5d3-850a-4161-aa3a-9a8effb257a5.png)
![image](https://user-images.githubusercontent.com/58488172/148778819-0973395e-4729-4617-9fc0-1216508366bd.png)


<H3> Mole Parameters </H3>
fit_interceptbool, default=True
Whether to calculate the intercept for this model. If set to False, no intercept will be used in calculations (i.e. data is expected to be centered).

normalizebool, default=False
This parameter is ignored when fit_intercept is set to False. If True, the regressors X will be normalized before regression by subtracting the mean and dividing by the l2-norm. If you wish to standardize, please use StandardScaler before calling fit on an estimator with normalize=False.

Deprecated since version 1.0: normalize was deprecated in version 1.0 and will be removed in 1.2.
copy_Xbool, default=True
If True, X will be copied; else, it may be overwritten.

n_jobsint, default=None
The number of jobs to use for the computation. This will only provide speedup in case of sufficiently large problems, that is if firstly n_targets > 1 and secondly X is sparse or if positive is set to True. None means 1 unless in a joblib.parallel_backend context. -1 means using all processors. See Glossary for more details.

positivebool, default=False
When set to True, forces the coefficients to be positive. This option is only supported for dense arrays.

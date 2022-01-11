For Support Vector Regression, we will use the sklearn.svm.svr model
reference page: http://scikit-learn.org/stable/modules/generated/sklearn.svm.SVR.html



<h2>Model Parameters</h2>


* kernel {‘linear’, ‘poly’, ‘rbf’, ‘sigmoid’, ‘precomputed’} or callable, default=’rbf’ <br>
Specifies the kernel type to be used in the algorithm. If none is given, ‘rbf’ will be used. If a callable is given it is used to precompute the kernel matrix.

* degreeint, default=3 <br>
Degree of the polynomial kernel function (‘poly’). Ignored by all other kernels.

* gamma {‘scale’, ‘auto’} or float, default=’scale’ <br>
Kernel coefficient for ‘rbf’, ‘poly’ and ‘sigmoid’.
if gamma='scale' (default) is passed then it uses 1 / (n_features * X.var()) as value of gamma,
if ‘auto’, uses 1 / n_features. Changed in version 0.22: The default value of gamma changed from ‘auto’ to ‘scale’.

* coef0float, default=0.0 <br>
Independent term in kernel function. It is only significant in ‘poly’ and ‘sigmoid’.

* tolfloat, default=1e-3 <br>
Tolerance for stopping criterion.

* Cfloat, default=1.0 <br>
Regularization parameter. The strength of the regularization is inversely proportional to C. Must be strictly positive. The penalty is a squared l2 penalty.

* epsilonfloat, default=0.1 <br>
Epsilon in the epsilon-SVR model. It specifies the epsilon-tube within which no penalty is associated in the training loss function with points predicted within a distance epsilon from the actual value.

* shrinkingbool, default=True <br>
Whether to use the shrinking heuristic. See the User Guide.

* cache_sizefloat, default=200 <br>
Specify the size of the kernel cache (in MB).

* verbosebool, default=False <br>
Enable verbose output. Note that this setting takes advantage of a per-process runtime setting in libsvm that, if enabled, may not work properly in a multithreaded context.

* max_iterint, default=-1 <br>
Hard limit on iterations within solver, or -1 for no limit.


<h2>Kernel Types</h2>




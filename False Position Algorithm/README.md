# False Position Algorithm
This algorithm has the inputs 
* xl = lower guess
* xu = upper guess

And has the optional inputs of
* es = the desired relative error (should default to 0.0001%)
* maxit = the maximum number of iterations to use (should default to 200)

it uses these inputs to perform bisection to then determine the root 

The outputs are:
*root = the estimated root location
*fx = the function evaluated at the root location
*ea = the approximate relative error (%)
*iter = how many iterations were performed

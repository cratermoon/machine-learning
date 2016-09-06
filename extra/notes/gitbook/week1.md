# Machine Learning Problems

* Regression is used for continuous values
* Classification for discrete values

## Linear Algebra Review
* Can only add matrices of same dimension: 3x2+3x2 or 3x1+3x1, but not 2x3+3x2
* Result is of same dimension as operands, so 2x2+2x2 yields 2x2

## Matrix-Vector Multiplication

* Multiply the $i$th row of matrix $A$ by the elements of vector $x$, then add the results to get the $i$th row of vector $y$
* Number of rows in $y$ equals number of rows in $A$

## Model and Cost Function
The input data for a supervised machine learning problem is called the Training Set. It includes the "right answer" for each example in the input data.

The Training Set is given to the Learning Algorithm to produce $h$, a function that maps the input $x$ to the output $y$. This is called a hypothesis.

If $x$ is the only input variable, this is **linear regression with one variable** or **univariate linear regression**.

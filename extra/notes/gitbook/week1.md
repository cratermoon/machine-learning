# Week 1: Introduction, Linear Regression with One Variable & Linear Algebra Review.

## Machine Learning Problems

* Regression is used for continuous values
* Classification for discrete values

## Linear Algebra Review
* Can only add matrices of same dimension: 3x2+3x2 or 3x1+3x1, but not 2x3+3x2
* Result is of same dimension as operands, so 2x2+2x2 yields 2x2

## Matrix-Vector Multiplication

* Multiply the $$i$$th row of matrix $$A$$ by the elements of vector $$x$$, then add the results to get the $$i$$th row of vector $$y$$
* Number of rows in $$y$$ equals number of rows in $$A$$

## Model and Cost Function
The input data for a supervised machine learning problem is called the Training Set. It includes the "right answer" for each example in the input data.

The Training Set is given to the Learning Algorithm to produce $$h$$, a function that maps the input $$x$$ to the output $$y$$. This is called a hypothesis.

If $$x$$ is the only input variable, this is **linear regression with one variable** or **univariate linear regression**.

## Cost Function Intuition

Squared error function is a common and useful convention.

$$
J(\theta_0,\theta_1) = \frac{1}{2m} \sum(h_\theta(x^{\left(i\right)}) - y^{\left(i\right)})^2
$$

In a simplified version with just $$\theta_1$$ shows us that $$h(x)$$ is the slope of the function. Thus $$J(\theta_1)$$ is a curve with a minimum where $$\theta_1 = 1$$

For cost function $$h\theta(x) = \theta_0 - \theta_1x$$ we find $$J(\theta_0,\theta_1)$$ is a 3d surface.

## Gradient Descent Algorithm
Gradient descent is an algorithm for minimizing $$J(\theta_0,\theta_1)$$.

* Start with some $$\theta_0,\theta_1$$
* Keep changing $$\theta_0,\theta_1$$ to $$J(\theta_0,\theta_1)$$

Until we end up at a minimum (we hope).
Like walking down a hill using the steepest way until we can go no lower.

Small differences in starting conditions can influence direction and endpoint in complex ways.

Repeatedly take the differential of $J(\theta_0,\theta_1)$ times a learning rate until the result converges.

## Gradient Descent Learning Rate


The symbol $$\alpha$$ (alpha) is known as the learning rate and corresponds to the step size for each iteration of gradient descent. If $$\alpha$$ is too large then iterations will overshoot the minimum and fail to converge or even diverge.

If $$\alpha$$ is too small the function will run too slowly.

Once $$\theta$$ is at a minimum then the slope is 0 and thus theta won't change any more.

Gradient descent will converge even if $$\alpha$$ is held fixed, as the closer to the local optimum the smaller the magnitude of the update to $$\theta$$.

## Gradient Descent for Linear Regression Properties

The cost function for linear regression is *convex*, meaning it only has a single, global, optimum.

For so-called "batch" gradient descent we use all the training examples $(m)$ every step. Other times we only use a subset of the training examples for gradient descent.

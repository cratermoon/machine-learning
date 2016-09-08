# Week 2: Linear Regression with Multiple Variables

## Multivariate Linear Regression
Multiple features (or variables)

### Notation

* $$n$$ = number of features
* $$x^{\left(i\right)}$$ input (features) of the $i$th training example
* $$x_j^{\left(i\right)}$$: value of feature $$j$$ in the $$i$$th training example
* $$y$$ price

### Example

| size (feet<sup>2</sup>) | # of bedrooms | # of floors | age of home (years) | price ($1000)|
| :------------- | :------------- | :------------- | :------------- | :------------- |
| $$x_1$$ | $$x_2$$ | $$x_3$$ | $$x_4$$ | $$y$$ |
| 2104 | 5 | 1 | 45 | 460 |
| 1416 | 3 | 2 | 40 | 232 |
| 1534 | 3 | 2 | 30 | 315 |
| 852 | 2 | 1 | 36 | 178 |
| ... | ... | ... | ... | ... |

$$x^{\left(2\right)} = [ 1416; 3; 2; 40]$$

$$x_j^{\left(2\right)} = 3$$

hypothesis becomes sum of n features
For convenience we set the zeroth feature = 1 for all examples.
$$X = [x_0; x_1; x_2; ... ; x_n]$$ size is n+1

$$\theta = [\theta_0; \theta_1; \theta_2; ... ; \theta_n]$$ size is also n+1

We can also write the hypothesis as $$\theta'x$$ (transpose)

### Feature Scaling
Make sure features on similar scales (take on a similar range of values) so gradient descent will converge more quickly.

Example: size range 0-2000 ft sq and # of bedrooms 1-5 results in a 2000:5 ratio of features, a tall and skinny contour plot that gradient descent can take a long time traversing.

Solution: scale features to a common range such as $$0 \leq x \leq 1$$ by dividing  by max. An ideal is $$-1 \leq x \leq 1$$, but a rule of thumb is  range limits of 1/3 to 3 are acceptable.

Also scale very small values up -- e.g a range of $$-0.0001 \leq x \leq 0.0001$$ should be scaled up to a normalized range.

### Mean Normalization
Normalizing the mean to ensure all features have a mean around 0. We can use $$max(x) - min(x)$$ or standard deviation of X.

Example $$x_1 \leftarrow \dfrac{(x_1- \mu_1)}{\sigma_1}$$

## Learning Rate: Gradient Descent in Practice

### Debugging Learning Rate
Plot $$J\left(\theta\right)$$ as a function of the number of iterations to get the value of the cost function after each iteration. The value should decrease after every iteration at a rate that is not too slow.  If the plot shows $$J\left(\theta\right)$$ increasing then the gradient descent is not working, so use a smaller $$\alpha$$. If the it is decreasing slowly, use a larger $$\alpha$$. Tip: use values that differ by about a factor of 3: 0.001, 0.003, 0.01, 0.03, 0.1, 0.3, 1, 3....

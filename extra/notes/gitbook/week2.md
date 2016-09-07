# Week 2: Linear Regression with Multiple Variables

## Multivariate Linear Regression
Multiple features (or variables)

### Notation

* $n$ = number of features
* $x^{\left(i\right)}$ input (features) of the $i$th training example
* $x_j^{\left(i\right)}$: value of feature $j$ in the $i$th training example
* $y$ price

### Example

| size (feet<sup>2</sup>) | # of bedrooms | # of floors | age of home (years) | price ($1000)|
| :------------- | :------------- | :------------- | :------------- | :------------- |
| $x_1$ | $x_2$ | $x_3$ | $x_4$ | $y$ |
| 2104 | 5 | 1 | 45 | 460 |
| 1416 | 3 | 2 | 40 | 232 |
| 1534 | 3 | 2 | 30 | 315 |
| 852 | 2 | 1 | 36 | 178 |
| ... | ... | ... | ... | ... |

$x^{\left(2\right)} = [ 1416; 3; 2; 40]$

$x_j^{\left(2\right)} = 3$

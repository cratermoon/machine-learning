function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
<<<<<<< HEAD
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
=======
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the
%   cost of using theta as the parameter for linear regression to fit the
>>>>>>> 4ed26ca... Importing week 6 ex 5. Already completed code for Regularized Linear Regression Cost Function and Regularized Linear Regression Gradient
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

<<<<<<< HEAD
% You need to return the following variables correctly 
=======
% You need to return the following variables correctly
>>>>>>> 4ed26ca... Importing week 6 ex 5. Already completed code for Regularized Linear Regression Cost Function and Regularized Linear Regression Gradient
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
<<<<<<< HEAD
% Instructions: Compute the cost and gradient of regularized linear 
=======
% Instructions: Compute the cost and gradient of regularized linear
>>>>>>> 4ed26ca... Importing week 6 ex 5. Already completed code for Regularized Linear Regression Cost Function and Regularized Linear Regression Gradient
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

<<<<<<< HEAD










=======
h_theta = X * theta;

error = (h_theta - y)';

cost =  1/(2*m) * error * (h_theta - y);


temp = theta;
temp(1) = 0;

cost_regularization = temp'*temp;

J = cost + lambda/(2*m) * cost_regularization;

errors = h_theta - y;


grad = 1/m * (X' * errors) + lambda/m * temp;
>>>>>>> 4ed26ca... Importing week 6 ex 5. Already completed code for Regularized Linear Regression Cost Function and Regularized Linear Regression Gradient

% =========================================================================

grad = grad(:);

end

function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
%COFICOSTFUNC Collaborative filtering cost function
%   [J, grad] = COFICOSTFUNC(params, Y, R, num_users, num_movies, ...
%   num_features, lambda) returns the cost and gradient for the
%   collaborative filtering problem.
%

% Unfold the U and W matrices from params
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);

% You need to return the following values correctly
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost function and gradient for collaborative
%               filtering. Concretely, you should first implement the cost
%               function (without regularization) and make sure it is
%               matches our costs. After that, you should implement the
%               gradient and use the checkCostFunction routine to check
%               that the gradient is correct. Finally, you should implement
%               regularization.
%
% Notes: X - num_movies  x num_features matrix of movie features
%        Theta - num_users  x num_features matrix of user features
%        Y - num_movies x num_users matrix of user ratings of movies
%        R - num_movies x num_users matrix, where R(i, j) = 1 if the
%            i-th movie was rated by the j-th user
%
% You should set the following variables correctly:
%
%        X_grad - num_movies x num_features matrix, containing the
%                 partial derivatives w.r.t. to each element of X
%        Theta_grad - num_users x num_features matrix, containing the
%                     partial derivatives w.r.t. to each element of Theta
%
%thetaTransX = X*Theta'
%e = R.*(thetaTransX - Y)
term1 = (X*Theta') - Y.*R;
x_reg = (lambda/2)*sum(sumsq(Theta));
theta_reg = (lambda/2)*sum(sumsq(X));
J = (1/2) * sum(sumsq(term1.*R)) + x_reg + theta_reg;

X_grad = term1.*R * Theta + lambda.*X;
Theta_grad = (term1.*R)' * X + lambda.*Theta;

% =============================================================

grad = [X_grad(:); Theta_grad(:)];

end

%!test
%! params = [ 1:14 ] / 10;
%! Y = magic(4);
%! Y = Y(:,1:3);
%! R = [1 0 1; 1 1 1; 0 0 1; 1 1 0] > 0.5;     % R is logical
%! num_users = 3;
%! num_movies = 4;
%! num_features = 2;
%! lambda = 0;
%! [J grad] = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda);
%! assert(J,311.63, 0.01)
%! assert(grad, [-16.1880;-23.5440;-5.1590;-14.9720 ;-21.4380 ;-30.4620 ;-6.5660 ;-19.5440 ;-3.4230 ;-7.0280 ;-3.4140 ;-12.2590 ;-16.0600 ;-9.7420], 0.002);
%!test
%! params = [ 1:14 ] / 10;
%! Y = magic(4);
%! Y = Y(:,1:3);
%! R = [1 0 1; 1 1 1; 0 0 1; 1 1 0] > 0.5;     % R is logical
%! num_users = 3;
%! num_movies = 4;
%! num_features = 2;
%! lambda = 6;
%! [J grad] = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda);
%! assert(J,342.08, 0.01)
%! assert(grad, [-15.5880; -22.3440; -3.3590; -12.5720; -18.4380; -26.8620; -2.3660; -14.7440; 1.9770; -1.0280; 3.1860; -5.0590; -8.2600; -1.3420], 0.002)
%!test
% a user with no reviews
%! params = [ 1:14 ] / 10;
%! Y = magic(4);
%! Y = Y(:,1:3);
%! R = [1 0 1; 1 1 1; 0 0 0; 1 1 0] > 0.5;     % R is logical
%! num_users = 3;
%! num_movies = 4;
%! num_features = 2;
%! lambda = 6;
%! [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda);
%! assert(J,331.08, 0.01)
%! assert(grad, [-15.5880; -22.3440; 1.8000; -12.5720; -18.4380; -26.8620; 4.2000; -14.7440; 1.9770; -1.0280; 4.5930; -5.0590; -8.2600; 1.9410], 0.002)

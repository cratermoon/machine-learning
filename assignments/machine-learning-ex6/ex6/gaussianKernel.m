function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%

% simplification from https://en.wikipedia.org/wiki/Radial_basis_function_kernel
gamma = 1/(2*sigma^2);

sim = exp(-gamma*(norm(x1 - x2)^2));

% =============================================================

end
%!test
%! x1 = [0, 0, 0];
%! x2 = [2, 4, -1];
%! sigma = 2;
%! assert(gaussianKernel(x1, x2, sigma), 0.0724398, 0.001);
%! x1 = [0, 0, 0];
%! x2 = [1, 1, 1];
%! sigma = 3;
%! assert(gaussianKernel(x1, x2, sigma), 0.846482, 0.001);

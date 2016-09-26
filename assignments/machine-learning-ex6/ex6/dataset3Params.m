function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using
%        mean(double(predictions ~= yval))
%

% C and sigma over [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
o = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
predictionError = 1;
for testC = o
  for testSigma = o
    % TODO: tolerance and max_passes ?
    model = svmTrain(X, y, testC, @(x1, x2) gaussianKernel(x1, x2, testSigma));
    predictions = svmPredict(model, Xval);
    newPredictionError = mean(double(predictions ~= yval));
    if newPredictionError < predictionError
      C = testC;
      sigma = testSigma;
      predictionError = newPredictionError;
    endif
  end
end

%!test
%! X = [0.011521, -0.657895; -0.097120, 0.213158; -0.352189, 0.258187; -0.215323, 0.295029; 0.143433, 0.168129];
%! y = [0;1;1;1;0];
%! Xval = [0.118548, 0.192690; -0.016244, -0.167544; -0.099078, -0.500000; -0.108295, -0.084795; -0.435484, 0.160819];
%! yval = [0;0;0;0;1];
%! [C, sigma] = dataset3Params(X, y, Xval, yval)
%! assert(C, 0.01);
%! assert(sigma, 0.03);




% =========================================================================

end

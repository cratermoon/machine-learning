function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
for i=1:K
  sel = find(idx == i);
  if size(sel)(1) == 0
    randidx = randperm(size(X, 1));
    centroids(i,:) = X(randidx(1), :);
  else
    centroids(i,:) = mean(X(sel,:));
  end
end
%!test
%! c = computeCentroids([0 1; 5 5; -1 8], [2 1 2]', 2);
%1 assert([5.0,5.0;-5.0,4.50], c);
%!test
%! c = computeCentroids([magic(3) ; magic(3) ; [8 1 7]], [1 2 3 2 3 1 1]', 3);
%! assert([6.66667, 3.66667, 5.0; 5.5, 3.0, 6.5; 3.5, 7.0, 4.5], c, 0.00001);





% =============================================================


end

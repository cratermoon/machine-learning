function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K
%               eigenvectors in U (first K columns).
%               For the i-th example X(i,:), the projection on to the k-th
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, 1:k);
%

% Return Z, the product of X and the first 'K' columns of U.

% X is size (m x n), and the portion of U is (n x K). Z is size (m x K).
k = size(Z,1);
for i=1:k
  x = X(i, :)';
  projection_k = x' * U(:, 1:K);
  Z(i,:) = projection_k;
end

% =============================================================

end

%!test
%! Z = projectData(sin([0 1 2; 3 4 5; 6 7 8]), magic(3), 2);
%! assert(Z, [6.161602661726416, 12.391031765470618; -4.977144520097401,-12.273210940448021; 3.693068797058487, 11.909741715005456], 0.00001);

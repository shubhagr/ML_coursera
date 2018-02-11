function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% Creating temp_theta for regularization
temp_theta = theta;
temp_theta(1) = 0;

hypX = X * theta; % dim: (m, n) * (n, 1) = (m, 1)

error = hypX - y;
J = error' * error / (2 * m) ;
% Adding regularization term
J = J + (temp_theta' * temp_theta) * lambda / (2 * m);

grad = X' * (hypX - y) / m; % dim: (n, m) * (m, 1) = (n, 1)
% adding regularization terms
grad = grad + temp_theta * lambda / m;
% =========================================================================


grad = grad(:);

end

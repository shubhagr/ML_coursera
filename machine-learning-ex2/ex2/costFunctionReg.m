function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta);

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

hyp_theta = sigmoid(X * theta);

J = - (y' * log(hyp_theta) + (1 .- y)' * log(1 .- hyp_theta) ) / m + (theta(2 : n)' * theta(2 : n)) * lambda / (2 * m);

grad(1) = ((hyp_theta - y)' * X (:, 1)) / m;

grad(2 : n) = ( X(:, 2 : n)' * (hyp_theta - y)) ./ m + theta( 2 : n) .* (lambda / m);

% =============================================================

end

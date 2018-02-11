function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% Optimal
C = 1.0;
sigma = 0.1;

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

%===============Optimal C = 1.000000, sigma = 0.100000==========================

%arr = [0.01 0.03 0.1 0.3 1 3 10 30];
%error = 10^3;
%`counter = 1;

%for i = 1 : numel(arr)
%  for j = 1 : numel (arr)
    
%    C_temp = arr(i);
%    sigma_temp = arr(j);
    
%    fprintf('Going pass = %f : C = %f, sigma = %f\n', counter, C_temp, sigma_temp);
%    model = svmTrain(X, y, C_temp, @(x1, x2) gaussianKernel(x1, x2, sigma_temp));
%    counter = counter + 1;
    
%    predictions = svmPredict(model, Xval);
    
%    error_temp = mean(double(predictions ~= yval));
    
%    if error_temp < error
%      error = error_temp;
%      C = C_temp;
%      sigma = sigma_temp;
%    end
    
%  end
%end

% =========================================================================

end

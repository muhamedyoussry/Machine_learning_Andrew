function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta)); % 3*1 vector 
initial_theta = zeros(size(theta));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
%hypothesis of the logistics regression function 
hypothesis = sigmoid(X*theta) ;

% y =1 and y =0 term of the logistics regression cost function 
y0_term = (1-y).*log(1-hypothesis) ;
y1_term = y.*log(hypothesis);

% compute the cost function 
J = (1/m) * sum(-y1_term - y0_term);

grad = (1/m) * sum( (hypothesis-y).*X );


% =============================================================

end

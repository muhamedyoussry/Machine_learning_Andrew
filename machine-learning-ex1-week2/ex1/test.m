theta
prediction = X*theta 
error = (prediction - y);
error
size(error) 
operation = error.*X ;
size(operation)
operation
theta0sumequation = sum(operation(: , 1) )
theta1sumequation = sum(operation(: ,2 ) )
theta0 = theta(1,1)
theta1 = theta(2,1)
(alpha/m) * theta0sumequation
(alpha/m) * theta1sumequation
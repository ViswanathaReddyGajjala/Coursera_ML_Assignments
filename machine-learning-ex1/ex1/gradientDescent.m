function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);



% Nested loop implementation:
	% num_thetas = length(theta);
	% theta_new = zeros(num_thetas,1);
	% for j = 1:num_thetas
	%	inner_sum = 0;
	%	for i = 1:m
	%		inner_sum = inner_sum + ((X(i,:) * theta) - y(i)) * X(i,j);
	%	end
	%	theta_new(j) = theta(j) - (alpha / m * inner_sum);
	%end

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

	%num_thetas=length(theta);
	%new_theta=zeros(num_thetas,1);
	%for j=1:num_thetas
	#	inner_sum=0;
		%inner_sum = inner_sum + (  ( X * theta ) - y ) * X
		%theta(j)=theta(j)- alpha * 1/m * inner_sum
	#	for i=1:m
	#		inner_sum = inner_sum + ( ( X(i,:) * theta ) - y(i) ) * X(i,j);

	#	end;
	#	new_theta(j)=theta(j)- ( alpha / m * inner_sum);
	#theta=new_theta;
    % ============================================================


	Error=( X * theta ) - y;
	Error2=( Error' * X )';
	theta = theta - ( alpha/m ) .* Error2; 
	
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end

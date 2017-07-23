function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
#size(X)
#M=length(mu);
#for i=1:M
	
#	mu(i)=mean(X(:,i));
#mu(2)=mean(X(:,2));
#mu
#	sigma(i)=std(X(:,i));
#sigma(2)=std(X(:,2));
#sigma
#end



% ===

mu = mean(X);
sigma = std(X);
m=length(X);
[m,n]=size(X);
for i=1:n
	X_norm(:,i) = ( X(:,i)-mu(i) ) / sigma(i);
end
#m=length(X);
#[m,n]=size(X);
#for i=1:m
#	for j=1:n
#	x1=X(i,1)-mu(1)/sigma(1);
#	x2=X(i,2)-mu(2)/sigma(2);
#	X_norm = [ X_norm; [x1,x2] ];
	#end
#end
#X_norm
% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       









% ============================================================

end

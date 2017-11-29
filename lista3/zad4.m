function[labels] = kmeans(k, X)
	n = size(X, 2);
	centers = ceil(k*rand(1, n));
	labels=centers;
end
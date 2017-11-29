function[labels] = kmeans(k, X, it)
        n = size(X, 2);
        labels = randi(k, n, 1);
        printf(labels)
	for i = 1:it
                E=sparse(1:n, labels, 1, n, k, n);
		m = X*(E*spdiags(1./sum(E,1)',0,k,k));
		labels = max(bsxfun(@minus,m'*X,dot(m,m,1)'/2),[],1);
        end
end

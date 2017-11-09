d = 100;
a = [1, 1, 1, 1, 1];
x = rand(d, 1)
y = rand(d, 1);
w = rand(d, 1);
len_x = sqrt(sum(x.*x))
len_a = sum(a.*a)

weight_mean = sum(x.*w)/sum(w)

dist = sqrt(sum((x-y).^2))
scalar = sum(x.*y)

N = 1000;
X = rand(d, N);
len_X = sqrt(sum(X.*X, 1));
X_times_w = bsxfun(@times, X, w);
weight_meanM = sum(X_times_w, 1)/sum(w);
X_times_y = bsxfun(@times, X, y);
scalarM = sum(X_times_y, 1);

X_minus_y = bsxfun(@minus, X, y);
distM = sqrt(sum(X_minus_y.^2, 1));

save('wynikizad2.txt', 'len_x', 'weight_mean', 'dist', 'scalar', 'len_X', 'weight_meanM', 'distM','scalarM', '-ascii')

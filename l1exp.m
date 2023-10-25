function d = l1exp(t, tau, alpha, sigma, n)

m = l1(t, tau, alpha, sigma, n);
d = zeros(n, 1);
for k=1:n
    d(k) = exp(-sigma*(t(n+1)-(t(k)+t(k+1))/2))*m(k);
end
end

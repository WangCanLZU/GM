function m = l1(t, tau, alpha, sigma, n)
m = zeros(n, 1);
for k=1:n
    temp1 = ((t(n+1)-t(k))^(1-alpha)-(t(n+1)-t(k+1))^(1-alpha))/(1-alpha);
    temp2 = -sigma^(alpha-1)*(exp(sigma*(t(n+1)-t(k)))-exp(sigma*(t(n+1)-t(k+1))));
    temp3 = (sigma*t(n+1)*((t(n+1)-t(k))^(1-alpha)-(t(n+1)-t(k+1))^(1-alpha)))/(1-alpha);
    temp4 = -(sigma*((t(n+1)-t(k))^(2-alpha)-(t(n+1)-t(k+1))^(2-alpha)))/(2-alpha);
    m(k) = (temp1+temp2+temp3+temp4)/tau(k);
end
end

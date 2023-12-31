function [t, x, y, U] = graded_solver(T, a, b, c, d, alpha, sigma, r, N1, N2, N, u0, f)
t = T * ((0:N)/N).^r;
tau = diff(t);
h1 = (b-a)/N1;
x = a:h1:b;
h2 = (d-c)/N2;
y = c:h2:d;
[X, Y] = meshgrid(x(2:end-1), y(2:end-1));
I1 = speye(N1-1, N1-1);
E1 = sparse(2:N1-1,1:N1-2,1,N1-1,N1-1);
D1 = (E1+E1'-2*I1)/h1^2;
I2 = speye(N2-1, N2-1);
E2 = sparse(2:N2-1,1:N2-2,1,N2-1,N2-1);
D2 = (E2+E2'-2*I2)/h2^2;
eye_matrix1 = speye((N1-1)*(N2-1),(N1-1)*(N2-1))
constant = 1/gamma(1-alpha);
%A = (diag(-2*ones(N1-1, 1)) + diag(ones(N1-2, 1), 1) + diag(ones(N1-2, 1),-1))/h1^2;
A = kron(I1,D2) + kron(D1,I2); 
U = zeros((N1-1)*(N2-1),N+1)
u_0 = u0(X, Y);
U(:,1) = u_0(:);
for n=2:N+1
    d = l1exp(t, tau, alpha, sigma, n-1); 
    D = constant * d(n-1)*eye_matrix1 - A; 
    F = f(X, Y, t(n));
    E=F(:);
    b = E + constant * d(1)*U(:, 1);     
    for k=1:n-2
        b = b + constant * (d(k+1)-d(k))* U(:, k+1); 
    end
    U(:, n) = D\b;
end

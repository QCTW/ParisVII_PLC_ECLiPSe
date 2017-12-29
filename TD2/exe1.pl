% Partiel : Jeudi 20 Octobre

9<10.
% Yes (0.00s cpu)

X<10.
% instantiation fault in X < 10
% Abort

X is 9+2, Y = X*2.
% X = 11
% Y = 11 * 2
% Yes (0.00s cpu)

Y = X*2, X is 9+2.
% Y = 11 * 2
% X = 11
% Yes (0.00s cpu)

X is Y+1, Y is 3.
% instantiation fault in +(Y, 1, _376)
% Abort

X is 2, Y is X+1, X+Y<6.
% X = 2
% Y = 3
% Yes (0.00s cpu)

n(X,n(X,a,b),f(Y))=n(Y,n(a,a,b),f(Z)).
% X = a
% Y = a
% Z = a
% Yes (0.00s cpu)

g(X,f(Y,X),A)=g(f(A),C,f(B)).
% X = f(f(B))
% Y = Y
% A = f(B)
% C = f(Y, f(f(B)))
% B = B
% Yes (0.00s cpu)

g(X,f(Y,X),A)=g(f(A),C,f(B)).
% X = f(f(B))
% Y = Y
% A = f(B)
% C = f(Y, f(f(B)))
% B = B
% Yes (0.00s cpu)

f(X,X)=f(g(a,Y),g(Z,b)).
% X = g(a, b)
% Y = b
% Z = a
% Yes (0.00s cpu)

f(g(X,a),Y)=f(Y,g(b,Z)).
% X = b
% Y = g(b, a)
% Z = a
% Yes (0.00s cpu)

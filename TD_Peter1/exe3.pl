:- use_module(library(clpr)).
recipients(A1, B1, C1, A2, B2, C2, N):- { N=0, A2=A1, B2=B1, C2=C1 }.
recipients(A, B, C, A1, B1, C1, N):- { A2=0.93*A+0.04*C,
                                       B2=0.95*B+0.03*C,
                                       C2=0.96*C+0.05*B,
                                       N1=N-1, N>0 }, recipients(A2, B2, C2, A1, B1, C1, N1).

% recipients(X, X, X, A, B, C, 100).
% X = X
% A = A
% B = B
% C = C
% Linear constraints:
% {
%   A = 0.41395849533826345 * X,
%   B = 0.45161338609662466 * X,
%   C = 0.66306571861035735 * X
% }Yes (0.01s cpu, solution 1, maybe more) ? ;

% {X>0, N>0}, recipients(X, X, X, A, B, C, N), recipients(A, B, C, A, B, C, 1).
% X = X
% N = 3032.0
% A = A
% B = B
% C = C
% Linear constraints:
% {
%   A = 1.0462561149680285e-8 * X,
%   B = 1.1409553546198387e-8 * X,
%   C = 1.6753502572105653e-8 * X,
%   X > 0.0
% }Yes (47.60s cpu, solution 1, maybe more) ? ;
% ...


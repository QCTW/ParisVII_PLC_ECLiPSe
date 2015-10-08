% Initial status as n=0
afficher(0) :- writeln(0).
% Sequential call
afficher(X) :- X>0, P is X-1, afficher(P), writeln(X).
% Result :
% [eclipse 2]: afficher(10).
% 10
% 9
% 8
% 7
% 6
% 5
% 4
% 3
% 2
% 1
% 0
% Yes (0.00s cpu, solution 1, maybe more) ?

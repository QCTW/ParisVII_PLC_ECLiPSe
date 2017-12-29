genere([], []).
genere([X:Val|R],[(X,V)|R1]) :- member(V, Val), genere(R,R1).

teste([]).
teste([X|L]) :- testeSub(X,L), teste(L).

testeSub(_,[]).
testeSub(X,[Y|L]) :- consistants(X,Y), testeSub(X,L).

genereEtTeste(A) :- variables(L), genere(L, A), teste(A).
% [eclipse 3]: genereEtTeste(A).
%
% A = [(x(1), 2), (x(2), 4), (x(3), 1), (x(4), 3)]
% Yes (0.00s cpu, solution 1, maybe more) ? ;
% A = [(x(1), 3), (x(2), 1), (x(3), 4), (x(4), 2)]
% Yes (0.00s cpu, solution 2, maybe more) ? ;
% 
% No (0.00s cpu)

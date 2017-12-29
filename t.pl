fact1(0,1).
fact1(N,R):-N>0, P is N-1, fact1(P,V), R is N*V.
fact2(X,1) :- X=:=0.
fact2(N,R) :- N>0, P is N-1, fact2(P,V), R is N*V.
myMax(X,Y,X) :- X>=Y,!.
myMax(X,Y,Y).
inter([],T,[]).
inter([C|G],T,[C|P]) :- member(C,T),inter(G,T,P).
inter([C|G],T,R) :- not(member(C,T)),inter(G,T,R).
myMember(X,[X|_]) :- !.
myMember(X,[_|L]) :- myMember(X,L).

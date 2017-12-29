%[1,3,5,7].
somme([],0).
somme([X],Y) :- Y = X.
somme([X|Rest],V) :- somme(Rest, Y), V is X+Y.

move(Src, Dest) :- (R is Src-3; R is Src-2; R is Src-1), M is R mod 3, M=\=0, Dest is R.
gagne(Fin) :- Fin==1; Fin==2; Fin==3.
gagne(C) :- move(C,D), not(gagne(D)).

%move([X|L],[Y|L]) :- entre(O,X,Y).
%move([X|L],[X|R]) :- move(L,R).
%entre(X,Y,X) :- X<Y.
%entre(X,Y,R) :- X<Y, S is X+1, entre(S,Y,R).

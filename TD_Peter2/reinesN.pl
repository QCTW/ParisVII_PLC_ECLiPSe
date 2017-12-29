/* Code Prolog pour le CSP des n reines */

:- dynamic(variables/1).

/* genereReines(N) génère la définition du prédicat variables/1 pour le problème du placement de N reines sur un échiquier NxN */
genereReines(N) :-
	retractall(variables(_)),
	listeNbComprisEntre(1,N,Lnb),
	genereVariables(Lnb,1,N,V),
	asserta(variables(V)).

listeNbComprisEntre(N,N,[N]) :- !.
listeNbComprisEntre(K,N,[K|L]) :-
	Kplus1 is K+1,
	listeNbComprisEntre(Kplus1,N,L).

genereVariables(Lnb,N,N,[x(N):Lnb]) :- !.
genereVariables(Lnb,I,N,[x(I):Lnb|Variables]) :-
	Iplus1 is I + 1,
	genereVariables(Lnb,Iplus1,N,Variables).


consistants((x(I),VI),(x(J),VJ)) :-
	VI =\= VJ,
	I+VI =\= J+VJ,
	I-VI =\= J-VJ.


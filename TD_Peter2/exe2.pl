teste([]).
teste([X|L]) :- teste(X,L), teste(L).

teste(_,[]).
teste(X,[Y|L]) :- consistants(X,Y), teste(X,L).

% [eclipse 3]: teste((x(3),1),[(x(1),1),(x(2),3)]).
% No (0.00s cpu)
% [eclipse 4]: teste((x(3),1),[(x(1),2),(x(2),4)]).
% Yes (0.00s cpu)

simpleretourenarriere([], _, []).
simpleretourenarriere([X:Values|V], Solpartielle, [(X,Val)|Sol]) :- 
    member(Val, Values), 
    teste((X, Val), Solpartielle), 
    simpleretourenarriere(V, [(X,Val)|Solpartielle], Sol).
simpleretourenarriere(Sol) :- variables(Vars), simpleretourenarriere(Vars, [], Sol).

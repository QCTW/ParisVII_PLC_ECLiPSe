:- use_module(library(clpr)).
moyenne([]).
moyenne([_]).
moyenne([_,_]).
moyenne([X,Y,Z|Rest]):-{Y=(X+Z)/2}, moyenne([Y,Z|Rest]).

% moyenne([0,_,_,_,_,_,100]).
% Yes (0.00s cpu, solution 1, maybe more) ? 
% Note: Here will be always Yes because _ is treated as already-known value

% L=[0,_,_,_,_,_,100],moyenne(L).
% L = [0, 16.666666666666664, 33.333333333333329, 49.999999999999993, 66.666666666666657, 83.333333333333314, 100]
% Yes (0.00s cpu, solution 1, maybe more) ? ;
% Note: Here we force Prolog to give us an answer of variable L

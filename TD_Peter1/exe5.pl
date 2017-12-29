:- use_module(library(clpr)).
feuille([]).
feuille([_]).
feuille([_,_]).
feuille([L1, L2, L3|Rest]):-moy(L1, L2, L3), feuille(L2,L3|Rest).

% [ _, B, C ],
% [ D, E, R ],
% [ _, H, I ]
% Target E = (B+D+R+H)/4
moy([],_,_).
moy([_],_,_).
moy([_,_],_,_).
moy([_,B,C|R1],[D,E,F|R2],[_,H,I|R3]):-{E=(B+D+F+H)/4},moy([B,C|R1],[E,F|R2],[H,I|R3]).

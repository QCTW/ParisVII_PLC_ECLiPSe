:- use_module(library(clpr)).

%
credit(Totale, Temps, _, _, Reste) :- { Temps=0, Reste=Totale }.
credit(Totale, Temps, Taux, Montant, Reste) :- { Temps>=1, NTotale=Totale+Totale*Taux-Montant, NTemps=Temps-1 }, 
                                               credit(NTotale, NTemps, Taux, Montant, Reste).
% credit(1000, 10, 0.10, 150, Reste).
% Reste = 203.12876995000016
% Yes (0.00s cpu, solution 1, maybe more) ? ;

% credit(Emprunter, 10, 0.10, 150, 0).
% Emprunter = 921.68506585570208
% Yes (0.00s cpu, solution 1, maybe more) ? ;

% credit(10000, 10, 0.03, Montant, 0).
% Montant = 1172.305066051596
% Yes (0.00s cpu, solution 1, maybe more) ? ;

% credit(1000000, T, 0.07, M, 0), { CoutTotal=T*M }.
% T = 1.0
% M = 1070000.0
% CoutTotal = 1070000.0
% Yes (0.00s cpu, solution 1, maybe more) ? ;
%
% T = 2.0
% M = 553091.78743961349
% CoutTotal = 1106183.574879227
% Yes (0.00s cpu, solution 2, maybe more) ? ;
%
% T = 3.0
% M = 381051.66568166966
% CoutTotal = 1143154.9970450089
% Yes (0.00s cpu, solution 3, maybe more) ? ;
% ...

% credit(10000, 10, Taux, 1200, 0).
% Taux = Taux
% There are 9 delayed goals. Do you want to see them? (y/n) 
% Delayed goals:
% 	{1200.0 - _418 * Taux - _418 + _880 = 0}
% 	{1200.0 - _880 * Taux - _880 + _1192 = 0}
% 	{1200.0 - _1192 * Taux - _1192 + _1490 = 0}
% 	{1200.0 - _1490 * Taux - _1490 + _1788 = 0}
% 	{1200.0 - _1788 * Taux - _1788 + _2086 = 0}
% 	{1200.0 - _2086 * Taux - _2086 + _2384 = 0}
% 	{1200.0 - _2384 * Taux - _2384 + _2682 = 0}
%	{1200.0 - _2682 * Taux - _2682 + _2980 = 0}
%	{1200.0 - _2980 * Taux - _2980 = 0}
% Yes (0.00s cpu, solution 1, maybe more) ? ;

% credit(150, 1, 0.10, Montant, 0).
% A voir

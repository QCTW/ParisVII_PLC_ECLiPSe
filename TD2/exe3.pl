boucle :- writeln("Entrez un texte:"), read(R), afficher(R).
afficher(0) :- writeln("Au revoir").
% \== is physical not equality, =\= is structural not equality
% With read/1, it's not allowed to type in something starting with capital and
% without the quote because capital letter refers to variable for Prolog
afficher(Txt) :- Txt \== 0, writeln(Txt), boucle.
% [eclipse 2]: boucle.
% Entrez un texte:
%  qwert
%  .
% qwert
% Entrez un texte:
%  "ASDFG".
% ASDFG
% Entrez un texte:
%  12345.
% 12345
% Entrez un texte:
%  0.
% Au revoir
%
%Yes (0.00s cpu, solution 1, maybe more) ? 

X#::[2..7], Y::[1..5], Z::[1..2], X#=2*Y+Z, X+Y#=6.
% X = X{[4, 5]}
% Y = Y{[1, 2]}
% Z = Z{[1, 2]}
% 
% Delayed goals:
%	-(Z{[1, 2]}) - 2 * Y{[1, 2]} + X{[4, 5]} #= 0
%	Y{[1, 2]} + X{[4, 5]} #= 6
% Yes (0.00s cpu)

X#::[2..7], Y::[1..5], Z::[1..2], X#=2*Y+Z, X+Y#=6, labeling([X,Y,Z]).
% lists.eco  loaded in 0.00 seconds
% No (0.00s cpu)

(1000*S+100*E+10*N+D)+(1000*M+100*O+10*R+E)#=(10000*M+1000*O+100*N+10*E+Y),
[E,N,D,O,R,Y]#::[0..9], [S,M]#::[1..9],
alldifferent([S,E,N,D,M,O,R,Y]).

% S = 9
% E = E{4 .. 7}
% N = N{5 .. 8}
% D = D{2 .. 8}
% M = 1
% O = 0
% R = R{2 .. 8}
% Y = Y{2 .. 8}
%
% There are 6 delayed goals. Do you want to see them? (y/n) 
%
% Delayed goals:
%	-(Y{2 .. 8}) + 10 * R{2 .. 8} - 90 * N{5 .. 8} + 91 * E{4 .. 7} + D{2 .. 8} #= 0
%	ic_constraints : outof(E{4 .. 7}, [9], [N{5 .. 8}, D{2 .. 8}, 1, 0, R{2 .. 8}, Y{2 .. 8}])
%	ic_constraints : outof(N{5 .. 8}, [E{4 .. 7}, 9], [D{2 .. 8}, 1, 0, R{2 .. 8}, Y{2 .. 8}])
%	ic_constraints : outof(D{2 .. 8}, [N{5 .. 8}, E{4 .. 7}, 9], [1, 0, R{2 .. 8}, Y{2 .. 8}])
%	ic_constraints : outof(R{2 .. 8}, [0, 1, D{2 .. 8}, N{5 .. 8}, E{4 .. 7}, 9], [Y{2 .. 8}])
% 	ic_constraints : outof(Y{2 .. 8}, [R{2 .. 8}, 0, 1, D{2 .. 8}, N{5 .. 8}, E{4 .. 7}, 9], [])
% Yes (0.00s cpu)


(1000*S+100*E+10*N+D)+(1000*M+100*O+10*R+E)#=(10000*M+1000*O+100*N+10*E+Y), 
[E,N,D,O,R,Y]#::[0..9], [S,M]#::[1..9],
alldifferent([S,E,N,D,M,O,R,Y]), 
labeling([S,E,N,D,M,O,R,E,Y]).

% lists.eco  loaded in 0.00 seconds
%
% S = 9
% E = 5
% N = 6
% D = 7
% M = 1
% O = 0
% R = 8
% Y = 2
% Yes (0.00s cpu, solution 1, maybe more) ? ;
% 
% No (0.00s cpu)

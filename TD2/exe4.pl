?- [a,[a]]=[H|T].
% H = a
% T = [[a]]
% Yes (0.00s cpu)
?-[[a,b],c]=[[H|T1]|T2].
% H = a
% T1 = [b]
% T2 = [c]
% Yes (0.00s cpu)
?-[a,b,[c]]=[H1|[H2|[H3|T]]].
% H1 = a
% H2 = b
% H3 = [c]
% T = []
% Yes (0.00s cpu)

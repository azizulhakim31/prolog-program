solve(Q) :-
permutation([1,2,3,4], Q),
safe(Q).
safe([]).
safe([Q|Rest]) :-
no_attack(Q, Rest, 1),
safe(Rest).
no_attack(_, [], _).
no_attack(Q, [C|Rest], D) :-
abs(Q - C) =\= D,
D1 is D + 1,
no_attack(Q, Rest, D1).
show_board([]).

show_board([Col|Rest]) :-
print_row(1, Col),
show_board(Rest).
print_row(5, _) :- nl.
print_row(N, Col) :-
(N =:= Col -> write(' Q ') ; write(' . ')),
N1 is N + 1,
print_row(N1, Col).
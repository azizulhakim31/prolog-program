path(london, berlin, 105).
path(london, dubai, 96).
path(london, tokyo, 167).
path(london, sydney, 189).
path(berlin, dubai, 158).
path(berlin, tokyo, 132).
path(berlin, sydney, 175).
path(dubai, tokyo, 148).
path(dubai, sydney, 110).
path(tokyo, sydney, 122).

distance(X, Y, D) :-
    path(X, Y, D).
distance(X, Y, D) :-
    path(Y, X, D).

city(london).
city(berlin).
city(dubai).
city(tokyo).
city(sydney).

other_cities(Start, Cities) :-
    findall(C, (city(C), C \= Start), Cities).

perm([], []).
perm(List, [H | T]) :-
    select(H, List, Rest),
    perm(Rest, T).

cycle_cost([Start | Rest], Cost) :-
    travel_cost([Start | Rest], C1),
    last(Rest, Last),
    distance(Last, Start, C2),
    Cost is C1 + C2.

travel_cost([_], 0).
travel_cost([A, B | T], Cost) :-
    distance(A, B, D),
    travel_cost([B | T], Rest),
    Cost is D + Rest.

travel(Start, Path, Cost) :-
    other_cities(Start, Cities),
    perm(Cities, Perm),
    append([Start|Perm], [Start], Path),
    cycle_cost([Start|Perm], Cost).
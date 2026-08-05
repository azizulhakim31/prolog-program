% Query example:
% ?- start.
% Enter a list (elements separated by commas): [3,1,2,4]
% Largest element is: 4
% Smallest element is: 1

largest([X], X).
largest([H|T], Max) :-
    largest(T, TempMax),
    ( H > TempMax ->
    Max = H;
    Max = TempMax
    ).

smallest([X], X).
smallest([H|T], Min) :-
    smallest(T, TempMin),
    ( H < TempMin ->
    Min = H;
    Min = TempMin
    ).

start :-
    write('Enter a list (elements separated by commas): '),
    read(List),
    largest(List, Max),
    smallest(List, Min),
    write('Largest element is: '),
    write(Max), nl,
    write('Smallest element is: '),
    write(Min), nl.
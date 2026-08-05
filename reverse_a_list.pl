% Query example:
% ?- start.
% Enter a list: [1,2,3,4]
% Reversed list is: [4,3,2,1]

reverse_list([], []).
reverse_list([H|T], R) :-
    reverse_list(T, RT),
    append(RT, [H], R).

start :-
    write('Enter a list: '),
    read(List),
    reverse_list(List, Reversed),
    write('Reversed list is: '),
    write(Reversed).
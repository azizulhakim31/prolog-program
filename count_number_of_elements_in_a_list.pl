count([], 0).
count([_|T], N) :-
count(T, N1),
N is N1 + 1.

start :-
write('Enter a list: '),
read(L),
count(L, N),
write('Number of elements = '),
write(N).
% Query example:
% ?- start.
% Enter first number: 2
% Enter second number: 3
% Sum = 5
% Product = 6

start :-
    write('Enter first number: '),
    read(X),
    write('Enter second number: '),
    read(Y),
    add(X, Y, Sum),
    multiply(X, Y, Product),
    write('Sum = '),
    write(Sum), nl,
    write('Product = '),
    write(Product), nl.

add(X, Y, Sum) :-
    Sum is X + Y.

multiply(X, Y, Product) :-
    Product is X * Y.
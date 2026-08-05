edge(a,b).
edge(a,c).

edge(b,d).
edge(b,e).

edge(c,f).
edge(c,g).

bfs(Start, Path) :-
    bfs_visit([Start], [], RevPath),
    reverse(RevPath, Path).

bfs_visit([], Visited, Visited).
bfs_visit([Node|Queue], Visited, Path) :-
    \+ member(Node, Visited),
    findall(Next, edge(Node, Next), Children),
    append(Queue, Children, NewQueue),
    bfs_visit(NewQueue, [Node|Visited], Path).

bfs_visit([Node|Queue], Visited, Path) :-
    member(Node, Visited),
    bfs_visit(Queue, Visited, Path).

reverse(L, R) :-
    rev(L, [], R).

rev([], Acc, Acc).
rev([H|T], Acc, R) :-
    rev(T, [H|Acc], R).
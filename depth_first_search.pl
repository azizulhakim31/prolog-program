% Query example:
% ?- dfs(a, Path).

edge(a,b).
edge(a,c).

edge(b,d).
edge(b,e).

edge(c,f).
edge(c,g).

dfs(Start, Path) :-
    dfs_visit([Start], [], RevPath),
    reverse(RevPath, Path).

dfs_visit([], Visited, Visited).
dfs_visit([Node|Stack], Visited, Path) :-
    \+ member(Node, Visited),
    findall(Next, edge(Node, Next), Children),
    append(Children, Stack, NewStack),
    dfs_visit(NewStack, [Node|Visited], Path).

dfs_visit([Node|Stack], Visited, Path) :-
    member(Node, Visited),
    dfs_visit(Stack, Visited, Path).

reverse(L, R) :-
    rev(L, [], R).

rev([], Acc, Acc).
rev([H|T], Acc, R) :-
    rev(T, [H|Acc], R).
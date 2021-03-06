solution([]).
solution([X/Y|Others]) :-
    solution(Others),
    member(Y, [1,2,3,4,5,6,7,8]),
    noattack(X/Y, Others).


noattack(_,[]).
noattack(X/Y, [X1/Y1|Others]):-
	% X < X1,
    Y =\= Y1,
    noattack(X/Y, Others).


template([1/Y1, 2/Y2, 3/Y3, 4/Y4, 5/Y5, 6/Y6, 7/Y7, 8/Y8]).
% template(A), solution(A).

main :-
    open('rooks.out',write,ID),
    (   ( template(X), solution(X), write(ID,X), nl(ID), fail )
       ; close(ID)
    ).

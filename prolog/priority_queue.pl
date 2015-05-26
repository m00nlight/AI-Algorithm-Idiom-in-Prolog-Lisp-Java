:- module(priority_queue,
	  [ insert_pq/3
	  ]).

% use key-value pair to store the pair, value as the
% precedence compare component of the key


insert_pq(Key-Value, [ ], [Key-Value]) :- !.
insert_pq(Key-Value, [K1-V1 | Tail],[Key-Value, K1-V1 | Tail]) :-
	precedens(Value, V1), !.
insert_pq(Key-Value, [H | T], [H | Tnew]) :-
	insert_pq(Key-Value, T, Tnew).

precedens(X, Y) :- X < Y.

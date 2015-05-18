:- module(set,
	  [ empty_set/1,
	    set_is_member/2,
	    set_add/3,
	    set_delete/3,
	    set_union/3,
	    set_intersection/3,
	    set_difference/3,
	    set_is_subset/2,
	    set_is_equal/2
	  ]).

empty_set([ ]).

set_is_member(E, S) :-
	member(E, S).

add_if_not_in_set(X, S, S) :-
	member(X, S), !.
add_if_not_in_set(X, S, [X|S]).

set_add(X, S, Ns) :-
	add_if_not_in_set(X, S, Ns).

delete_if_in_set(_, [], []).
delete_if_in_set(E, [E | T], T) :- !.
delete_if_in_set(E, [H | T], [H | T_new]) :-
	delete_if_in_set(E, T, T_new), !.

set_delete(X, S, Ns) :-
	delete_if_in_set(X, S, Ns).


set_is_subset([], _).
set_is_subset([H | T], S) :-
	member(H, S),
	set_is_subset(T, S).

set_intersection([], _, []).
set_intersection([H | T], S, [H | S_new]) :-
	set_is_member(H, S),
	set_intersection(T, S, S_new), !.


set_union([], S, S).
set_union([H | T], S, S_new) :-
	set_union(T, S, S2),
	add_if_not_in_set(H, S2, S_new).

set_difference([], _, []).
set_difference([H | T], S, T_new) :-
	set_is_member(H, S),
	set_difference(T, S, T_new), !.
set_difference([H | T], S, [H | T_new]) :-
	set_difference(T, S, T_new), !.

set_is_equal(S1, S2) :-
	set_is_subset(S1, S2),
	set_is_subset(S2, S1).


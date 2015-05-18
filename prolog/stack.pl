:- module(stack,
	  [ empty_stack/1,
	    stack/3,
	    stack_is_member/2
	  ]).

empty_stack([]).

stack(Top, Stack, [Top | Stack]).

stack_is_member(Elem, Stack) :-
	member(Elem, Stack).

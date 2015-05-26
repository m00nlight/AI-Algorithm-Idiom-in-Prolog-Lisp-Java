:- module(queue,
	  [ empty_queue/1
	  , enqueue/3
	  , dequeue/3
	  , member_queue/2
	  , add_list_to_queue/3
	  ]).

empty_queue([]).

enqueue(E, [ ], [E]).
enqueue(E, [H | T], [H | Tnew]) :-
	enqueue(E, T, Tnew).

dequeue(E, [E | T], T).

% dequeue(E, [E | T], _) to work as peek of queue

member_queue(Elem, Queue) :-
	member(Elem, Queue).

add_list_to_queue(List, Queue, NewQueue) :-
	append(Queue, List, NewQueue).


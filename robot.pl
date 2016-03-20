:-dynamic in/1,
	state/1,
	atBlock/1,
	zone/5,
	color/2,
	at/1,
	holding/1,
	place/1,
	sequence/1,
	sequenceIndex/1,
	visited/1,
	block/2.
	
% A room is a place with exactly one neighbour, i.e., there is only one way to get to and from that place.
room(PlaceID) :- zone(_,PlaceID,_,_,Neighbours), length(Neighbours,1).
nextColorInSeq(Color) :- sequenceIndex(X), sequence(Y), nth0(X, Y, Color).

% Exercise 2.2: insert a definition of the predicate "nextColorInSeq(Color)".

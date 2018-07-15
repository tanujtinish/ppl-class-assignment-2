bubblesort(List,Sorted):-  swap(List, List1), !, bubblesort(List1,Sorted).
bubblesort(Sorted,Sorted).
swap([X,Y|Rest],[Y,X|Rest]):- X>Y.
swap([Z|Rest],[Z|Rest1]):-swap(Rest,Rest1).

bubblesort2(List,Sorted):-  swap2(List, List1), !, bubblesort2(List1,Sorted).
bubblesort2(Sorted,Sorted).
swap2([X,Y|Rest],[Y,X|Rest]):- X<Y.
swap2([Z|Rest],[Z|Rest1]):-swap2(Rest,Rest1).

findMed(List, M):- bubblesort(List, List1), bubblesort2(List, List2), traverse(List1, List2, M).
traverse([X|List1], [Y|List2], M):- Y > X , traverse(List1, List2,M).
traverse([X|List1], [Y|List2], M):- M is (X + Y)/2.

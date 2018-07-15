grandfather(X,Y):- father(X,Z), father(Z,Y).
grandson(Y,X):- father(X,Z), father(Z,Y), male(Y).
granddaughter(Y,X):- father(X,Z), father(Z,Y), female(Y).
brother(X,Y):- father(Z,X), father(Z,Y), male(X),not(X=Y).
father(disney,mickeymouse).
father(disney,donaldduck).
father(mickeymouse,minto).
father(mickeymouse,morley).
father(mickeymouse,morty).
father(mickeymouse,maisie).
father(donaldduck,goofy).
male(minto).
male(morley).
male(mickeymouse).
male(donaldduck).
female(morty).
female(maisie).
female(minniemouse).
female(nemo).
female(daisyduck).
wife(minniemouse,mickeymouse).
wife(nemo,goofy).
wife(daisyduck,donaldduck).
mother(X,Y):-female(X),father(Z,Y),wife(X,Z).

uncle(X,Y):- mother(Z,Y), brother(X,Z).
uncle(X,Y):- father(Z,Y), brother(X,Z).
uncle(X,Y):- father(Z,Y), brother(A,Z), female(A),wife(X,A).
uncle(X,Y):- mother(Z,Y), father(W,Z), father(W,A), wife(A,X).

aunt(X,Y):- mother(Z,Y), father(W,Z), father(W,X), not(brother(X,Z)).
aunt(X,Y):- father(Z,Y), brother(Z, X), female(X).
aunt(X,Y):- uncle(Z,Y), wife(X,Z).

cousin(X,Y):- father(Z,X), uncle(Z,Y).
cousin(X,Y):- mother(Z,X), aunt(Z,Y).

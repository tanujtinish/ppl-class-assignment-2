fun(0):- write('').
fun(1):- write('one').
fun(2):- write('two').
fun(3):- write('three').
fun(4):- write('four').
fun(5):- write('five').
fun(6):- write('six').
fun(7):- write('seven').
fun(8):- write('eight').
fun(9):- write('nine').
fun(10):- write('ten').
fun(11):- write('eleven').
fun(12):- write('twelve').
fun(13):- write('thirteen').
fun(14):- write('fourteen').
fun(15):- write('fifteen').
fun(16):- write('sixteen').
fun(17):- write('seventeen').
fun(18):- write('eighteen').
fun(19):- write('nineteen').
fun(20):- write('twenty').
fun(30):- write('thirty').
fun(40):- write('forty').
fun(50):- write('fifty').
fun(60):- write('sixty').
fun(70):- write('seventy').
fun(80):- write('eighty').
fun(90):- write('ninety').

ths(0,_,_,_).
ths(X,0,0,0) :-
    fun(X),
    write('-'),
    write('thousand').
ths(X,_,_,_) :-
    fun(X),
    write('-'),
    write('thousand-').

hes(0,_,_).
hes(X,0,0) :-
    fun(X),
    write('-'),
    write('hundred').
hes(X,_,_) :-
    fun(X),
    write('-'),
    write('hundred-').


tw(0, 0).
tw(0, Y) :-
    fun(Y).
tw(1, Y) :-
    S is 10+Y,
    fun(S).
tw(X, 0) :-
    S is 10*X,
    fun(S).

tw(X, Y) :-
    S is 10*X,
    fun(S),
    write('-'),
    fun(Y).


num_to_words(0):- write('zero').
num_to_words(X) :-
	A1 is mod(X,10),
	B1 is div(X,10),
        A2 is mod(B1,10),
        B2 is div(B1,10),
        A3 is mod(B2,10),
        A4 is div(B2,10),
        ths(A4,A3,A2,A1),
        hes(A3,A2,A1),
	tw(A2, A1).











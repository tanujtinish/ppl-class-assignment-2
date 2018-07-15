tv_show(suits).
tv_show(house_of_cards).
tv_show(mr_robot).
tv_show(black_mirror).

student(arpit).
student(manoj).
student(dhruv).
student(shrishti).

major(computer_science).
major(electronics).
major(mechanical).
major(civil).

birth_years(1994).
birth_years(1995).
birth_years(1996).
birth_years(1997).

solve :-
    %write('manish'),
    tv_show(Arpittv), tv_show(Manojtv), tv_show(Dhruvtv), tv_show(Shrishtitv),
    all_different([Arpittv, Manojtv, Dhruvtv, Shrishtitv]),

    major(Arpitmaj), major(Manojmaj), major(Dhruvmaj), major(Shrishtimaj),
    all_different([Arpitmaj, Manojmaj, Dhruvmaj, Shrishtimaj]),
    birth_years(Arpitby), birth_years(Manojby), birth_years(Dhruvby), birth_years(Shrishtiby),
    all_different([Arpitby, Manojby, Dhruvby, Shrishtiby]),
    Quad = [ [arpit,Arpitmaj,Arpittv,Arpitby],
                [manoj,Manojmaj,Manojtv,Manojby],
                [dhruv,Dhruvmaj,Dhruvtv,Dhruvby],
                [shrishti,Shrishtimaj,Shrishtitv,Shrishtiby] ],
   %write('manish4'),
    % 1. The student interested in the TV show suits was born in 1996
    member([_, _, suits, 1996], Quad),
    %write('manish2'),
    % 2. The student interested in the TV show house_of_cards was born after the student doing
  % electronics as major.
   ( (member([_, _, house_of_cards, X], Quad)),
      (member([_, electronics, _, Y], Quad)),
      (X > Y) ),
   %write('manis77h'),
    % 3. Shrishti is not the student who has computer_science as their major.
    \+ member([shrishti, computer_science, _, _], Quad),

    % 4. Either the student who has electronics as his/her major or Dhruv was born in 1996. The
  % other student was born in 1995.

    ( (member([dhruv, _, _, 1996], Quad),
       member([_, electronics, _, 1995], Quad)) ;

      (member([dhruv, _, _, 1995], Quad),
       member([_, electronics, _, 1996], Quad)) ),

    % 5. Manoj was not born in 1995.
    \+ member([manoj, _, _, 1995], Quad),


    % 6. The student who likes the TV show black_mirror has computer_science as his/her major.
    member([_, computer_science, black_mirror, _], Quad),

    % 7. The major for Dhruv or Arpit is mechanical.
    ( (member([dhruv, mechanical, _, _], Quad)) ;

      (member([arpit, mechanical, _, _], Quad)) ),

    % 8. Neither Shrishti nor Arpit likes house_of_cards.
    \+ member([shrishti, _, house_of_cards, _], Quad),
    \+ member([arpit, _, house_of_cards, _], Quad),

    % 9. The student who has his/her major as computer_science was born before Dhruv.
    ( (member([_, computer_science, _, X1], Quad)),
      (member([dhruv, _, _, Y1], Quad)),
      (X1 < Y1) ),

    % 10. The student who likes suits has either civil or mechanical as his/her major.
    ( (member([_, civil, suits, _], Quad)) ;

      (member([_, mechanical, suits, _], Quad)) ),
    write('arpit'),
    print(arpit,Arpitmaj,Arpittv,Arpitby),
    print(manoj,Manojmaj,Manojtv,Manojby),
    print(dhruv,Dhruvmaj,Dhruvtv,Dhruvby),
    print(shrishti,Shrishtimaj,Shrishtitv,Shrishtiby).


all_different([H | T]) :- member(H, T), !, fail.
all_different([_ | T]) :- all_different(T).
all_different([_]).

print(X, Y, Z, U) :-
    write(X), write(' = '), write('['), write(Y), write(','), write(Z), write(','), write(U), write(']'), nl.


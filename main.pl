% main.pl

:- consult('career.pl').

start :-
    write('Select your interest:'), nl,
    write('1. technology'), nl,
    write('2. business'), nl,
    write('3. art'), nl,
    write('4. healthcare'), nl,
    write('5. social'), nl,
    read(Choice1),
    get_interest(Choice1, Interest),

    write('Select your skill:'), nl,
    write('1. coding'), nl,
    write('2. numbers'), nl,
    write('3. creativity'), nl,
    write('4. caring'), nl,
    write('5. communication'), nl,
    read(Choice2),
    get_skill(Choice2, Skill),

    recommend(Interest, Skill).

get_interest(1, technology).
get_interest(2, business).
get_interest(3, art).
get_interest(4, healthcare).
get_interest(5, social).

get_skill(1, coding).
get_skill(2, numbers).
get_skill(3, creativity).
get_skill(4, caring).
get_skill(5, communication).

recommend(I,S) :-
    career(I,S,C),
    write('Suggested Career: '), write(C), nl.

recommend(_,_) :-
    write('No suitable career found.'), nl.

f(X, 0):-
    X < 3. ! %cut se chegou aqui e deu veraddeiro se congela
            % se usar o cut 


% \+ equivale a not no motor de inferencia...


f(X, 2):-
    write("X ="),
    write(X),
    nl % comando para pular
    3 =< X.
    X <6.

f(X, 4) :-
    X >= 6.
    
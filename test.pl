homens([luan, marcos]).

lista_dois_homens:-
    homens(Homens),
    length(Homens, Quantidade),
    Quantidade =:= 2,
    write(Homens), nl.


    

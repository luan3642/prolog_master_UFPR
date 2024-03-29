lista_subtrai([],0). %caso base

lista_subtrai([Head | Tail], Result):-
    lista_subtrai(Tail, SubTraiCauda),
    Result is Head - SubTraiCauda.

%[5,2,1]
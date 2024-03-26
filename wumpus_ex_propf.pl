% como rodar criaBC(3, BC)

wumpus(N):- %tamanho da matriz
    criaBC(N, BC). % cria base de conhecimenot, tabulieor N por N

brisa(I, J, N, Ind) :-
    Ind is I * N + J + 1.

poco(I, J, N, Ind) :-
    Ind is N*N+I*N +J + 1.

% criar regras para cada parte da matriz (CNF), usar recursao e matriz
criaBC(N, BC) :-
    %diferente os cria BC, por conta dos argumentos
    criaBC(1,1, N,[],BC).

%funciona para quando nao estou na borda
% N tamanho do tabuleiro quadrado, somente uma variavel ja serve
criaBC(I, J, N, BC1, BC2) :-
    I > 0,
    J > 0,
    I < N-1,
    % cs de clausalas
    I1 is I - 1,
    I2 is I + 1,
    J1 is J - 1,
    J2 is J + 1,
    brisa(I, J, N, Ind),
    poco(I1, J, N, Ind1),
    poco(I2, J, N, Ind2),
    poco(I, J1, N, Ind3),
    poco(I, J2, N, Ind4),
    

    Cs = [[-Ind,Ind1,Ind2, Ind3, Ind4],
         [-Ind1, Ind], [-Ind2, Ind], 
         [-Ind3, Ind], [-Ind4, Ind]],

    append(BC1, Cs, BC2).
         


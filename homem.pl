% deixa os fatos de forma dinamica
:- dynamic homem/1.

%Adicionando e retirando fatos
homem(joao).
homem(jose).
homem(mario).
homem(alberto).
homem(fabricio).
homem(jonatas).
homem(marcos).

% comando asserta insere um fato na base de dados, ele insere na primeira
% posicao
% asserta(homem(alex)).

%compondo fatos e regras
mulher(claudia).
mulher(silvia).
mulher(clara).
mulher(angela).
mulher(maria).
mulher(marcia).

pai(joao, jose).
pai(joao, maria).
pai(silvia, jose).
pai(silvia, maria).
pai(alberto, joao).
pai(fabricio, alberto).
pai(jonatas, fabricio).

%condicao para ver se é irmao
irmao(X, Y):-
    homem(X),
    pai(Z, X),
    pai(Z, Y),
    mae(Z1, X),
    mae(Z1, Y).


%assertz insere no final da base de dados
% assertz(homem(luan)).

%listing serve para lista todos da sua base de conhecimento

[Head | Tail] = [1,2,3,4].

% ao fazer isso em prolog a Head iria ser unificada com 1
% Tail com o restante dos elementos [2,3,4]


soma_lista([], 0). %caso base: a soma de uma lista vazia é 0

% Soma é conhecido como parametro de saida, voce nao fornece quando
% chama o predicado, mas espera que ele seja calculado pelo proprio predicado

soma_lista([Cabeca | Cauda], Soma):-  %passo recursivo
    soma_lista(Cauda, SomaCauda), % calcula a soma da cauda recursivamente.
    Soma is Cabeca + SomaCauda. % soma a cabeca com a soma da cauda para obter o total.
    
    % is é um operador que é usado para avaliar a soma do lado direito e atribuir a variavel do lado esquerdo
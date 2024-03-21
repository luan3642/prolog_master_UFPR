homens([luan,marcos,joao]).

% temos na nossa base de conhecimento os homens acima.

%depois criamos uma regra

lista_homens:-
    homens(Homens), %aqui estamos atribuindo o valor da lista de homens para variavel Homens

    % atribui o tamanho da variavel homens para variavel Quantos
    length(Homens, Quantos),

    % verifica se homens é igual a 2.
    Quantos =:= 2,

    % imprime homens.
    write(Homens), nl.
    
% Programação Lógica e Inteligência Artificial
% Racha Cuca - Feira de Intercâmbio
% 12/01/2023
% https://rachacuca.com.br/logica/problemas/feira-de-intercambio/
%
% Bruna Isabela de Oliveira
% Gabriel Resende Soares
% Izabela da Silva Neves
% João Pedro Pachecho do Nascimento
%
% ----------------------------------------------


resolve(S) :-
    S = intercambio(_,_,_,_,_),
    
    % A estudante de mochila Verde está ao lado da estudante de 30 anos.
    ao_lado(S, A, B),
    mochila(A, verde),
    idade(B, '30'),

    % A dona da mochila Azul está em algum lugar entre a Bruna e a estudante de 24 anos, nessa ordem.
    em_algum_lugar_entre(S, C, D, E),
    nome(C, bruna),
    mochila(D, azul),
    idade(E, '24'),

    % Em uma das pontas está a estudante que vai parcelar o intercâmbio em 2 anos e meio.
    em_uma_das_pontas(S, F),
    parcelas(F, '30'),

    % A dona da mochila Amarela está em algum lugar à esquerda de quem vai fazer um intercâmbio de 6 meses.
    em_algum_lugar_a_esquerda(S, G, H),
    mochila(G, amarela),
    duracao(H, '6'),

    % Fabiana é a estudante mais velha.
    algum_estudante(S, I),
    nome(I, fabiana),
    idade(I, '33'),
    
    % Luiza está exatamente à esquerda da estudante de 24 anos.
    exatamente_a_esquerda(S, J, K),
    nome(J, luiza),
    idade(K, '24'),

    % Quem vai para o Canadá está em algum lugar à direita de quem tem a mochila Verde.
    em_algum_lugar_a_direita(S, L, M),
    pais(L, canada),
    mochila(M, verde),

    % A estudante que vai para a Austrália está exatamente à esquerda da estudante de mochila Amarela.
    exatamente_a_esquerda(S, N, O),
    pais(N, australia),
    mochila(O, amarela),

    % A dona da mochila Azul está ao lado de quem vai pagar o intercâmbio em 24 parcelas.
    ao_lado(S, P, Q),
    mochila(P, azul),
    parcelas(Q, '24'),

    % Quem vai fazer um intercâmbio de 15 meses está em algum lugar à direita da estudante de mochila Verde.
    em_algum_lugar_a_direita(S, R, T),
    duracao(R, '15'),
    mochila(T, verde),

    % A estudante mais nova está na segunda posição.
    segunda_posicao(S, U),
    idade(U, '21'),

    % A estudante de mochila Azul está exatamente à esquerda da estudante que vai fazer um intercâmbio de 18 meses.
    exatamente_a_esquerda(S, W, X),
    mochila(W, azul),
    duracao(X, '18'),

    % Quem vai para a Inglaterra vai parcelar o intercâmbio em 30 vezes.
    algum_estudante(S, Y),
    pais(Y, inglaterra),
    parcelas(Y, '30'),

    % A dona da mochila Verde está ao lado de quem vai parcelar os gastos em 1 ano e meio.
    ao_lado(S, Z, A1),
    mochila(Z, verde),
    parcelas(A1, '18'),

    % A estudante que vai fazer um intercâmbio de 9 meses está com a mochila Branca.
    algum_estudante(S, A2),
    duracao(A2, '9'),
    mochila(A2, branca),

    % Em uma das pontas está a estudante que vai parcelar o intercâmbio em 6 parcelas.
    em_uma_das_pontas(S, A3),
    parcelas(A3, '6'),

    % A estudante de 33 anos está em algum lugar à direita da estudante de mochila Verde.
    em_algum_lugar_a_direita(S, A4, A5),
    idade(A4, '33'),
    mochila(A5, verde),

    % Quem vai fazer um intercâmbio de 1 ano está na segunda posição.
    segunda_posicao(S, A6),
    duracao(A6, '12'),

    % A estudante de mochila Azul está em algum lugar à esquerda de quem vai pagar o intercâmbio em 18 vezes.
    em_algum_lugar_a_esquerda(S, A7, A8),
    mochila(A7, azul),
    parcelas(A8, '18'),

    % Quem vai para a Irlanda está em algum lugar entre quem vai para os Estados Unidos e quem vai para a Austrália, nessa ordem.
    em_algum_lugar_entre(S, A9, A10, B1),
    pais(A9, estados_unidos),
    pais(A10, irlanda),
    pais(B1, australia),
    
    % Emily está exatamente à direita da estudante de mochila Verde.
    exatamente_a_direita(S, B2, B3),
    nome(B2, emily),
    mochila(B3, verde),

    % RESTO
    algum_estudante(S, B4),
    mochila(B4, vermelha),
    
    algum_estudante(S, B5),
    nome(B5, talita),
    
    algum_estudante(S, B6),
    parcelas(B6, '12'),
    
    algum_estudante(S, B7),
    idade(B7, '27').
    
    
mochila(estudante(X,_,_,_,_,_),X).
nome(estudante(_,X,_,_,_,_),X).
pais(estudante(_,_,X,_,_,_),X).
duracao(estudante(_,_,_,X,_,_),X).
parcelas(estudante(_,_,_,_,X,_),X).
idade(estudante(_,_,_,_,_,X),X).


em_algum_lugar_a_esquerda(intercambio(X,Y,_,_,_),X,Y).
em_algum_lugar_a_esquerda(intercambio(X,_,Y,_,_),X,Y).
em_algum_lugar_a_esquerda(intercambio(X,_,_,Y,_),X,Y).
em_algum_lugar_a_esquerda(intercambio(X,_,_,_,Y),X,Y).
em_algum_lugar_a_esquerda(intercambio(_,X,Y,_,_),X,Y).
em_algum_lugar_a_esquerda(intercambio(_,X,_,Y,_),X,Y).
em_algum_lugar_a_esquerda(intercambio(_,X,_,_,Y),X,Y).
em_algum_lugar_a_esquerda(intercambio(_,_,X,Y,_),X,Y).
em_algum_lugar_a_esquerda(intercambio(_,_,X,_,Y),X,Y).
em_algum_lugar_a_esquerda(intercambio(_,_,_,X,Y),X,Y).

em_algum_lugar_a_direita(S,A,B) :-
    em_algum_lugar_a_esquerda(S,B,A).

exatamente_a_direita(intercambio(B,A,_,_,_),A,B).
exatamente_a_direita(intercambio(_,B,A,_,_),A,B).
exatamente_a_direita(intercambio(_,_,B,A,_),A,B).
exatamente_a_direita(intercambio(_,_,_,B,A),A,B).

exatamente_a_esquerda(S,A,B) :-
    exatamente_a_direita(S,B,A).

em_algum_lugar_entre(intercambio(C,D,E,_,_),C,D,E).
em_algum_lugar_entre(intercambio(C,D,_,E,_),C,D,E).
em_algum_lugar_entre(intercambio(C,D,_,_,E),C,D,E).
em_algum_lugar_entre(intercambio(C,_,D,E,_),C,D,E).
em_algum_lugar_entre(intercambio(C,_,D,_,E),C,D,E).
em_algum_lugar_entre(intercambio(C,_,_,D,E),C,D,E).
em_algum_lugar_entre(intercambio(_,C,D,E,_),C,D,E).
em_algum_lugar_entre(intercambio(_,C,D,_,E),C,D,E).
em_algum_lugar_entre(intercambio(_,C,_,D,E),C,D,E).
em_algum_lugar_entre(intercambio(_,_,C,D,E),C,D,E).

ao_lado(intercambio(A,B,_,_,_),A,B).
ao_lado(intercambio(B,A,_,_,_),A,B).
ao_lado(intercambio(_,A,B,_,_),A,B).
ao_lado(intercambio(_,B,A,_,_),A,B).
ao_lado(intercambio(_,_,A,B,_),A,B).
ao_lado(intercambio(_,_,B,A,_),A,B).
ao_lado(intercambio(_,_,_,A,B),A,B).
ao_lado(intercambio(_,_,_,B,A),A,B).

em_uma_das_pontas(intercambio(X,_,_,_,_),X).
em_uma_das_pontas(intercambio(_,_,_,_,X),X).

algum_estudante(intercambio(X,_,_,_,_),X).
algum_estudante(intercambio(_,X,_,_,_),X).
algum_estudante(intercambio(_,_,X,_,_),X).
algum_estudante(intercambio(_,_,_,X,_),X).
algum_estudante(intercambio(_,_,_,_,X),X).

segunda_posicao(intercambio(_,X,_,_,_),X).

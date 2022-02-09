#language: pt
#US: 0001

Funcionalidade: Selecionando produtos no carrinho
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesso um produto*

Cenário: Inserindo produto no carrinho
Quando escolho as características de cor "Blue", tamanho "M", quantidade "10"
Então deve exibir meu produto no carrinho


Cenário: Bloqueio por quantidade
Quando escolho as características de cor "Red", tamanho "L", quantidade "11"
Então o sistema não deve permir a insersão no carrinho

Cenário: Limpando características selecionadas
Quando escolho as características de cor "Orange", tamanho "XL", quantidade "7"
E limpo após a escolha
Então o sistema deve voltar ao estado original


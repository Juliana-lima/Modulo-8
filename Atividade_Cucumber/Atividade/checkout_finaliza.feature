#language: pt
#US: 0003

Funcionalidade: Realizando Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu acesse a tela de checkout*

Cenário: Finalizando uma compra
Quando eu preencher os dados obrigatórios
Então deve finalizar a compra

Cenário: Finalizando com e-mail inválido
E preencha os dados obrigatórios
Quando preencher o email com "emailInvalido@bol.com"
Então deve exibir uma mensagem de alerta "E-mail de faturamento inválido"

Cenário: Finalizando com campos vazios
E deixe os campos obrigatórios vazios
Então deve exibir uma mensagem de alerta "Preencha os campos obrigatórios"


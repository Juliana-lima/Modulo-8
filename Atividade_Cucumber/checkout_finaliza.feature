            #language: pt
            #US: 0003

            Funcionalidade: Tela de cadastro e checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que estou site da EBAC-SHOP
            E já inseri os produtos no carrinho
            E já escolhi o modo de pagamento
            E não possuo cadastro na loja

            Cenário: Pedido finalizado
            E insiro "Maria" no campo "Nome"
            E insiro "Lopez" no campo "Sobrenome"
            E insiro "Rua das Azaléias" no campo "Endereço"
            E insiro "Maringá" no campo "Cidade"
            E insiro "87060-040" no campo "CEP"
            E insiro "44985628800" no campo "Telefone"
            E insiro "mariateste02@teste.com.br" no campo "Endereço de e-mail"
            Quando quando clico em "Finalizar Compra"
            Então visualizo a mensagem de "Compra finalizada com sucesso!"

            Cenário: Finaliza pedido com e-mail inválido
            E insiro "Maria" no campo "Nome"
            E insiro "Lopez" no campo "Sobrenome"
            E insiro "Rua das Azaléias" no campo "Endereço"
            E insiro "Maringá" no campo "Cidade"
            E insiro "87060-040" no campo "CEP"
            E insiro "44985628800" no campo "Telefone"
            E insiro "mariatesteteste.com.br" no campo "Endereço de e-mail"
            Quando quando clico em "Finalizar Compra"
            Então visualizo a mensagem de alerta "Favor insira um e-mail com formato válido!"

            Cenário: Finaliza pedido sem sobrenome
            E insiro "Maria" no campo "Nome"
            E insiro "Rua das Azaléias" no campo "Endereço"
            E insiro "Maringá" no campo "Cidade"
            E insiro "87060-040" no campo "CEP"
            E insiro "44985628800" no campo "Telefone"
            E insiro "mariateste02@teste.com.br" no campo "Endereço de e-mail"
            Quando quando clico em "Finalizar Compra"
            Então visualizo a mensagem de alerta "Favor verificar os campos obrigatórios!"

            Cenário: Múltiplos pedidos finalizados
            E insiro <nome> no campo "Nome"
            E insiro <sobrenome> no campo "Sobrenome"
            E insiro <endereco> no campo "Endereço"
            E insiro <cidade> no campo "Cidade"
            E insiro <cep> no campo "CEP"
            E insiro <telefone> no campo "Telefone"
            E insiro <email> no campo "Endereço de e-mail"
            Quando quando clico em "Finalizar Compra"
            Então visualizo a mensagem de "Compra finalizada com sucesso!"

            | nome       | sobrenome  | endereco              | cidade            | cep        | telefone     | email                |
            | "Rose"     | "Silva"    | "Rua das flores, 305" | "Magingá"         | "26548900" | "214785985"  | "rose@teste.com"     |
            | "Luiz"     | "Santos"   | "Rua da luz, 36"      | "Curitiba"        | "25896341" | "4425638877" | "luiz@teste.com"     |
            | "Jose"     | "Ferreira" | "Av. Central, 47"     | "Duque de Caxias" | "89663022" | "1148575200" | "jose@teste.com"     |
            | "Lucia"    | "Moreira"  | "Rua Antoni Reis, 74" | "Mesquita"        | "25845259" | "3147856589" | "lucia@teste.com"    |
            | "Gabriela" | "Pereira"  | "Rua Fertari, 105"    | "Nova Iguaçu"     | "47815470" | "4474520145" | "gabriela@teste.com" |
            #language: pt
            #US: 0003

            Funcionalidade: Tela de cadastro e checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que estou site da EBAC-SHOP
            E não possuo cadastro na loja

            Cenário: Pedido finalizado
            Quando eu digitar o nome "Maria"
            E o sobrenome "Lopez"
            E o endereço "Rua das Azaléias"
            E a cidade "Maringá"
            E o CEP "87060-040"
            E o telefone "44985628800"
            E o email "mariateste02@teste.com.br"
            Então deve exibir mensagem de "Compra finalizada com sucesso!"

            Cenário: Finaliza pedido com e-mail inválido
            Quando eu digitar o nome "Maria"
            E o sobrenome "Lopez"
            E o endereço "Rua das Azaléias"
            E a cidade "Maringá"
            E o CEP "87060-040"
            E o telefone "44985628800"
            E o email "mariatesteteste.com.br"
            Então deve exibir a mensagem de alerta "Favor insira um e-mail com formato válido!"

            Cenário: Finaliza pedido sem sobrenome
            Quando eu digitar o nome "Maria"
            E o endereço "Rua das Azaléias"
            E a cidade "Maringá"
            E o CEP "87060-040"
            E o telefone "44985628800"
            E o email "mariateste02@teste.com.br"
            Então deve exibir a mensagem de alerta "Favor verificar os campos obrigatórios!"

            Cenário: Múltiplos pedidos finalizados
            Quando eu digitar o <nome>
            E o <sobrenome>
            E o <endereco>
            E a <cidade>
            E o <cep>
            E o <telefone>
            E o <email>
            Então deve exibir a <mensagem> de sucesso

            | nome       | sobrenome  | endereco              | cidade            | cep        | telefone     | email                | mensagem                         |
            | "Rose"     | "Silva"    | "Rua das flores, 305" | "Magingá"         | "26548900" | "214785985"  | "rose@teste.com"     | "Compra finalizada com sucesso!" |
            | "Luiz"     | "Santos"   | "Rua da luz, 36"      | "Curitiba"        | "25896341" | "4425638877" | "luiz@teste.com"     | "Compra finalizada com sucesso!" |
            | "Jose"     | "Ferreira" | "Av. Central, 47"     | "Duque de Caxias" | "89663022" | "1148575200" | "jose@teste.com"     | "Compra finalizada com sucesso!" |
            | "Lucia"    | "Moreira"  | "Rua Antoni Reis, 74" | "Mesquita"        | "25845259" | "3147856589" | "lucia@teste.com"    | "Compra finalizada com sucesso!" |
            | "Gabriela" | "Pereira"  | "Rua Fertari, 105"    | "Nova Iguaçu"     | "47815470" | "4474520145" | "gabriela@teste.com" | "Compra finalizada com sucesso!" |
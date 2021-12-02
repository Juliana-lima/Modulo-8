            #language: pt
            #US: 0002

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que estou na página login da EBAC-SHOP

            Cenário: Login para vizualizar pedido de compra
            Quando eu digitar o email "mariateste@teste.com.br"
            E a senha "Bbq63DZmBUAFfeW"
            Então visualizo os meus pedidos

            Cenário: Login com email inválida
            Quando eu digitar o email "invalido357@teste.com.br"
            E a senha "Bbq63DZmBUAFfeW"
            Então visualizo a mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Login com senha inválida
            Quando eu digitar o email "mariateste@teste.com.br"
            E a senha "fysb5586"
            Então visualizo a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Múltiplos logins válidos
            Quando eu digitar o <email>
            E a <senha>
            Então visualizo os meus pedidos de compra

            Exemplos:
            | email                       | senha       |
            | "leticiateste@teste.com.br" | "dghhf95"   |
            | "marioteste@teste.com.br"   | "sdsfzf584" |
            | "selenateste@teste.com.br"  | "sdsfs958"  |
            | "hobiteste@teste.com.br"    | "sdsd84"    |
            | "taeteste@teste.com.br"     | "444fsds"   |
            | "guinhoteste@teste.com.br"  | "5859dsd"   |

            #language: pt
            #US: 0002

            Funcionalidade: Efetuando login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que acesso a tela de Login*

            Cenário: Efetuando login

            Quando digito o email "guinho10@test.com"
            E a senha "782596#"
            Então deve exibir a tela de checkout

            Cenário: Login com dados inválidos
            Quando digito o email "guinho10@test.com"
            E a senha "0000u*"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Efetuando Login
            Quando digito o <email>
            E a <senha>
            Então deve exibir a tela de checkout

            Exemplos:
            | email                 | senha       |
            | "luizinho@oi.com.br"  | "4569*JH"   |
            | "henrique_4@claro.ar" | "3698¨sP"   |
            | "sabrina_45@bol.com"  | "45287$5eS" |
            #language: pt
            #US: 0002

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que estou na página "http://lojaebac.ebaconline.art.br/minha-conta/"


            Cenário: Login para vizualizar pedido de compra
            E digito o email "mariateste@teste.com.br" no campo "Username or email address"
            E digito a senha "Bbq63DZmBUAFfeW" no campo "Password"
            E clico em "Login"
            Quando sou redirecionada para a página "Minha Conta"
            Então visualizo os meus pedidos de compra

            Cenário: Login com email inválida
            E digito o email "invalido357@teste.com.br" no campo "Username or email address"
            E digito a senha "Bbq63DZmBUAFfeW" no campo "Password"
            Quando clico em "Login"
            Então visualizo a mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Login com senha inválida
            E digito o email "mariateste@teste.com.br" no campo "Username or email address"
            E digito a senha "fysb5586" no campo "Password"
            Quando clico em "Login"
            Então visualizo a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Múltiplos logins válidos
            E digito o <email> no campo "Username or email address"
            E digito a <senha> no campo "Password"
            E clico em "Login"
            Quando sou redirecionada para a página "Minha Conta"
            Então visualizo os meus pedidos de compra

            Exemplos:
            | email                       | senha       |
            | "leticiateste@teste.com.br" | "dghhf95"   |
            | "marioteste@teste.com.br"   | "sdsfzf584" |
            | "selenateste@teste.com.br"  | "sdsfs958"  |
            | "hobiteste@teste.com.br"    | "sdsd84"    |
            | "taeteste@teste.com.br"     | "444fsds"   |
            | "guinhoteste@teste.com.br"  | "5859dsd"   |

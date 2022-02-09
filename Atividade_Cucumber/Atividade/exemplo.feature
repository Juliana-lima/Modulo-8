            #language: pt


            Funcionalidade: Tela de Login
            Como aluno do Portal EBAC
            Quero me autenticar
            Para vizualizar as minha notas

            Contexto:
            Dado que eu acesse a página de autenticação do Portal EBAC*

            Cenário: Autenticação válida
            Quando eu digitar o usuário "zezinho@test.com.br"
            E a senha "senha$123"
            Então deve exibir uma mensagem de boas vindas "Olá João"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "fffjfjfjfjf@test.com.br"
            E a senha "senha$123"
            Então deve exibir uma mensagem de alerta:

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "zezinho@test.com.br"
            E a senha "00000xxxx"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuário>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuário | senha        | mensagem     |
            | "maria" | "senha1425%" | "Olá Maria!" |
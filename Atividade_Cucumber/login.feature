            #language: pt

            Funcionalidade: Tela de Login
            Como aluno do Portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que acesse a página de autentificação do portal EBAC

            Cenário: Autenticação válida

            Quando eu digitar o usuário "joao45@gmail.com"
            E a senha "gjg5567"
            Então deve exibir uma mensagem de boas vindas "Olá João"

            Cenário: Usuário inexistente

            Quando eu digitar o usuário "gsgsdgsd@gmail.com"
            E a senha "gjg5567"
            Então deve exibir uma mensagem de alerta "Usuário não autenticado!"

            Cenário: Usuário com senha inválida

            Quando eu digitar o usuário "joao45@gmail.com"
            E a senha "585675efs"
            Então deve exibir uma mensagem de alerta "Senha incorreta!"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:

            | usuario            | senha     | mensagem   |
            | "joao45@gmail.com" | "gjg5567" | "Olá João" |
            | "jose78@gmail.com" | "gfh5567" | "Olá Jose" |
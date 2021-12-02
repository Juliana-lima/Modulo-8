            #language: pt
            #US: 0001

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Para depois inserir no carrinho

            #Vi que existe uma palavra reservada para indicar uma regra,
            #mas não entendi onde ela deve ficar no documento, por isso está aqui
            Regra: Deve permitir apenas 10 produtos por venda

            Contexto:
            Dado que estou na página EBAC-SHOP

            Cenário: Item configurado no carrinho
            Quando eu escolher o produto "Augusta Pullover Jacket"
            E o tamanho "M"
            E a cor "Blue"
            E a quantidade "1"
            Então deve exibir a mensagem "“Augusta Pullover Jacket” foi adicionado no seu carrinho."

            Cenário: Limpando item configurado
            Quando eu escolher o produto "Augusta Pullover Jacket"
            E o tamanho "XL"
            E a cor "Red"
            E a quantidade "5"
            E limpo a configuração
            Então deve exibir a página original

            Cenário: Item configurado sem o tamanho
            Quando eu escolher o produto "Augusta Pullover Jacket"
            E a cor "Blue"
            E a quantidade "1"
            Então deve exibir a mensagem de alerta "Verifique as opções do produto antes de adicioná-lo ao carrinho."

            Cenário: Item configurado sem a cor
            Quando eu escolher o produto "Augusta Pullover Jacket"
            E o tamanho "S"
            E a quantidade "1"
            Então deve exibir a mensagem de alerta "Verifique as opções do produto antes de adicioná-lo ao carrinho."

            Cenário: 11 itens configurado no carrinho
            Quando eu escolher o produto "Augusta Pullover Jacket"
            E o tamanho "S"
            E a quantidade "11"
            Então deve exibir a mensagem de alerta "Quantidade de itens excedente do permitido por venda."

            Esquema do Cenário: Múltiplos itens configurado no carrinho
            Quando eu escolher o <produto>
            E o <tamanho>
            E a <cor>
            E a <quantidade>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | produto                        | tamanho | cor      | quantidade | mensagem                                                                |
            | "Ariel Roll Sleeve Sweatshirt" | "S"     | "Purple" | "2"        | "2 × “Ariel Roll Sleeve Sweatshirt” foram adicionados no seu carrinho." |
            | "Augusta Pullover Jacket"      | "M"     | "Red"    | "10"       | "10 × “Augusta Pullover Jacket” foram adicionados no seu carrinho."     |
            | "Autumn Pullie"                | "XL"    | "Green"  | "5"        | "5 × “Autumn Pullie” foram adicionados no seu carrinho."                |
            | "Circe Hooded Ice Fleece"      | "XS"    | "Gray"   | "7"        | "7 × “Circe Hooded Ice Fleece” foram adicionados no seu carrinho."      |


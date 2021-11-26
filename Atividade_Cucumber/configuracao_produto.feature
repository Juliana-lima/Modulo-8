            #language: pt
            #US: 0001 

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            #Vi que existe uma palavra reservada para indicar uma regra,
            #mas não entendi onde ela deve ficar no documento, por isso está aqui
            Regra: Deve permitir apenas 10 produtos por venda

            Contexto:
            Dado que estou na página "http://lojaebac.ebaconline.art.br/product-category/clothing/women/tops-women/"

            Cenário: Item customizado no carrinho
            E escolho o "Augusta Pullover Jacket"
            E seleciono o tamanho "M"
            E seleciono a cor "Blue"
            E insiro a quantidade "1"
            Quando clico em comprar
            Então visualizo a mensagem "“Augusta Pullover Jacket” foi adicionado no seu carrinho."

            Cenário: Limpando item customizado
            E escolho o "Augusta Pullover Jacket"
            E seleciono o tamanho "XL"
            E seleciono a cor "Red"
            Quando clico em limpar
            Então as opções de tamanho e cor voltam ao estado original da página

            Cenário: Item customizado sem o tamanho
            E escolho o "Augusta Pullover Jacket"
            E seleciono a cor "Blue"
            E insiro a quantidade "1"
            Quando clico em comprar
            Então visualizo o pop-up com a mensagem de alerta "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."

            Cenário: Item customizado sem a cor
            E escolho o "Augusta Pullover Jacket"
            E seleciono o tamanho "S"
            E insiro a quantidade "1"
            Quando clico em comprar
            Então visualizo o pop-up com a mensagem de alerta "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."

            Cenário: 11 itens customizados no carrinho
            E escolho o "Augusta Pullover Jacket"
            E seleciono o tamanho "S"
            E insiro a quantidade "11"
            Quando clico em comprar
            Então visualizo o pop-up com a mensagem de alerta "Quantidade de itens excedente do permitido por venda."

            Esquema do Cenário: Múltiplos itens customizado no carrinho
            E escolho o <item>
            E seleciono o <tamanho>
            E seleciono a <cor>
            E insiro a <quantidade>
            Quando clico em comprar
            Então visualizo a <mensagem>

            Exemplos:
            | item                           | tamanho | cor      | quantidade | mensagem                                                                |
            | "Ariel Roll Sleeve Sweatshirt" | "S"     | "Purple" | "2"        | "2 × “Ariel Roll Sleeve Sweatshirt” foram adicionados no seu carrinho." |
            | "Augusta Pullover Jacket"      | "M"     | "Red"    | "10"       | "10 × “Augusta Pullover Jacket” foram adicionados no seu carrinho."     |
            | "Autumn Pullie"                | "XL"    | "Green"  | "5"        | "5 × “Autumn Pullie” foram adicionados no seu carrinho."                |
            | "Circe Hooded Ice Fleece"      | "XS"    | "Gray"   | "7"        | "7 × “Circe Hooded Ice Fleece” foram adicionados no seu carrinho."      |


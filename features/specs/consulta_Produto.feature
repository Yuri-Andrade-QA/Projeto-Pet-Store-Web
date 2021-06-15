            #language: pt
            
            Funcionalidade: Consulta de Produto

            Contexto: Navegando pelo site
            Dado que eu esteja no site
            @teste
            Cenario: Consultar um produto com Sucesso

            Quando faço uma consulta por ração
            E seleciono o terceiro produto da lista
            Então deve ser exibido o nome do produto "Golden Power Training Filhote para Cães Sabor Frango e Arroz - 15kg"
            E o fornecedor "Premier Pet | Golden"
            E o preço normal "R$ 150,99"  
            E o preço para assinantes "R$ 135,89"
            Quando adiciono ao carrinho 
            Então as caracteristicas devem ser as mesmas

            @new_produto
            Esquema do Cenario: Consultando Produtos Através da Massa de Dados com Sucesso

            Dado que <codigo> é um novo produto
            Quando faço consultas por produto
            Então devo ver as caracteristicas do produto
            E adiciono no carrinho 
            E vejo os detalhes no carrinho

            Exemplos:
            | codigo      |
            | "ração"     |
            | "pestisco"  |
           # | "tapete"    |
           # | "remédio"   |
           # | "brinquedo" |
           # | "coleira"   |
           # | "toalha"    |
           # | "cama"      |
           # | "comedouro" |
           # | "roupa"     |
           
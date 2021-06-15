class ProdutoPage < SitePrism::Page


    element :titulo_Produto, 'h1[itemprop="name"]'
    element :fornecedor_Produto, 'div[class="col-md-7 prod-info"]'
    element :preco_Normal, 'div[class="price-current"]'
    element :preco_Assinantes, 'span[class="price-subscriber"]'
    element :btn_Opcao, '#152139'
 def adicionar_Ao_Carrinho
    click_on("Adicionar ao carrinho")
 end
end


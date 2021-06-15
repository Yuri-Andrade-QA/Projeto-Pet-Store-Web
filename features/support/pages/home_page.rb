

class HomePage < SitePrism::Page

element :session_Dog, 'li a[href="/cachorro"]'
element :session_Racao, '#navbar-collapse-grid'
element :txt_Pesquisa, "#search"












def consultar_Produto
    session_Dog.hover
    sleep 2
    session_Racao=find("#navbar-collapse-grid")
    session_Racao.find('a', text:'Ração').click
end
def pesquisar_Produtos(nome)
     txt_Pesquisa.set nome
end
end
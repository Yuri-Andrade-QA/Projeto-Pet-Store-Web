Dado('que eu esteja no site') do                                                
   visit "https://www.petz.com.br/"  
  end                                                                             
                                                                                  
  Quando('faço uma consulta por ração') do                                        
    @home.consultar_Produto
    sleep 1
  end                                                                             
                                                                                  
  Quando('seleciono o terceiro produto da lista') do                              
       @filtro.link_terceiro_produto.click
  end                                                                             
   
Então('deve ser exibido o nome do produto {string}') do |produto|
  expect(@produto.titulo_Produto).to have_content produto
end

Então('o fornecedor {string}') do |fornecedor|
  expect(@produto.fornecedor_Produto).to have_content fornecedor 
end

Então('o preço normal {string}') do |normal|
  expect(@produto.preco_Normal).to have_content normal
end

Então('o preço para assinantes {string}') do |assinantes|
  expect(@produto.preco_Assinantes).to have_content assinantes
end

Quando('adiciono ao carrinho') do
  @produto.adicionar_Ao_Carrinho
end

Então('as caracteristicas devem ser as mesmas') do
  expect(@carrinho.titulo_Produto_Carrinho).to have_content "Golden Power Training Filhote para Cães Sabor Frango e Arroz - 15kg"
  expect(@carrinho.titulo_Produto_Carrinho).to have_content "Golden"
  expect(@carrinho.preco_Produto_Carrinho).to have_content "R$ 150,99"
end
                                                                               
                                                                          
                                                                                  
                                                                           
                                                                                                                                                       
                                                                                  
  Então('o preço para assinantes') do                                             
    
  end     
  
  Dado('que {string} é um novo produto') do |produto_code|
    file= YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/produtos.yaml"))
    @produtomassa = file[produto_code]
    
  end
  
  Quando('faço consultas por produto') do
    @home.pesquisar_Produtos(@produtomassa['nome'])
    sleep 2
  end
  
  Então('devo ver as caracteristicas do produto') do
    expect(@produto.titulo_Produto).to have_content(@produtomassa['nome'])
    expect(@produto.fornecedor_Produto).to have_content(@produtomassa['fornecedor'])
    expect(@produto.preco_Normal).to have_content(@produtomassa['preço normal'])
    expect(@produto.preco_Assinantes).to have_content(@produtomassa['preço assinante'])

  end

  Então('adiciono no carrinho') do
    @produto.adicionar_Ao_Carrinho
  end
  
  Então('vejo os detalhes no carrinho') do
    expect(@carrinho.titulo_Produto_Carrinho).to have_content(@produtomassa['nome'])
    expect(@carrinho.titulo_Produto_Carrinho).to have_content(@produtomassa['fornecedor'])
    expect(@carrinho.preco_Produto_Carrinho).to have_content(@produtomassa['preço normal'])

  end
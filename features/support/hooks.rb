Before do
    @home = HomePage.new
    @filtro= FiltroPage.new
    @produto= ProdutoPage.new
    @carrinho=CarrinhoPage.new
    page.current_window.resize_to(1366, 768)
  end
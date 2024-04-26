
Dado('que tenha acessado o blog') do
    @homeBlog = HomeBlogPage.new
    @homeBlog.load
end
  
  Quando('pesquisar usando palavras chaves que tenham em artigos {string}') do |string|
    @homeBlog.pesquisar(string)
end
  
  Então('sistema deve apresentar arquivos que tenham relação com a palavra chave') do
    @pesquisaPage = PesquisaPage.new
    expect(@pesquisaPage.artigos.size).to be > 0
end
  
  Quando('pesquisar usando palavras chaves que não tenham artigos {string}') do |string|
    @homeBlog.pesquisar(string)
  end
  
  Então('o sistema apresentar a frase {string}') do |string|
    expect(page).to have_text(string)
end
  
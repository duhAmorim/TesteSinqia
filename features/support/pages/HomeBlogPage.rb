class HomeBlogPage < SitePrism::Page
    set_url 'https://blogdoagi.com.br/'
    private element :lupaPesquisa,'.ast-search-icon'
    private element :campoTextoPesquisa,'#search-field'

    def pesquisar(valorPesquisa)
        lupaPesquisa.click
        campoTextoPesquisa.set valorPesquisa
        lupaPesquisa.click
    end
end
#language: pt
#utf-8
@pesquisa
Funcionalidade: Pesquisa de artigos no blog do agiBank

Cenário: Validar pesquisa que traga artigos como resultado
Dado que tenha acessado o blog
Quando pesquisar usando palavras chaves que tenham em artigos 'FGTS'
Então sistema deve apresentar arquivos que tenham relação com a palavra chave


Cenário: Validar pesquisa que não traga artigos como resultado
Dado que tenha acessado o blog
Quando pesquisar usando palavras chaves que não tenham artigos '78448745GTYYY'
Então o sistema apresentar a frase 'Lamentamos, mas nada foi encontrado para sua pesquisa, tente novamente com outras palavras.'
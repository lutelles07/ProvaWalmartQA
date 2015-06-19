# language: pt

@test
Funcionalidade: Adicionar o Produto ao carrinho
	Como cliente do Walmart
	Quero fazer uma busca de um produto
	Para incluir no carrinho
 
Cenário: Adicionar produto ao carrinho
	Dado que eu esteja no site do Walmart
	E eu preencho o campo de busca com o texto "TV"
	E eu clique no botao "Procurar"
	E o resultado da busca seja exibido
	E eu clico em adicionar ao carrinho
	E eu devo ver o pop up de "Contrate o Seguro Garantia Estendida Original"
	E eu clique no botao "Continuar"
	E eu clique no botao "Comprar"
	Entao eu devo ver que a TV foi adicionado ao carrinho com sucesso



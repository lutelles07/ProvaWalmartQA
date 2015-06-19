# enconding: utf-8
#!/usr/bin/env ruby

Dado(/^que eu esteja no site do Walmart$/) do 
 visit "http://www.walmart.com.br/"
end

Dado(/^eu preencho o campo de busca com o texto "([^"]*)"$/) do |produto|
 fill_in 'suggestion-search', :with => produto
end

Dado(/^o resultado da busca seja exibido$/) do
  page.should have_content('Resultados de busca para')
end

Dado(/^eu clique no botao "([^"]*)"$/) do |botao|
  click_on botao 
end

Dado(/^eu clico em adicionar ao carrinho$/) do 
 page.find(:xpath, '//a/span[@class="product-title"]',match: :first).click
click_button ('Adicionar ao carrinho')
end

Dado(/^eu devo ver o pop up de "([^"]*)"$/) do |texto|
  page.should have_content?(texto)
end

Entao(/^eu devo ver que a TV foi adicionado ao carrinho com sucesso$/) do 
 page.should have_content?("Meu carrinho")
 page.should have_content?("TV")
end

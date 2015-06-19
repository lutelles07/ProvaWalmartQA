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
  click_button botao 
end

Dado(/^eu clico em adicionar ao carrinho$/) do 
 page.find(:xpath, '//a/span[@class="product-title"]',match: :first).click
click_button ('Adicionar ao carrinho')
end

Dado(/^eu devo ver o pop up de "([^"]*)" e clico em "([^"]*)"$/) do |texto, botao|
  page.should have_content?(texto)
  click_button botao 
end

Entao(/^eu devo ver que a TV foi adicionado ao carrinho com sucesso$/) do 
 page.should have_content?("Meu carrinho")
 page.should have_content?("TV")
end


Dado(/^que eu envie para o correio a solicitacao do endereco para o CEP "([^"]*)"$/) do |cep|
 $response = HTTParty.get('http://cep.correiocontrol.com.br/'+cep+'.json')
 puts $response.code.to_s
end

Entao(/^eu vou receber o retorno "([^"]*)" de resposta com o conteudo "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)" e "([^"]*)"$/) do |code, arg2, arg3, arg4, arg5, arg6|
 expect(code).to eq($response.code.to_s)
 expect($response.to_s).to match(arg2)
 expect($response.to_s).to match(arg3)
 expect($response.to_s).to match(arg4)
 expect($response.to_s).to match(arg5)
 expect($response.to_s).to match(arg6)
 puts $response
end


Entao(/^eu vou receber o retorno "([^"]*)" de resposta com o conteudo de erro$/) do |code|
 expect(code).to eq($response.code.to_s)
end
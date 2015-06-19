#language: pt

@test
Funcionalidade: Obter endereço atráves do CEP
	 Como cliente do serviço do correio
	 Quero enviar um CEP para um serviço
	 Para receber o respectivo endereço


	Cenário: Requisitar endereço de CEP válido
	  Dado que eu envie para o correio a solicitação do endereço para o CEP "05336010"
	  Entao eu vou receber o retorno "200" de resposta com o conteudo "bairro", "logradouro", "cep", "uf" e "localidade"

	Cenário: Requisitar endereço de CEP inválido
	  Dado que eu envie para o correio a solicitacao do endereco para o CEP "1111111"
	  Entao eu vou receber o retorno "200" de resposta com o conteudo de erro
		
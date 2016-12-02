########### Esquema do Cenario: Preencher Dados do Imóvel ###################

Dado(/^que eu já tenha selecionado as opções de coberturas$/) do
  @dados = DadosFinaisPage.new
  @dados.visit('https://www.youse.com.br/home/order/fbe16971-9fc8-4ea8-909c-da3e3b2a03db/property_data')
  @dados.dadosImovel
end

Quando(/^eu preencher os dados do imóvel "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |pessoa, proprietario, cep, rua, numero, complemento, bairro, imovel|
  @dados.preencherDadosImovel(pessoa, proprietario, cep, rua, numero, complemento, bairro, imovel)
end

E(/^clicar em Preencher Dados Pessoais$/) do
  @dados.clicarProximoAbaDadosPessoais
end

Entao(/^terei acesso ao último formulário$/) do
  @dados.dadosPessoais
end


######################### Esquema do Cenario: Preencher Dados Pessoais ###########
Dado(/^que eu já tenha preenchido os dados do imóvel$/) do
  @dados.visit('https://www.youse.com.br/home/order/fbe16971-9fc8-4ea8-909c-da3e3b2a03db/insured_person_data')
  @dados.dadosPessoais
end

Quando(/^eu preencher os dados pessoais "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |nome, sexo, cpf, nascimento, pais, paisMoradia, profissao, renda, enderecoCorrespondencia|
  @dados.preencherDadosPessoais(nome, sexo, cpf, nascimento, pais, paisMoradia, profissao, renda, enderecoCorrespondencia, cepOutro, ruaOutro, numeroOutro, complementoOutro, bairroOutro)
end

E(/^clicar em Pagamento$/) do
  @dados.clicarPagamento
end

Entao(/^terei acesso à tela de pagamento$/) do
  @dados.pagamento
end


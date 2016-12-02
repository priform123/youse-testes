######### DADO #########
Dado(/^que eu esteja logado na minha conta$/) do
  @cotacao = CotacaoPage.new
  @cotacao.minhaConta  
end

E(/^clicar em Cotar Seguro Residencial$/) do
  @cotacao.clicarCotarSeguroResidencial
end

E(/^em seguida clicar no botão Casa$/) do
  @cotacao.clicarCasa
end

######### QUANDO #########
Quando(/^eu preencher os dados iniciais "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |estado, valor, apelido, telefone, email|
  @cotacao.preencherDadosIniciais(estado,valor,apelido,telefone,email)
end

E(/^clicar em Escolher Coberturas$/) do
  @cotacao.clicarEscolherCobertura
end

######### ENTãO #########
Entao(/^terei acesso à aba de coberturas$/) do
	@cotacao.garantirAbaCobertura
end


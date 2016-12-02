##### CENARIO SELECIONAR COBERTURAS #### 

Dado(/^que eu esteja na aba de coberturas$/) do
	@cobertura = CoberturaPage.new
	@cobertura.visit('https://www.youse.com.br/home/order/a3c4a6f9-2df4-4484-91fc-fc7d65cb0115/coverages_selection')
end

Quando(/^eu escolher as coberturas "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |valorCobertura, dano, furto, responsabilidade, quebraVidro, vendaval, perda, veiculos, tumulto|
  	@cobertura.escolherCobertura(valorCobertura, dano, furto, responsabilidade, quebraVidro, vendaval, perda, veiculos, tumulto)
end

E(/^clicar em Proximo Passo$/) do	
	@cobertura.clicarBotaoProximoPasso
end

Entao(/^terei acesso à próxima aba de sugestões$/) do
	@cobertura.garantirAbaSugestoes
end



##### CENARIO SELECIONAR COBERTURAS SUGERIDAS####

Dado(/^que eu esteja na aba de sugestões$/) do
  @cobertura.garantirAbaSugestoes
end

Quando(/^eu escolher as sugestões de coberturas "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |residencial, eletrodomesticos, lar, cao, pet, criancas, idosos, computador, acessibilidade, sustentabilidade|
  @cobertura.escolherCoberturaSugestoes(residencial, eletrodomesticos, lar, cao, pet, criancas, idosos, computador, acessibilidade, sustentabilidade)
end

E(/^clicar em Preencher Dados do Imóvel$/) do
	@cobertura.clicarBotaoProximoPasso  
end

Entao(/^terei acesso à próxima aba do imóvel$/) do
  	@cobertura.garantirAbaImovel
end


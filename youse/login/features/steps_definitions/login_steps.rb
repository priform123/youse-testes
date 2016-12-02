######### LOGIN #########
Dado(/^que eu esteja no site da Youse$/) do
   @home = LoginPage.new
   @home.visit('https://www.youse.com.br/')
end

E(/^clicar em Minha Conta$/) do
	@home.clicarMinhaConta
end

Quando(/^eu inserir meu email"([^"]*)"$/) do |email|
  @home.inputEmail(email) 
end

E(/^clicar em Prosseguir$/) do
  @home.clicarProsseguir
end

E(/^inserir minha senha "([^"]*)"$/) do |senha|
  @home.inputSenha(senha)
  @home.clicarProsseguir
end

Entao(/^conseguirei acessar a home$/) do
  @home.garantirLoginHome    
end


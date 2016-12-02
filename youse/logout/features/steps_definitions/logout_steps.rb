Dado(/^que eu esteja logado no site da Youse <"([^"]*)"> <"([^"]*)">$/) do |email, senha|
  @logout=LogoutPage.new
  @logout.visit('https://www.youse.com.br/')
  @logout.login(email,senha)

end

Quando(/^eu clicar em Minha Conta$/) do
   @logout.clicarMenu
end

Quando(/^clicar em Sair$/) do
  @logout.clicarSair
end

Então(/^terei acesso à pagina principal da youse$/) do
  @logout.garantirLogout
end



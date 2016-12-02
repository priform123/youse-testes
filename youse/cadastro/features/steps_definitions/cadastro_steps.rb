######### DADO #########
Dado(/^que eu esteja na página de login$/) do
  @cadastro = CadastroPage.new
  @cadastro.visit('https://www.youse.com.br/users/email_verifications/new')
end

######### QUANDO #########
Quando(/^eu clicar em Cadastre\-se$/) do
  @cadastro.clicarBotaoCadastrar
end

E(/^preencher os campos: Nome "([^"]*)",E\-mail "([^"]*)",Senha "([^"]*)" e Confirme sua senha"([^"]*)"$/) do |nome, email, senha, confirmeSenha|
  @cadastro.preencherCampos(nome,email,senha,confirmeSenha)
end

E(/^clicar em Enviar Cadastro$/) do
	@cadastro.clicarEnviarCadastro	
end

######### ENTãO #########
Então(/^efetuarei o registro com sucesso$/) do
  expect(page).to have_content 'Ops, você ainda não tem nenhum seguro Youse. =('
end



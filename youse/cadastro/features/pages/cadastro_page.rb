class CadastroPage < SitePrism::Page

  element :input_username, '#user_name' 
  element :input_email, '#user_email'
  element :input_password, '#user_password'
  element :input_password_confirmation, '#user_password_confirmation'

  def clicarBotaoCadastrar
  	click_link 'Cadastre-se'
  end

  def preencherCampos(nome,email,senha,confirmeSenha)
  	input_username.set nome
  	input_email.set email
  	input_password.set senha
  	input_password_confirmation.set confirmeSenha
  end

  
  def clicarEnviarCadastro
  	page.find(:css,"input.button.button-highlight.button--centered").click
  end

end

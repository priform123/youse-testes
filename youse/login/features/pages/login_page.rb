class LoginPage < SitePrism::Page

  # Declare todos os elementos da página
  # element :button,       pending 'Insert button identificator'
  element :input_email, '#email' 
  element :input_password, '#user_password'

  def clicarMinhaConta
  	page.find(:css,'a.nav__link-account.t_hide.m_hide').click
  end

  def inputEmail(email)
  	input_email.set email  	    
  end

  def inputSenha(senha)
  	input_password.set senha
  end

  def clicarProsseguir 
  	page.find(:css,"input.button.button-highlight.button--centered").click
  end

  def garantirLoginHome
    page.has_content?('Ops, você ainda não tem nenhum seguro Youse. =(')
  end

  def clicarMenu
    page.find(:css, 'a.account-header__account-link.account-header__account-with-sub-menu').click
  end

  def clicarSair
    page.find(:id, 'track_logout').click
  end

  def garantirLogout
    visit('https://www.youse.com.br/')
    page.has_content?('Olá, somos a Youse')
  end
end

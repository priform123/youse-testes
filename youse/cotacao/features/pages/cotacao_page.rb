class CotacaoPage < SitePrism::Page

  element :input_valor, '#home_order_flow_pricing_requirements_property_attributes_price' 
  element :input_apelido,'#home_order_flow_pricing_requirements_lead_person_attributes_name'
  element :input_telefone,'#home_order_flow_pricing_requirements_lead_person_attributes_phone'
  element :input_email, '#home_order_flow_pricing_requirements_lead_person_attributes_email'
  

  def minhaConta
  	visit 'https://www.youse.com.br/users/email_verifications/new'

  	fill_in 'email', :with => "pribelform@gmail.com"

  	page.find(:css,"input.button.button-highlight.button--centered").click
  
	fill_in 'user_password', :with => "priform123"
  
  	page.find(:css,"input.button.button-highlight.button--centered").click
  end


  def clicarCotarSeguroResidencial
  	click_link 'COTAR SEGURO RESIDENCIAL'
  end

  def clicarCasa  
  	find('label[for=home_order_flow_pricing_requirements_property_attributes_type_house]').click
  end

  def preencherDadosIniciais (estado, valor, apelido, telefone, email)
  	
  	select estado, from: 'home_order_flow_pricing_requirements[property_attributes][address_attributes][state]'

  	input_valor.set valor

  	input_apelido.set apelido

  	input_telefone.set telefone

  	input_email.set email

  end

  def clicarEscolherCobertura
  	page.find(:css,"input.button.button--primary").click
  end

  def garantirAbaCobertura
  	page.has_content?('Essa é a parte mais legal: bora deixar o seguro com a sua cara?')

  end
end

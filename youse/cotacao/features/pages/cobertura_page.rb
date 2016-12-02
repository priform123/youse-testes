class CoberturaPage < SitePrism::Page

  def paginaCobertura
  	page.has_content?('Essa é a parte mais legal: bora deixar o seguro com a sua cara?')
  end

  def escolherCobertura(valorCobertura,dano,furto,responsabilidade,quebraVidro,vendaval,perda,veiculos,tumulto)

  		find(:xpath, "(//input[@id='coverages__selected_lmi'])[1]").set valorCobertura
  		find(:xpath, "(//input[@id='coverages__selected_lmi'])[2]").set dano
  		find(:xpath, "(//input[@id='coverages__selected_lmi'])[3]").set furto


  		if (responsabilidade >= 300)
  			find(:checkbox,"(input[type='checkbox'])[4]").set(true)
  			find(:xpath, "(//input[@id='coverages__selected_lmi'])[4]").set responsabilidade
  		else 
  			find(:checkbox,"(input[type='checkbox'])[4]").set(false)
  		end

  		if (quebraVidro >= 300)
  			find(:checkbox,"(input[type='checkbox'])[5]").set(true)
  			find(:xpath, "(//input[@id='coverages__selected_lmi'])[5]").set quebraVidro  	
   		end
  			find(:checkbox,"(input[type='checkbox'])[5]").set(false)
  		end

  		if (vendaval >= 300)
  			find(:checkbox,"(input[type='checkbox'])[6]").set(true)
  			find(:xpath, "(//input[@id='coverages__selected_lmi'])[6]").set vendaval  	
   		end
  			find(:checkbox,"(input[type='checkbox'])[6]").set(false)
  		end

  		if (perda >= 300)
  			find(:checkbox,"(input[type='checkbox'])[7]").set(true)
  			find(:xpath, "(//input[@id='coverages__selected_lmi'])[7]").set perda  	
   		end
  			find(:checkbox,"(input[type='checkbox'])[7]").set(false)
  		end

  		if (veiculos >= 300)
  			find(:checkbox,"(input[type='checkbox'])[8]").set(true)
  			find(:xpath, "(//input[@id='coverages__selected_lmi'])[8]").set veiculos  	
   		end
  			find(:checkbox,"(input[type='checkbox'])[8]").set(false)
  		end

  		if (tumulto >= 300)
  			find(:checkbox,"(input[type='checkbox'])[9]").set(true)
  			find(:xpath, "(//input[@id='coverages__selected_lmi'])[9]").set tumulto 	
   		end
  			find(:checkbox,"(input[type='checkbox'])[9]").set(false)
  		end

  end

  
  def  clicarBotaoProximoPasso  	
  	page.find(:css,"input.button.button--primary.button--centered").click  	
  end


  def garantirAbaSugestoes
  	page.has_content?('Sugestões de Assistências Youse para você. 
  		Conheça cada serviço incluso na categoria de Assistências e deixe o seguro do seu jeito.')
  end


  def escolherCoberturaSugestoes(residencial, eletrodomesticos, lar, cao, pet, criancas, idosos, computador, acessibilidade, sustentabilidade)

  		if residencial
  			find('label[for=switch_321604451066574720397092411699991312630]').set(true)  			
  		else 
  			find('label[for=switch_321604451066574720397092411699991312630]').set(false)
  		end

  		if eletrodomesticos
  			find('label[for=switch_161884800773228252501940001151754141895]').set(true)  			
  		else 
  			find('label[for=switch_161884800773228252501940001151754141895]').set(false)
  		end

  		if lar
  			find('label[for=switch_177723109819298067856633176960885594177]').set(true)  			
  		else 
  			find('label[for=switch_177723109819298067856633176960885594177]').set(false)
  		end

  		if cao
  			find('label[for=switch_105521573150525215932855109972361424937]').set(true)  			
  		else 
  			find('label[for=switch_105521573150525215932855109972361424937]').set(false)
  		end

  		if pet
  			find('label[for=switch_242068573061377968307037647116359277887]').set(true)  			
  		else 
  			find('label[for=switch_242068573061377968307037647116359277887]').set(false)
  		end

  		if criancas
  			find('label[for=switch_276772574738935846876195093978356029456]').set(true)  			
  		else 
  			find('label[for=switch_276772574738935846876195093978356029456]').set(false)
  		end

  		if idosos
  			find('label[for=switch_109519577929362522994443614403146786375]').set(true)  			
  		else 
  			find('label[for=switch_109519577929362522994443614403146786375]').set(false)
  		end

  		if computador
  			find('label[for=switch_26554651723413270296169652055697724782]').set(true)  			
  		else 
  			find('label[for=switch_26554651723413270296169652055697724782]').set(false)
  		end

  		if acessibilidade
  			find('label[for=switch_275197121522787707685786022592118554605]').set(true)  			
  		else 
  			find('label[for=switch_275197121522787707685786022592118554605]').set(false)
  		end

  		if sustentabilidade
  			find('label[for=switch_46880435192995514341281555061167436898]').set(true)  			
  		else 
  			find('label[for=switch_46880435192995514341281555061167436898]').set(false)
  		end

  	end



  	def garantirAbaImovel
  		page.has_content?('Legal! Agora precisamos saber algumas informações sobre o imóvel :)')
  	end

end

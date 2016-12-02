class DadosfinaisPage < SitePrism::Page

	element :input_cep, '#home_order_flow_property_data_property_attributes_address_attributes_zipcode'
	element :input_rua, '#home_order_flow_property_data_property_attributes_address_attributes_street'
	element :input_numero, '#home_order_flow_property_data_property_attributes_address_attributes_number'
	element :input_complemento, '#home_order_flow_property_data_property_attributes_address_attributes_complement'
	element :input_bairro, '#home_order_flow_property_data_property_attributes_address_attributes_neighborhood'

	element :input_nome_completo, '#home_order_flow_insured_person_data_insured_person_attributes_name'
	element :input_cpf, '#home_order_flow_insured_person_data_insured_person_attributes_cpf'
	element :input_nascimento, '#home_order_flow_insured_person_data_insured_person_attributes_date_of_birth'
	element :input_bairro, '#home_order_flow_property_data_property_attributes_address_attributes_neighborhood'
	element :input_profissao, 'input.select2-search__field'

	element :input_cep_outro, '#home_order_flow_insured_person_data_insured_person_attributes_address_attributes_zipcode'
	element :input_rua_outro, '#home_order_flow_insured_person_data_insured_person_attributes_address_attributes_street'
	element :input_numero_outro, '#home_order_flow_insured_person_data_insured_person_attributes_address_attributes_number'
	element :input_complemento_outro, '#home_order_flow_insured_person_data_insured_person_attributes_address_attributes_complement'
	element :input_bairro_outro,'#home_order_flow_insured_person_data_insured_person_attributes_address_attributes_neighborhood'

	def dadosImovel
  		page.has_content?('Legal! Agora precisamos saber algumas informações sobre o imóvel :)')
    end

	def preencherDadosImovel(pessoa, proprietario, cep, rua, numero, complemento, bairro, imovel)

		select pessoa, from: 'home_order_flow_property_data[insured_person_attributes][same_as_lead_person]'

		select proprietario, from: 'home_order_flow_property_data[property_attributes][owner_is_insured_person]'

		input_cep.set cep

		input_rua.set rua

		input_numero.set numero

		input_complemento.set complemento

		input_bairro.set bairro

		select imovel, from: 'home_order_flow_property_data[property_attributes][feature]'

	end

	def clicarProximoAbaDadosPessoais
  		page.find(:css,"input.button.button--primary").click
    end

    def dadosPessoais
  		page.has_content?('Aee! Estamos quase lá.Conta aí um pouquinho mais sobre vc.')
    end

    def preencherDadosPessoais(nome, sexo, cpf, nascimento, pais, paisMoradia, profissao, renda, enderecoCorrespondencia, cepOutro, ruaOutro, numeroOutro, complementoOutro, bairroOutro)
    	
    	input_nome_completo.set nome
    	select sexo, from: 'home_order_flow_insured_person_data[insured_person_attributes][gender]'
    	input_cpf.set cpf
    	input_nascimento.set nascimento
    	select pais, from: 'home_order_flow_insured_person_data[insured_person_attributes][nationality]'
    	select paisMoradia, from: 'home_order_flow_insured_person_data[insured_person_attributes][country_of_residence]'
    	input_profissao.set profissao
    	select renda, from: 'home_order_flow_insured_person_data[insured_person_attributes][salary_range]'

    	if(enderecoCorrespondencia == "é")
    		select enderecoCorrespondencia, from: 'home_order_flow_insured_person_data[mailing_address_is_property_address]'
    	else
    		select enderecoCorrespondencia, from: 'home_order_flow_insured_person_data[mailing_address_is_property_address]'
    		input_cep_outro.set cepOutro
    		input_rua_outro.set ruaOutro
    		input_numero_outro.set numeroOutro
    		input_complemento_outro.set complementoOutro
    		input_bairro_outro.set bairroOutro

    	end    	

    end

    def clicarPagamento
    	page.find(:css,"button.button.button--primary").click
    end

    def pagamento
    	page.has_content?('Para finalizar, insira os dados de pagamento.')	
    end

end

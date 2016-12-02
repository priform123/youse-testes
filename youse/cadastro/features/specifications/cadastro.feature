# language: pt
Funcionalidade: Cadastro

Como usuário novo
Desejo cadastrar uma conta na Youse
Para poder contratar um seguro

  Esquema do Cenario: Novo Cadastro
    # Insira os passos

    Dado que eu esteja na página de login
    Quando eu clicar em Cadastre-se
    E preencher os campos: Nome "<nome>",E-mail "<email>",Senha "<senha>" e Confirme sua senha"<confirmeSenha>" 
    E clicar em Enviar Cadastro
    Então efetuarei o registro com sucesso


# No exemplo, cenários positivos e negativos:
# Dados corretos
# E-mail incorreto
# Nome com número
# Senha pequena
# Senhas não compatíveis
# Campos Obrigatórios

    Exemplos: 
	| nome      |   email             |  senha      | confirmeSenha |
	|Teste      |testeeiu@gmail.com   |teste123987  | teste123987   |
	|Zé da Silva|zezao                |zezao123987  | zezao123987   |
	|120456789! |zezaouhu@gmail.com   |zezao123987  | zezao123987   |
	|Zé do Uhu  |zedouhu@gmail.com    |123987       | 123987        |
	|Zé do Uhu  |zedouhu@gmail.com    |zezao123987  | zezao12398    |
	|           |                     |             |               |
	

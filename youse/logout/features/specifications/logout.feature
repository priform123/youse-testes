# language: pt
Funcionalidade: Logout

Como usuário logado
Desejo fazer o logout na minha conta 


  Esquema do Cenario: Logout
    # Insira os passos

    Dado que eu esteja logado no site da Youse <"email"> <"senha">
    Quando eu clicar em Minha Conta
    E clicar em Sair
    Então terei acesso à pagina principal da youse


#No exemplo, um cenário feliz e outro infeliz

    Exemplos: 
	|      email         |  senha      |
	|pribelform@gmail.com|priform123   |
	


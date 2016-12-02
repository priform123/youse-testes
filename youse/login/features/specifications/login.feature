# language: pt
Funcionalidade: Login na Youse

Como usuário novo e já cadastrado
Desejo me logar na minha conta 
Para poder acessar a cotação de seguros

  Esquema do Cenario: Login
    # Insira os passos

    Dado que eu esteja no site da Youse
    E clicar em Minha Conta
    Quando eu inserir meu email"<email>"
    E clicar em Prosseguir
    E inserir minha senha "<senha>"
    Então conseguirei acessar a home


#No exemplo, um cenário feliz e outro infeliz

    Exemplos: 
	|      email         |  senha      |
	|pribelform@gmail.com|priform123   |
	|pribel@gmail.com    |priform123098|



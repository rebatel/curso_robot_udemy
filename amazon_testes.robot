*** Settings ***
Documentation   essa suite testa o site da amazon.com.br
Resource        amazon_resources.robot
Test Setup      Abrir o navegador
# Test Teardown   Fechar o navegador

*** Test Cases ***
caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]  Esse teste verifica o menu eletronicos do site da amazon.com.br
    ...              e verifica a categoria computadores e informatica
    [Tags]           menus  categorias
     Acessar a home page do site Amazon.com.br
     Verificar se o titulo da página fica "Amazon.com.br | Tudo pra você, de A a Z."
     Entrar no menu "Eletrônicos"
     Verificar se aparece a frase "Eletrônicos e Tecnologia"
     Verificar se o titulo da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
     Verificar se aparece a categoria "Computadores e Informática"
     Verificar se aparece a categoria "Tablets"


# caso de teste 02 - Pesquisa de um Produto
#     [Documentation]    Esse teste verifica a busca de um produto
#     [Tags]             busca_produtos  lista-busca
#      Acessar a home page do site Amazon.com.br
#      Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#      Verificar o resultado da pesquisa, listando produto pesquisado
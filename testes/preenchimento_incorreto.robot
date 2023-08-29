*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que eu acesse o organo
Test Teardown    Fechar o navegador

*** Variables ***
${BOTAO_CARD}    id:form-botao


*** Test Cases ***
Verificar se quando um campo obrigatório não for preenchido corretamente o sistema exibe uma mensagem de campo obrigatório
    Dado que eu clique no botão criar card
    Então o sistema deve apresentar mensagem de campo obrigatório


Verificar se é possível criar mais de um card se preenchermos os campos corretamente
    Dado que eu preencha os campos do formulário
    E clique no botão criar card

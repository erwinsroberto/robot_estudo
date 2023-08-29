*** Settings ***
Resource           ../resources/main.robot
Test Setup         Dado que eu acesse o organo
Test Teardown      Fechar o navegador 

*** Test Cases ***
Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time esperado
    Dado que eu preencha os campos do formulário
    E clique no botão criar card
    Então indentificar 20 cards no time esperado

Verificar se é possível criar um card para cada time disponível se preenchermos os campos corretamente
    Dado que eu preencha os campos do formulário
    Então criar e identificar 1 card em cada time disponível


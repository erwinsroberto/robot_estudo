*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Abrir navegador e acessar o site organo
    Open Browser    url=http://localhost:3000/    browser=Chrome
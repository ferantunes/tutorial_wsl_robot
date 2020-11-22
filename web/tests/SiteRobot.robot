*** Settings ***
Resource    ../resource/Keywords.robot

Suite Teardown    Close Browser

*** Test Cases ***
Acessar a Página Introdução do Robot Framework
    Dado que estou na home do site
    Quando eu acessar a página de introdução
    Então devo ver o texto de introdução do Robot Framework
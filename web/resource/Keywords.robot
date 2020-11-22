*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MENU_INTRODUCTION}       css=#navigation a[href='#introduction']
${SECTION_INTRODUCTION}    css=section#introduction h1


*** Keywords ***
Dado que estou na home do site
    Open Browser    https://robotframework.org/    headlesschrome
    
Quando eu acessar a página de introdução
    Wait Until Element Is Visible    ${MENU_INTRODUCTION}
    Click Element    ${MENU_INTRODUCTION}

Então devo ver o texto de introdução do Robot Framework
    Wait Until Page Contains Element    ${SECTION_INTRODUCTION}
    Element Text Should Be    ${SECTION_INTRODUCTION}    INTRODUCTION
    Capture Page Screenshot

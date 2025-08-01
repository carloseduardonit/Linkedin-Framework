*** Settings ***
Library    RPA.Browser.Selenium
*** Variables ***
${5s}  5
${10s}  10
${15s}  15
${30s}  30
${job}      Analista de qualidade 
*** Keywords ***
Manipular Element
    [Documentation]    Manipular o elemento caso ele esteja visivel, senão ignora o erro
    [Tags]    Manipular    OK
    [Arguments]   ${elemento}
    Run Keyword And Ignore Error    Click Element If Visible  ${elemento}    
    Sleep    ${5s}


Quantos elementos 
    [Documentation]    Verifica quantos elementos existem na tela
    [Arguments]    ${elemento}
    [Tags]    Quantidade    testar
    ${quantidade}    Get Element Count    ${elemento}
    Log    ${quantidade} elementos encontrados
    Return From Keyword If   ${quantidade} == 0    0
    Return from Keyword   ${quantidade}

Reducao da tela do navegador
    [Documentation]    Reduz a tela do navegador
    [Tags]    Reduzir    testar
    [Arguments]   ${Clique}=0
    ${i} =    Set Variable    0
    FOR    ${i}    IN RANGE    ${Clique}
        Press Keys   NONE  CTRL+ADD
        Sleep    ${30s}
    END

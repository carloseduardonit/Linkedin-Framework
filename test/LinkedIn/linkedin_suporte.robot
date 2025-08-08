*** Settings ***
Library    RPA.Browser.Selenium
*** Variables ***
${5s}  5
${10s}  10
${15s}  15
${30s}  30

*** Keywords ***

Manipular Element
    [Documentation]    Manipular o elemento caso ele esteja visivel, senão ignora o erro
    [Tags]    Manipular    OK
    [Arguments]   ${elemento}
    Run Keyword And Ignore Error    Click Element If Visible  ${elemento}    
    Sleep    ${5s}

Obter termo de pesquisa 
    [Documentation]    Retorna o termo de pesquisa para uso no campo de busca do LinkedIn.
    ...                Caso o parâmetro ${aspas} seja True, o valor será retornado entre aspas duplas (ex: "QA Analyst").
    ...                Caso seja False (padrão), retorna o termo limpo, sem aspas.
    [Arguments]    ${job}    ${aspas}=False
    [Tags]    No_Test
    ${aspas} =   Convert To Boolean    ${aspas}
    Return From Keyword If    ${aspas}    "${job}"
    Return From Keyword    ${job}

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

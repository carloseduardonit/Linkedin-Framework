*** Settings ***
Library    RPA.Browser.Selenium
Library    String
*** Variables ***
# | QA Intern | QA Traine | QA Associate | QA Manual Tester | QA Analyst | QA Specialist | QA Consultant | QA Automation Intern | QA Automation Trainee | QA Automation Associate | QA Automation Tester | QA Automation Engineer | QA Automation Specialist | QA Automation Consultant | QA Lead | QA Automation Lead | QA Architect | QA Automation Architect | QA Manager | QA Automation Manager | QA Director | QA Automation Director |

# | Estagiário de Contabilidade | Traine de Contabilidade | Auxiliar de Contabilidade | Assistente de Contabilidade | Técnico de Contabilidade | Analista de Contabilidade | Contador | Auditor | Controller | Analista Fiscal | Analista Tributário | Analista de Custos | Analista de Contas a Pagar | Analista de Contas a Receber | Analista de Folha de Pagamento | Analista de Tesouraria | Analista de Controladoria | Analista de Orçamento | Analista de Planejamento Financeiro | Analista de Auditoria Interna | Analista de Auditoria Externa | Analista de Compliance | Analista de Riscos Financeiros | Analista de Controle Interno | Analista de Relatórios Financeiros | Analista de Consolidação Financeira | Analista de Contabilidade Gerencial | Analista de Contabilidade Internacional | Analista de Contabilidade Tributária | Analista de Contabilidade Financeira | Analista de Contabilidade de Custos | Analista de Contabilidade de Patrimônio | Analista de Contabilidade de Receitas | Analista de Contabilidade de Despesas | Analista de Contabilidade de Ativos | Analista de Contabilidade de Passivos |

# | Java Developer | Java Engineer | Java Programmer | Java Software Engineer | Java Software Developer | Java Application Developer | Java Web Developer | Java Backend Developer | Java Frontend Developer | Java Full Stack Developer | Java Mobile Developer | Java Cloud Developer |

${job}   QA
${2s}    2
${5s}    5
${10s}   10
${15s}   15
${30s}   30

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
    [Tags]    Ok_Testar    DOC_OK
    ${aspas} =   Convert To Boolean    ${aspas}
    Return From Keyword If    ${aspas}    "${job}"
    Return From Keyword    ${job}

Obter termo de Pesquisa de Localização
    [Documentation]    Retorna o termo de pesquisa de localização para
    ...    uso no campo de busca do LinkedIn.
    [Arguments]    ${Cidade}=None    ${Estado}=None    ${Pais}=None
    [Tags]    OK_Testar    DOC_OK
    ${Pais} =    Set Variable If    ${Pais}==None    Brasil
    ${Estado} =    Set Variable If    ${Estado}==None    Rio de Janeiro,
    ${Cidade} =    Set Variable If    ${Cidade}==None    São Gonçalo,
    ${localizacao} =    Catenate    SEPARATOR=    ${Cidade}    ${Estado}    ${Pais}
    ${localizacao} =    Strip string    ${localizacao}
    Return From Keyword    ${localizacao}
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
    [Tags]    Reduzir    NOK_testar
    [Arguments]   ${Clique}=0
    ${i} =    Set Variable    0
    FOR    ${i}    IN RANGE    ${Clique}
        Press Keys   NONE  CTRL+ADD
        Sleep    ${30s}
    END

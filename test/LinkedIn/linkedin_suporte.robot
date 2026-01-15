*** Settings ***
Library    RPA.Browser.Selenium
Library    String
*** Variables ***
# Termos de pesquisa para vagas de QA (Quality Assurance) no LinkedIn
# | QA Junior | QA Pleno | QA Senior | QA Sênior | QA Especialista | QA Expert | QA Engenheiro | QA Engineer | QA Tester | QA Testador | QA Test Engineer | QA Test Analyst | QA Test Specialist | QA Test Consultant | QA Test Lead | QA Test Manager | QA Test Director | QA Automation | QA Automation Engineer | QA Automation Specialist | QA Automation Consultant | QA Automation Lead | QA Automation Manager | QA Automation Director |
# | QA Intern | QA Traine | QA Associate | QA Manual Tester | QA Analyst | QA Specialist | QA Consultant | QA Automation Intern | QA Automation Trainee | QA Automation Associate | QA Automation Tester | QA Automation Engineer | QA Automation Specialist | QA Automation Consultant | QA Lead | QA Automation Lead | QA Architect | QA Automation Architect | QA Manager | QA Automation Manager | QA Director | QA Automation Director |
# | Quality Assurance Junior | Quality Assurance Pleno | Quality Assurance Senior | Quality Assurance Sênior | Quality Assurance Especialista | Quality Assurance Expert | Quality Assurance Engenheiro | Quality Assurance Engineer | Quality Assurance Tester | Quality Assurance Testador | Quality Assurance Test Engineer | Quality Assurance Test Analyst | Quality Assurance Test Specialist | Quality Assurance Test Consultant | Quality Assurance Test Lead | Quality Assurance Test Manager | Quality Assurance Test Director | Quality Assurance Automation | Quality Assurance Automation Engineer | Quality Assurance Automation Specialist | Quality Assurance Automation Consultant | Quality Assurance Automation Lead | Quality Assurance Automation Manager | Quality Assurance Automation Director |
# | Quality Assurance Intern | Quality Assurance Traine | Quality Assurance Associate | Quality Assurance Manual Tester | Quality Assurance Analyst | Quality Assurance Specialist | Quality Assurance Consultant | Quality Assurance Automation Intern | Quality Assurance Automation Trainee | Quality Assurance Automation Associate |
# | Quality Assurance Automation Tester | Quality Assurance Automation Engineer | Quality Assurance Automation Specialist | Quality Assurance Automation Consultant | Quality Assurance Lead | Quality Assurance Automation Lead | Quality Assurance Architect | Quality Assurance Automation Architect | Quality Assurance Manager | Quality Assurance Automation Manager | Quality Assurance Director | Quality Assurance Automation Director |
# | Teste de Qualidade | Teste de Qualidade Junior | Teste de Qualidade Pleno | Teste de Qualidade Senior | Teste de Qualidade Sênior | Teste de Qualidade Especialista | Teste de Qualidade Expert | Teste de Qualidade Engenheiro | Teste de Qualidade Engineer | Teste de Qualidade Tester | Teste de Qualidade Testador | Teste de Qualidade Test Engineer | Teste de Qualidade Test Analyst | Teste de Qualidade Test Specialist | Teste de Qualidade Test Consultant | Teste de Qualidade Test Lead | Teste de Qualidade Test Manager | Teste de Qualidade Test Director | Teste de Qualidade Automation | Teste de Qualidade Automation Engineer | Teste de Qualidade Automation Specialist | Teste de Qualidade Automation Consultant | Teste de Qualidade Automation Lead | Teste de Qualidade Automation Manager | Teste de Qualidade Automation Director |
# | Teste de Qualidade Intern | Teste de Qualidade Traine | Teste de Qualidade Associate | Teste de Qualidade Manual Tester | Teste de Qualidade Analyst | Teste de Qualidade Specialist | Teste de Qualidade Consultant | Teste de Qualidade Automation Intern | Teste de Qualidade Automation Trainee | Teste de Qualidade Automation Associate | Teste de Qualidade Automation Tester | Teste de Qualidade Automation Engineer | Teste de Qualidade Automation Specialist | Teste de Qualidade Automation Consultant | Teste de Qualidade Lead | Teste de Qualidade Automation Lead | Teste de Qualidade Architect | Teste de Qualidade Automation Architect | Teste de Qualidade Manager | Teste de Qualidade Automation Manager | Teste de Qualidade Director | Teste de Qualidade Automation Director |

# Termos de pesquisa para vagas de Contabilidade no LinkedIn
# | Estagiário de Contabilidade | Traine de Contabilidade | Auxiliar de Contabilidade | Assistente de Contabilidade | Técnico de Contabilidade | Analista de Contabilidade | Contador | Auditor | Controller | Analista Fiscal | Analista Tributário | Analista de Custos | Analista de Contas a Pagar | Analista de Contas a Receber | Analista de Folha de Pagamento | Analista de Tesouraria | Analista de Controladoria | Analista de Orçamento | Analista de Planejamento Financeiro | Analista de Auditoria Interna | Analista de Auditoria Externa | Analista de Compliance | Analista de Riscos Financeiros | Analista de Controle Interno | Analista de Relatórios Financeiros | Analista de Consolidação Financeira | Analista de Contabilidade Gerencial | Analista de Contabilidade Internacional | Analista de Contabilidade Tributária | Analista de Contabilidade Financeira | Analista de Contabilidade de Custos | Analista de Contabilidade de Patrimônio | Analista de Contabilidade de Receitas | Analista de Contabilidade de Despesas | Analista de Contabilidade de Ativos | Analista de Contabilidade de Passivos |

# Termos de pesquisa para vagas de Desenvolvimento de Software no LinkedIn
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

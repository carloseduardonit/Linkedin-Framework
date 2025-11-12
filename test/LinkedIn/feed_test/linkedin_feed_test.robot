*** Settings ***
Library    RPA.Browser.Selenium
Resource   ../linkedin_locator.robot
resource   ../linkedin_suporte.robot
Resource   ../resources/keywords_linkedin.robot


*** Variables ***

${urlJob}    https://www.linkedin.com/jobs/

*** Keywords ***


Pesquisar para emprego no Linkedin
    [Documentation]    Pesquisa vagas no LinkedIn com base no termo de cargo desejado 
    ...                e captura a tela dos resultados.
    [Tags]    Pesquisar_emprego   OK_Test
    
    
        #Wait Until Element Is Visible   locator=${h3_nome}    timeout=15

        Wait Until Element Is Visible   locator=${p_nome}    timeout=15
    
    
    RPA.Browser.Selenium.Go To    ${urlJob}
    
    Element Should Be Visible    ${h2_title}   timeout=30
    ${Auxiliar}=  Obter termo de pesquisa    ${job}     ${true}
    Wait Until Element Is Visible   locator=${campoSeach}    timeout=15
    Input Text    ${campoSeach}    ${Auxiliar}
    Input text    ${campoLocal}    ${Local}
    RPA.Browser.Selenium.Press Keys    ${campoSeach}    ENTER
    Sleep    15
    Capture Page Screenshot    Vagas de ${job}.png

Pesquisar de vagas de "${emprego}" no "${Local}"
    [Documentation]    Pesquisa vagas no Linkedin
    No Operation
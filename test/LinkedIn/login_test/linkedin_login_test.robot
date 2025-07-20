*** Settings **
Library    RPA.Browser.Selenium
Variables   ../../LinkedIn/linkedin.py
Resource    ../../LinkedIn/linkedin_locator.robot

*** Variables **
${loginLinkedin}    https://www.linkedin.com/login/pt?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin

*** Keywords ***
## Acessar a home page do site Linkedin.com.br
Open Linkedin
    [Documentation]    Abre o LinkedIn no navegador e realiza o login do usuário.
    [Tags]    login

    # Abre o navegador Firefox com a URL do LinkedIn
    RPA.Browser.Selenium.Open Browser   ${loginLinkedin}     firefox  options = add_experimental_option("detach", True)
    #RPA.Browser.Selenium.Open Browser   ${loginLinkedin}  chrome
    Set Window Size    1300   720
    Maximize Browser Window

    # Realiza o login com as credenciais do usuário
    Input Text    ${campo_login}  ${email}
    Input Password    ${campo_senha}    ${senha}
    Click Button    ${botao_submit}
    Sleep    15
    Capture Page Screenshot    login do usuario ${name}.png 

Open Linkedin I
    [Documentation]    Open Linkedin com parâmetros de email e senha
    [Arguments]    ${email_usuario}   ${senha_usuario}
    [Tags]     login
    RPA.Browser.Selenium.Open Browser   ${loginLinkedin}  firefox
    ...  options = add_experimental_option("detach", True)
    Maximize Browser Window
    Input Text    ${campo_login}    ${email_usuario}
    Input Password    ${campo_senha}    ${senha_usuario}
    Click Button   ${botao_submit}
    Sleep    15
    Capture Page Screenshot    login do usuario ${name}.png 

Esta conectado ao Linkedin no Feed
    [Documentation]    Verifica se o usuario está conectado ao LinkedIn
    [Tags]    login   No_Test
    ${resposta} =  Run Keyword And Return Status    Is Element Visible   ${h3_nome}
    IF  ${resposta}
        Log    O usuario ${name} esta conectado ao LinkedIn
        Capture Page Screenshot   O usuario ${name} esta conectado.png
        
    ELSE
        Log    O usuario ${name} não esta conectado ao LinkedIn
        Capture Page Screenshot   O usuario ${name} não esta conectado.png
    END
    Return From Keyword  ${resposta}
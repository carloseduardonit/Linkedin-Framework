*** Settings ***
Resource  ../test/LinkedIn/jobs_test/linkedin_candidatura.robot
*** Keywords ***
Gerar Link da Gupy
   [Documentation]    Copia o link da vaga e verifica se pertence à Gupy (contém 'gupy.io').
    ...                Armazena o link válido na variável de suíte `${link_vaga}`, 
    ...                ou None se inválido.
    [Tags]    Link    No_Test
    ${url_gupy} =  Set Variable    gupy.io
    ${resposta}=     Copiar o link da vaga
    ${contem}=  Run Keyword And Return Status      
    ...    Should Contain    ${resposta}    ${url_gupy}
        
    IF    ${resposta} != ${None} and ${contem}
        Log    message=Link da vaga: ${resposta}
        Set Suite Variable    ${link_vaga}    ${resposta}
    ELSE
        Log    message=Link da vaga não encontrado
        Set Suite Variable    ${link_vaga}    ${None}
    END

Acessar a página da vaga
    [Arguments]    ${link_vaga}
    Open Browser    ${link_vaga}  

acessar Link da Gupy
    [Documentation]    Acessa o link da vaga armazenado na variável de suíte `${link_vaga}`.
    ...                Se o link for None, registra uma mensagem de erro.
    [Tags]    Link    No_Test
    IF    ${link_vaga} != ${None}
        Log    message=Acessando o link da vaga: ${link_vaga}
        Acessar a página da vaga    ${link_vaga}
    ELSE
        Log    message=Link da vaga não disponível para acesso
    END

    
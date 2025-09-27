
*** Settings ***
Resource   linkedin_candidatura.robot


*** Keywords ***
Acesso as vagas
    [Documentation]    Acessa a listagem de vagas da página atual 
    ...    e inicia candidatura nas que ainda não foram aplicadas.  
    [Tags]    Linkedin    OK
     
    ${Pagina}=   Qual e pagina atual?
    Set Global Variable    ${Pagina}
    Log    message= ${Pagina}º pagina acessada

    #Wait Until Element Is Visible    locator=${div_vagas}    timeout=30s
    ${Vagas} =    RPA.Browser.Selenium.Get Element Count   ${div_vagas}
    ${numero_vaga} =  Set Variable    0
    WHILE  ${numero_vaga} < ${Vagas}
        ${teste} =     Ja se candidatou a esta vaga?      ${numero_vaga} 
        ${aux}=    gerar path do item  ${${Vagas}-1}  a
        IF   not ${teste}
            Scroll E Clica No Elemento  ${aux}     
            Acessar o cartao da Vaga    ${numero_vaga}  
            Faça a Candidatura da vaga simplificada
        END
        Fechar o cartao da Vaga   ${numero_vaga}
        ${Vagas} =   RPA.Browser.Selenium.Get Element Count     ${div_vagas}
        ${numero_vaga} =  Set Variable    ${${numero_vaga} + 1}
    END

Acessar o cartao da Vaga
     [Documentation]    Acessa o cartão da vaga pelo número de item 
     ...    e realiza captura de tela do cartão e seu conteúdo.
    [Tags]    cartaosVagas    OK
    [Arguments]    ${numero_item}

    ${card_vagas}=  gerar path do item   ${numero_item}
    ${item}=    gerar path do item    ${numero_item}      a[contains(@class,'_link')]
    ${conteudo}=     Set Variable    //div[contains(@class,'job-details--wrapper')]


    Wait Until Element Is Visible    locator=${item}    timeout= ${30s}

    Capture Element Screenshot    locator=${card_vagas}     filename=O nome da vaga na ${Pagina}º pagina na posição ${${numero_item}+1}º das vagas.png
    Manipular Element    ${item}
    Capture Element Screenshot    locator=${conteudo}   filename=O conteudo da vaga na ${Pagina}º pagina na posição ${${numero_item}+1}º das vagas.png

Candidatar ao processo extensivo
    [Documentation]    Realiza a candidatura automática em um processo seletivo com etapas progressivas.
    ...                Essa keyword verifica se a barra de progresso da candidatura está visível.
    ...                Caso esteja, inicia o fluxo clicando nos botões de avanço até que o progresso alcance 100%.
    ...                Quando finalizado, clica no botão de envio final e registra capturas de tela do processo.
    ...                Fluxo:
    ...                - Verifica visibilidade da barra de progresso
    ...                - Enquanto progresso < 100, aciona botões de avanço
    ...                - Finaliza a candidatura e captura evidência visual
    [Tags]    Linkedin    OK     DOC_OK

    ${resposta} =  Is Element Visible   ${path_progresso}
    IF  ${resposta}
        ${progresso_valor} =    Obter valor do progresso
        WHILE    ${progresso_valor} < 100.00
            ${progresso_valor} =    Obter valor do progresso
            Manipular Element   ${botao_avancarCandidatura} 
            Manipular Element   ${botao_revisarCandidatura}
            Manipular Element   ${botao_enviarCandidatura}           
            
            Sleep    ${5s}
            IF   not ${progresso_valor}
                BREAK
            END
            ${progresso_valor} =    Obter valor do progresso
        END 
    END
    Manipular Element   ${botao_concluirCandidatura}
    Manipular Element   ${botao_finalizarCandidatura}
    Capture Page Screenshot   Candidatura finalizada.png
    Sleep    ${5s}

Candidatar ao processo simples
    [Documentation]    Realiza a candidatura simples quando não há barra de progresso visível.
    ...                Essa keyword assume que o processo é direto e sem etapas intermediárias.
    ...                Fluxo:
    ...                - Verifica se o elemento de progresso está ausente
    ...                - Clica nos botões de revisão, envio e finalização da candidatura

    [Tags]    Linkedin    OK

    ${resposta} =  Is Element Visible  ${path_progresso}
    IF  not ${resposta}
        Manipular Element   ${botao_revisarCandidatura}
        Manipular Element   ${botao_enviarCandidatura}
        Manipular Element    ${botao_finalizarCandidatura}
    END

Clique na filtragem da Candidatura simplificada
    [Documentation]    Clica no botão de filtro de candidatura simplificada, 
    ...                se visível, e captura a tela com os resultados.
    [Tags]    button    OK
    ${Resposta} =  Is Element Visible   locator=${botao_filtragemVagaSimplificada}
    IF   ${Resposta}
        Wait Until Element Is Visible    locator=${botao_filtragemVagaSimplificada}   timeout=150
        Click Button  ${botao_filtragemVagaSimplificada}
    ELSE
        Log    message=Botão de filtragem para vaga simplificada não encontrado
    END
    Sleep   ${10s}
    Capture Page Screenshot     Vagas de ${job} no modelo de vaga simplificada.png

Faça a Candidatura da vaga simplificada
    [Documentation]    Aplica automaticamente para uma vaga com fluxo simplificado.
    ...                Caso o botão de início de candidatura esteja visível, realiza o fluxo completo:
    ...                - Inicia a candidatura
    ...                - Remove alertas de segurança, se houver
    ...                - Tenta aplicar pelos dois tipos de processo (simples e extensivo)
    [Tags]    Linkedin    OK

    ${resposta}=    Is Element Visible    ${botao_iniciarCandidaturaVagaSimplificada}
    IF    ${resposta}
        Manipular Element    ${botao_iniciarCandidaturaVagaSimplificada}
        Remover aviso de segurança
        Candidatar ao processo simples
        Candidatar ao processo extensivo
        Sleep    ${10s}
    END

Obter valor do progresso
    [Documentation]    Obtém o valor atual da barra de progresso, se visível.
    [Tags]    Validação    OK
    
    ${resposta} =  Is Element Visible   ${path_progresso}
    IF  ${resposta}
        ${progresso_valor} =    Get Element Attribute    ${path_progresso}    value
        ${progresso_valor} =    Convert To Number   ${progresso_valor}
        Return From Keyword    ${progresso_valor}
    ELSE
        Return From Keyword    ${resposta}
    END
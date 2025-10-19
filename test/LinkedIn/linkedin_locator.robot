# Title: LinkedIn Locators
*** Settings ***
Variables   ../LinkedIn/linkedin.py
*** Variables ***

# Campos da tela de login
${campo_login}       //input[@id='username']
${campo_senha}      //input[@id='password']
# Botao de submit da tela de login
${botao_submit}    //button[contains(@type,'submit')]

# Campos de pesquisas
#${campoSeach}    //input[contains(@class,'basic-input jobs-search-box__text-input jobs-search-box__keyboard-text-input jobs-search-global-typeahead__input')]
${campoSeach}   //input[contains(@placeholder,'Cargo, competência ou empresa')]
${campoLocal}   //input[contains(@placeholder,"Cidade, estado ou código postal")]

# Paragrafo do Feed
${p_nome}      //p[contains(.,'${name}')]
# Titulos do Feed
${h3_nome}      //h3[contains(.,'${name}')]

# Titulo da pagina de Vagas inicial
#${h2_title}    //h2[contains(.,'Conheça as oportunidades')]
#${h2_title}    //h2[contains(.,'Vagas selecionadas para você')]
#${h2_title}    //h2[contains(.,'Encontre seu próximo cargo')]
${h2_title}    //h2[contains(.,'Vagas que mais combinam com seu perfil')]

#  Botao da Filtragem de vagas
${botao_filtragemVagaSimplificada}    //button[@aria-label='Filtro Candidatura simplificada.']

# Path do progresso da candidatura
${path_progresso}   //progress

# Botao da Candidatura padrão
${botao_iniciarCandidaturaVagaPadrao}   //button[@role='link'][contains(.,'Candidatar-se')][1]

# Botao da Candidatura simplificada
${botao_iniciarCandidaturaVagaSimplificada}          //span[@class='artdeco-button__text'][contains(.,'Candidatura simplificada')][1]
${botao_avancarCandidatura}       //span[@class='artdeco-button__text'][contains(.,'Avançar')]
${botao_revisarCandidatura}      //span[@class='artdeco-button__text'][contains(.,'Revisar')]
${botao_enviarCandidatura}      //span[@class='artdeco-button__text'][contains(.,'Enviar candidatura')]
${botao_concluirCandidatura}    //span[@class='artdeco-button__text'][contains(.,'Concluido')]
${botao_finalizarCandidatura}  //button[@class='artdeco-button artdeco-button--circle artdeco-button--muted artdeco-button--2 artdeco-button--tertiary ember-view artdeco-modal__dismiss']

# Botao do Controle da Pagina. 
${botao_avançarPaginaCartao}    //button[@aria-label='Ver próxima página'][contains(.,'Avançar')]

# Variaveis de controle
${progresso_valor}  0
${contador}  -1
${contador_vaga}  0
${contador_pagina}  0
${test}
${item}  

# Variaveis de  inclusão de  contato
${div_contatos}    //div[@data-view-name='search-entity-result-universal-template']
${botao}     //span[@class='artdeco-button__text']
${botao_Seguir}=      //span[@class='artdeco-button__text'][contains(.,'Seguir')]
${botao_Conectar}      //span[@class='artdeco-button__text'][contains(.,'Conectar')]
${botao_EnviarSemNota}    //button[contains(@aria-label,'Enviar sem nota')]
${botao_AdicionarNota}    //button[contains(@aria-label,'Adicionar nota')]

#TODO: implementar a candidatura a vaga

${botao.homeOffice}    //button[contains(@id,'workplaceType')]
${combo.homeOffice}    (//input[contains(@name,'remoto-filter-value')])[1]

# link
${link_Visulizar}     //a[contains(@class,'jobs-s-apply__application-link display-flex align-items-center ember-view')]

*** Keywords ***
gerar path do item
    [Arguments]    ${numero_item}   ${std}=None
    [Documentation]    Gera o caminho do item baseado no número do item e na página.
    ...                Utiliza o número do item e a página para construir o caminho do elemento.
    ${item} =    Set Variable    //div[contains(@class,'job-card-container--viewport-tracking-${numero_item}')]
    Log    message=Item: ${item}
    # Verifica se o padrão (std) está vazio e ajusta o caminho do item
    ${resposta}=    Run Keyword And Return Status    Should Be Equal As Strings   ${std}   None
    IF   not ${resposta}
        ${item} =    Catenate    SEPARATOR=    ${item}   //${std} 
        Log    message=Item: ${item}
    END
    Return From Keyword    ${item}
    

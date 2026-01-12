*** Settings ***
Library    RPA.Browser.Selenium
*** Variables ***
${pergunta}=   //label[contains(.,'Como esta sua expectativa de valor no CLT?')]
${input_resposta}=  //input[contains(@class,'error-field artdeco-text-input--input')]
${selecionar_resposta}=     //select[contains(@aria-describedby,'text-entity-list-form-component-formElement-urn-li-jobs-applyformcommon-easyApplyFormElement-4243028816-20049339042-multipleChoice-error')]
&{q00}    pergunta=modelo
...       resposta=Modelo de Resposta
&{q01}    pergunta=For how long have you worked as a Tester?     
...       resposta=I have worked as a QA Manual Engineer for 2 years, focusing on manual testing, mobile testing, and accessibility (AX). During this time, I also gained experience using tools like Zephyr and Jira, and I'm currently deepening my knowledge in API testing and test automation with frameworks like Robot.
&{q02}    pergunta=For how long have you worked with Automation testing?    
...      resposta=I'm currently gaining experience with automation testing. I've been studying and applying it in personal and training projects using the Robot Framework, focusing on semi-automated testing. While my main background is in manual testing, I'm actively expanding into automation to strengthen my QA skills.
&{q03}    pergunta=With which QA Automation tools have you worked? Ex. Selenium, Cypress, Cucumber, etc    
...      resposta=I have worked with the Robot Framework for semi-automated testing, using it mainly in training and personal projects. While I haven't used tools like Selenium or Cypress professionally yet, I have studied their concepts and I'm gradually expanding my knowledge to include these tools as part of my transition into automation testing.
&{q04}    pergunta=linkedin
...      resposta=https://www.linkedin.com/in/carlos-eduardo-dos-s-figueiredo/
&{q05}    pergunta=github
...      resposta=
&{q06}    pergunta=Como ficou sabendo da nossa vaga?
...      resposta=LinkedIn
&{q07}    pergunta=Qual o seu nível de inglês?
...      resposta=Intermediário
&{q08}    pergunta=Você possui algum familiar (como pais, irmãos, sogros, cunhados, cônjuges, ou filhos, enteados, padrasto/madrasta, genro/ nora, amigo íntimo ou pessoa próxima (com quem você tem um relacionamento significativo e contínuo) que atualmente trabalha na CI&T?
...      resposta=Não
&{q09}    pergunta=Você possui alguma deficiência?
...      resposta=Não
&{q10}   pergunta=Qual sua pretensão salarial?
...      resposta=5000.00
&{q11}   pergunta=Você tem disponibilidade para trabalhar em horários flexíveis?
...      resposta=Sim
&{q12}   pergunta=Você possui alguma experiência anterior na área?
...      resposta=Não
&{q13}   pergunta=Você possui experiência em testes manuais?
...      resposta=Yes
&{q14}    pergunta=Você possui disponibilidade para atuação presencial em Maringá/ PR? Requisito obrigatório e indispensável
...       resposta=No
&{q15}    pergunta=Você possui experiência em testes automatizados?
...       resposta=No 
&{q16}    pergunta=Você possui conhecimento de metodologias ágeis (Scrum, Kanban)?
...       resposta=Yes
&{q17}    pergunta=Você possui experiência com ferramentas de gerenciamento de testes?
...       resposta=Yes
&{q18}    pergunta=Você possui familiaridade com banco de dados e execução de queries (SQL)?
...       resposta=Yes
&{q19}    pergunta=Você possui conhecimento em Java (diferencial)?
...       resposta=Yes  
&{q20}    pergunta=Você possui conhecimento em React e Angular?
...       resposta=No

@{questoes}     ${q00}    ${q01}    ${q02}    ${q03}    ${q04}    ${q05}    ${q06}    ${q07}    ${q08}    ${q09}    
...             ${q10}    ${q11}    ${q12}    ${q13}    ${q14}    ${q15}    ${q16}    ${q17}    ${q18}    ${q19}    
...             ${q20}

*** Keywords ***
Responder as questoes do formulario
    ${total_questoes}=    quantas questões existem?
    FOR    ${questao}    IN    @{questoes}
        ${pergunta}=    Set Variable    ${questao['pergunta']}
        ${resposta}=    Set Variable    ${questao['resposta']}
        Log to console   Pergunta: ${pergunta}  - Resposta: ${resposta}
        ${quantidade_input}=    quantas questões existem com input?
        ${temInput}=    run keyword and return status  Should be equal as integers    ${quantidade_input}    0
        ${quantidade_select}=    quantas questões existem com select?
        ${temSelect}=  Run keyword and return status  Should be equal as integers    ${quantidade_select}    0

        IF    not ${temInput}
            #teste questão de input   ${pergunta}   ${resposta}
            No operation
        END
        IF   not ${temSelect}
            Preenchimento da questão de select   ${pergunta}   ${resposta}
        END
                
    END
    Log to console   total de questões a responder: ${total_questoes}
Gerar patch para pergunta "${pergunta}"
    [Tags]     No_Test    Logica_test
    ${patch}=  //label[contains(.,'${pergunta}')]
    RETURN    ${patch}

Gerar patch para resposta "${resposta}"
    [Tags]     No_Test
    ${patch}=  //input[contains(.,'${resposta}')]
    ${auxiliar}=  Element Should Be Visible    locator=${patch}
    IF   '${auxiliar}' == 'True'
        Set Focus To Element    ${patch}
        Click Element    ${patch}     
    END
    RETURN    ${patch}





Validar se a questão existe na tela?
    [Documentation]   Valida se a questão está visível na tela.
     ...              Compara a pergunta vinda do dicionário com a pergunta exibida na tela.
    [Tags]    No_Test
    [Arguments]    ${perguntaDicionario}   ${PerguntaTela}
    ${Resultado}=  Should Contain    ${perguntaDicionario}    ${PerguntaTela}
    Return ${Resultado}

teste questão de input
    [Tags]    No_Test
    [Arguments]    ${pergunta}   ${resposta}
    ${xpath}=    Set Variable    //label[contains(text(),"${pergunta}")]/following-sibling::input
    Input Text   ${xpath}    ${resposta}
    Sleep    2s

Preenchimento da questão de select
    [Documentation]    Responsavel  pela preenchimento com Select  e Option
    [Tags]    Test
    [Arguments]    ${pergunta}   ${resposta}
    ${xpath}=  Set Variable    //span[@aria-hidden='true'][contains(normalize-space(.),'${pergunta}')]/following::select[1]
    #${xpath}=    Set Variable    //label[contains(text(),"${pergunta}")]/following-sibling::select
    Run Keyword And Ignore Error   Select From List By Label   ${xpath}    ${resposta}
    Sleep    1s

Não selecionar resposta obrigatória?
    [Tags]    No_Test
    [Arguments]    ${pergunta}
    ${msg_xpath}=    Set Variable    //span[contains(@class,"artdeco-inline-feedback__message")]
    ${texto}=        Get Text        ${msg_xpath}
    RETURN    Should Contain   ${texto}    Please make a selection
    

Não preencher resposta obrigatória?
    [Tags]    No_Test
    [Arguments]    ${pergunta}
    ${msg_xpath}=    Set Variable    //span[contains(@class,"artdeco-inline-feedback__message")]
    ${texto}=        Get Text        ${msg_xpath}
    ${resposta1}=     Should Contain   ${texto}    This field is required.
    ${resposta2}=     Should Contain   ${texto}    Enter a whole number between 0 and 99
    RETURN    ${resposta1} or ${resposta2}

quantas questões existem com input?
    [Documentation]    Retorna o total de questões presentes no formulário de candidatura que utilizam campos do tipo input.
     ...               Essa keyword localiza todos os elementos de label associados a campos input,
     ...               conta quantos foram encontrados e retorna esse número.
    [Tags]    Test
    ${questoes_xpath}=    Set Variable    //label[contains(@class,"artdeco-text-input--label")]
    ${questoes}=    Get WebElements    ${questoes_xpath}
    ${total}=    Get Length    ${questoes}
    # Log To Console    Total de questões com input: ${total}
    RETURN    ${total}

quantas questões existem com select?
    [Documentation]    Retorna o total de questões presentes no formulário de candidatura que utilizam campos do tipo select.
     ...               Essa keyword localiza todos os elementos de label associados a campos select,
     ...               conta quantos foram encontrados e retorna esse número.
    [Tags]    Test
    ${questoes_xpath}=    Set Variable    //label[contains(@class,"fb-dash-form-element__label")]
    ${questoes}=    Get WebElements    ${questoes_xpath}
    ${total}=    Get Length    ${questoes}
    # Log To Console    Total de questões com select: ${total}
    RETURN    ${total}

quantas questões existem?
    [Documentation]    Retorna o total de questões presentes no formulário de candidatura.
     ...                Soma o número de questões com campos de input e select.
    [Tags]    Test
    ${questoes_input}=   quantas questões existem com input?
    ${questoes_select}=  quantas questões existem com select?
    ${total}=    Evaluate    ${questoes_input} + ${questoes_select}
    Log To Console    Total de questões: ${total}
    RETURN    ${total}
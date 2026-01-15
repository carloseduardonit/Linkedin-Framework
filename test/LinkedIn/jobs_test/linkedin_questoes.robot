*** Settings ***
Library    RPA.Browser.Selenium
Resource    questionarios.robot
*** Variables ***
${pergunta}=   //label[contains(.,'Como esta sua expectativa de valor no CLT?')]
${input_resposta}=  //input[contains(@class,'error-field artdeco-text-input--input')]
${selecionar_resposta}=     //select[contains(@aria-describedby,'text-entity-list-form-component-formElement-urn-li-jobs-applyformcommon-easyApplyFormElement-4243028816-20049339042-multipleChoice-error')]


&{q06}    pergunta=Como ficou sabendo da nossa vaga?
...      resposta=LinkedIn
&{q07}    pergunta=Qual o seu nível de inglês?
...      resposta=Intermediário
&{q08}    pergunta=Você possui algum familiar (como pais, irmãos, sogros, cunhados, cônjuges, ou filhos, enteados, padrasto/madrasta, genro/ nora, amigo íntimo ou pessoa próxima (com quem você tem um relacionamento significativo e contínuo) que atualmente trabalha na CI&T?
...      resposta=Não
&{q09}    pergunta=Você possui alguma deficiência?
...      resposta=Não
&{q10}   pergunta=Qual sua pretensão salarial?
...      resposta=4000.00 
&{q10a}   pergunta=Pretensão salarial?
...      resposta=4000.00
&{q11}   pergunta=Você tem disponibilidade para trabalhar em horários flexíveis?
...      resposta=Sim
&{q12}   pergunta=Você possui alguma experiência anterior na área?
...      resposta=Não
&{q13}   pergunta=Você possui experiência em testes manuais?
...      resposta=Yes






@{questoes}     ${q00}    ${q01}    ${q02}    ${q03}       ${q06}    ${q07}    ${q08}    ${q09}    
...             ${q10}    ${q10a}    ${q11}    ${q12}       ${q13}    ${q14}    ${q15}    ${q16}    
...             
...             ${edu01}    ${edu02}
...             ${exp01}    ${exp02}   ${exp03}   ${exp04}    ${exp05}   ${exp06}   ${exp07}
...             ${con01}    ${con02}   ${con03}   ${con04}    ${con05}   ${con06}   ${con07}     ${con08}    ${con09}    ${con10}   
...             ${con11}
...             ${red01}    ${red01a}   ${red02}    ${red03}   ${red04}   ${red05}
...             ${loc01}    ${loc02}   ${loc03}    ${loc04}   ${loc05}    ${loc06}   ${loc07}
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
        ${temRespostaYes}=  Run keyword and return status    Should be equal as strings    ${resposta}    Yes
        ${temRespostaNo}=  Run keyword and return status    Should be equal as strings    ${resposta}    No
        IF    not ${temInput} and not ${temRespostaYes} and not ${temRespostaNo}
           Preenchimento da questão de input   ${pergunta}   ${resposta}
          # No operation
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

Preenchimento da questão de textarea
    [Documentation]    Responsavel  pela preenchimento com Text Area
     ...                Utiliza o xpath da pergunta para localizar o campo de resposta
    [Tags]    No_Test
    [Arguments]    ${pergunta}   ${resposta}
    ${xpath}=  Set Variable    //label[normalize-space()='${pergunta}']/following::textarea
    #${xpath}=    Set Variable    //label[contains(text(),"${pergunta}")]/following-sibling::textarea
    Run Keyword And Ignore Error  Input Text   ${xpath}    ${resposta}
    #Sleep    2s
Preenchimento da questão de input
    [Documentation]    Responsavel  pela preenchimento com Input Text
     ...                Utiliza o xpath da pergunta para localizar o campo de resposta
    [Tags]    No_Test
    [Arguments]    ${pergunta}   ${resposta}
    ${xpath}=  Set Variable    //label[normalize-space()='${pergunta}']/following::input
    #${xpath}=    Set Variable    //label[contains(text(),"${pergunta}")]/following-sibling::input
    Run Keyword And Ignore Error  Input Text   ${xpath}    ${resposta}
    #Sleep    2s

Preenchimento da questão de select
    [Documentation]    Responsavel  pela preenchimento com Select  e Option
    [Tags]    Test
    [Arguments]    ${pergunta}   ${resposta}
    ${xpath}=  Set Variable    //span[@aria-hidden='true'][contains(normalize-space(.),'${pergunta}')]/following::select[1]
    #${xpath}=    Set Variable    //label[contains(text(),"${pergunta}")]/following-sibling::select
    Run Keyword And Ignore Error   Select From List By Label   ${xpath}    ${resposta}
    #Sleep    1s

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
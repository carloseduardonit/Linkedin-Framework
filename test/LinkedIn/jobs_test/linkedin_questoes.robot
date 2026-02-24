*** Settings ***
Library    RPA.Browser.Selenium
Resource    questionarios_CONH.robot
Resource    questionarios_CONT.robot
Resource    questionarios_INFO.robot
Resource    questionarios_LOCA.robot
Resource    questionarios_REDE.robot
*** Variables ***
${pergunta}=   //label[contains(.,'Como esta sua expectativa de valor no CLT?')]
${input_resposta}=  //input[contains(@class,'error-field artdeco-text-input--input')]
${selecionar_resposta}=     //select[contains(@aria-describedby,'text-entity-list-form-component-formElement-urn-li-jobs-applyformcommon-easyApplyFormElement-4243028816-20049339042-multipleChoice-error')]


@{questoes}    
...    ${CONH000}    ${CONH001}    ${CONH002}    ${CONH003}    ${CONH004}    ${CONH005}    ${CONH006}    ${CONH007}    ${CONH008}     ${CONH009}
...    ${CONH010}    ${CONH011}    ${CONH012}    ${CONH013}    ${CONH014}    ${CONH015}    ${CONH016}    ${CONH017}    ${CONH018}         
...    ${REDE000}    ${REDE001}    ${REDE002}    ${REDE003}    ${REDE004}    ${REDE005}
...    ${REDE001A}
...    ${INFO000}   ${INFO001}    ${INFO002}    ${INFO003}    ${INFO004}    ${INFO005}    ${INFO006}    ${INFO007}    ${INFO008}    ${INFO009}
...    ${INFO010}   ${INFO011}    ${INFO012}    ${INFO013}    ${INFO014}    ${INFO015}    ${INFO016}    ${INFO017}    ${INFO018}    ${INFO019}
...    ${INFO014A}   ${INFO015A}   ${INFO016A}
...    ${INFO014B}   ${INFO015B}
...    ${INFO014C}
...    ${INFO020}    ${INFO021}   ${INFO022}     ${INFO023}    ${INFO024}    ${INFO025}    ${INFO026}    ${INFO027}    ${INFO028}    ${INFO029}
...    ${INFO021A}     ${INFO022A}     ${INFO023A}     ${INFO024A}    ${INFO025A}
...    ${INFO024B}
...    ${INFO030}    ${INFO031}    ${INFO032}    ${INFO033}    ${INFO034}    ${INFO035}    ${INFO036}    ${INFO037}    ${INFO038}    ${INFO039}
...    ${INFO040}    ${INFO041}    ${INFO042}    ${INFO043}
...    ${LOCA000}    ${LOCA001}    ${LOCA002}    ${LOCA003}   ${LOCA004}    ${LOCA005}    ${LOCA006}
...    ${LOCA005A}    ${LOCA005B}  
   
*** Keywords ***
Responder as questoes do formulario
    ${total_questoes}=    quantas questões existem?
    FOR    ${questao}    IN    @{questoes}
        ${pergunta}=    Set Variable    ${questao['pergunta']}
        ${resposta}=    Set Variable    ${questao['resposta']}
        Log to console   Pergunta: ${pergunta}  - Resposta: ${resposta}
        ${quantidade_input}=    quantas questões existem com input?
        ${NÃOtemInput}=    run keyword and return status  Should be equal as integers    ${quantidade_input}    0
        ${quantidade_select}=    quantas questões existem com select?
        ${NÃOtemSelect}=  Run keyword and return status  Should be equal as integers    ${quantidade_select}    0
        ${temRespostaYes}=  Run keyword and return status    Should be equal as strings    ${resposta}    Yes
        ${temRespostaNo}=  Run keyword and return status    Should be equal as strings    ${resposta}    No
        IF    ${NÃOtemInput} and ${NÃOtemSelect}
            BREAK
        END
        IF    not ${NÃOtemInput} and not ${temRespostaYes} and not ${temRespostaNo}
           Preenchimento da questão de input   ${pergunta}   ${resposta}
          # No operation
        END
        IF   not ${NÃOtemSelect}
            Preenchimento da questão de select   ${pergunta}   ${resposta}
        END

        IF   True
            Preenchimento da questão de Radio Button    ${pergunta}    ${resposta}
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

Preenchimento da questão de Radio Button
    [Documentation]
    [Tags]    No_Test
    [Arguments]    ${pergunta}   ${resposta}
    ${xpath}=   Set variable   (//span[@aria-hidden='true'][contains(text(),'${pergunta}')]/following)[1]
    ${option_xpath}=   Set variable   .//label[contains(normalize-space(.),'${resposta}')]
    ${full_xpath}=   Set variable   ${xpath}${option_xpath}
    Run Keyword And Ignore Error   Click Element   ${full_xpath}
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
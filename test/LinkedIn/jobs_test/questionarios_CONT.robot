*** Settings ***
Resource    questionarios.robot
*** Variables ***
${AREA}=     Set Variable    ${areas}[0]
${PRE}=      Set Variable    ${pres}[0]
# Questões  de Contabilidade [PT-BR]

&{CONT000}    ID=${PRE}-000
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você tem experiência com o sistema Domínio?
...       resposta=Não

&{CONT001}    ID=${PRE}-001
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Está disponível para trabalhar presencialmente, de segunda a sexta, das 08h00 às 17h30?
...       resposta=No

&{CONT002}    ID=${PRE}-002
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Já realizou escrituração contábil na prática?
...       resposta=No

&{CONT003}    ID=${PRE}-003
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Já executou conciliações contábeis mensais?
...       resposta=No

&{CONT004}    ID=${PRE}-004
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Possui conhecimento em Balanço Patrimonial, Balancete e DRE ?
...       resposta=Yes

&{CONT005}    ID=${PRE}-005
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você já trabalhou em escritório contábil?
...       resposta=Yes

&{CONT006}    ID=${PRE}-006
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Tem experiência com registros e lançamentos contábeis?
...       resposta=No

&{CONT007}    ID=${PRE}-007
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Já participou de fechamento contábil ?
...       resposta=No

&{CONT008}    ID=${PRE}-008
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Já utilizou algum sistema contábil no dia a dia?
...       resposta=Yes

&{CONT009}  ID=${PRE}-009
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Está cursando Ciências Contábeis?
...       resposta=Yes

&{CONT010}  ID=${PRE}-010
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Tem experiência em escritório de contabilidade?
...       resposta=Yes

&{CONT011}  ID=${PRE}-011
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Tem disponibilidade para trabalhar presencialmente?
...       resposta=No

&{CONT012}  ID=${PRE}-012
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Já trabalhou em escritório de contabilidade?
...       resposta=Yes

&{CONT013}  ID=${PRE}-013
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Vc tem conhecimento no sistema Domínio?
...       resposta=No
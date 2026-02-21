*** Settings ***
Resource    questionarios.robot
*** Variables ***
${AREA}=     Set Variable    ${areas}[3]
${PRE}=      Set Variable    ${pres}[3]

&{REDE000}  ID=${PRE}-000
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=MODELO
...       resposta=MOODELO

&{REDE001}  ID=${PRE}-001
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Linkedin
...       resposta=https://www.linkedin.com/in/carlos-eduardo-dos-s-figueiredo/

&{REDE001A}  ID=${PRE}-001A
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=LinkedIn
...       resposta=${REDE001['resposta']}

&{REDE002}  ID=${PRE}-002
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Github
...       resposta=https://github.com/carloseduardonit

&{REDE003}  ID=${PRE}-003
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Salesforce
...       resposta=https://www.salesforce.com/trailblazer/cdossantosfigueiredo

&{REDE004}  ID=${PRE}-004
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Telegran
...       resposta=https://t.me/Carlaol

&{REDE005}  ID=${PRE}-005
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=E-mail
...       resposta=carlostecnicowl+robot@gmail.com
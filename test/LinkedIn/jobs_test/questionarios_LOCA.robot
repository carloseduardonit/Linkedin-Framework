*** Settings ***
Resource    questionarios.robot
*** Variables ***
${AREA}=     Set Variable    ${areas}[1]
${PRE}=      Set Variable    ${pres}[1]
#  Questões de Localidade [PT-BR]
&{LOCA000}  ID=${PRE}-000
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=MODELO
...       resposta=No 

&{LOCA001}  ID=${PRE}-001
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Possui disponibilidade para atuação Presencial em Recife-PE?
...       resposta=No

&{LOCA002}  ID=${PRE}-002
...       area=${AREA}
...       tipo=${tipos}[3]  
...       pergunta=Você reside a cidade de São Paulo?
...       resposta=No

&{LOCA003}  ID=${PRE}-003
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Aceita atuar de forma híbrida - presencial 3x na semana, na Vila Olímpia - São Paulo - SP?
...       resposta=No

&{LOCA004}  ID=${PRE}-004
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui disponibilidade para atuação presencial em Maringá/ PR? Requisito e indispensável
...       resposta=No

&{LOCA005}  ID=${PRE}-005
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=What is your current location?
...       resposta=São Gonçalo, Rio de Janeiro, Brazil

&{LOCA005A}  ID=${PRE}-005A
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Please confirm City, State and Country where you are currently living?
...       resposta= ${LOCA005['resposta']}

&{LOCA005B}  ID=${PRE}-005B
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Location (city)
...       resposta= ${LOCA005['resposta']}

&{LOCA006}  ID=${PRE}-006
...    area=${AREA}
...    tipo=${tipos}[3]
...    pergunta=Esta posição é destinada a pessoas localizadas na América Central ou América do Sul, preferencialmente México ou Brasil. Você está localizado em um desses países?
...    resposta=Sim
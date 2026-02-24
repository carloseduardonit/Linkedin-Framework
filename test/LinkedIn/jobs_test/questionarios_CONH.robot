*** Settings ***
Resource    questionarios.robot
*** Variables ***
${AREA}=     Set Variable    ${areas}[2]
${PRE}=      Set Variable    ${pres}[2]

&{CONH000}    ID=${PRE}-000
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Estuda Ciências Contábeis?
...       resposta=Yes

&{CONH001}    ID=${PRE}-001
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui conhecimento de metodologias ágeis (Scrum, Kanban)?
...       resposta=Yes

&{CONH002}    ID=${PRE}-002
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui experiência com ferramentas de gerenciamento de testes?
...       resposta=Yes

&{CONH003}    ID=${PRE}-003
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui familiaridade com banco de dados e execução de queries (SQL)?
...       resposta=Yes

&{CONH004}    ID=${PRE}-004
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui conhecimento em Java (diferencial)?
...       resposta=Yes  

&{CONH005}    ID=${PRE}-005
...       area=${AREA}
...       tipo=${tipos}[3]
...        pergunta=Você possui conhecimento em React e Angular?
...       resposta=No

&{CONH006}    ID=${PRE}-006
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui conhecimento em automação de testes com Selenium WebDriver?
...       resposta=Yes

&{CONH007}    ID=${PRE}-007
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui conhecimento em automação de testes com Cypress?
...       resposta=Yes

&{CONH008}    ID=${PRE}-008
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui conhecimento em automação de testes com Cucumber?
...       resposta=Yes

&{CONH009}    ID=${PRE}-009
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui conhecimento em automação de testes com JUnit/TestNG?
...       resposta=No

&{CONH010}    ID=${PRE}-010
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui conhecimento em automação de testes com Postman?
...       resposta=Yes

&{CONH011}    ID=${PRE}-011
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui conhecimento em automação de testes
...       resposta=Yes

&{CONH012}    ID=${PRE}-012
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui conhecimento em automação de testes com Robot Framework?
...       resposta=Yes

&{CONH013}    ID=${PRE}-013
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui conhecimento em automação de testes com Appium?
...       resposta=No

&{CONH014}    ID=${PRE}-014
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui formação superior em andamento em Engenharia de Computação, Engenharia de Dados, Ciência de Dados, Análise de Sistemas ou áreas correlatas?
...       resposta=Yes

&{CONH015}    ID=${PRE}-015
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Possui conhecimento em ferramentas de automação e RPA como n8n ou Automate? ( diferencial, não iliminatório)
...       resposta=No

&{CONH016}    ID=${PRE}-016
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui conhecimento em automação de testes com Katalon?
...       resposta=No

&{CONH017}    ID=${PRE}-017
...    area=${AREA}
...    tipo=${tipos}[3]
...    pergunta=Você possui inglês fluente?
...    resposta=No

&{CONH018}    ID=${PRE}-018
...    area=${AREA}
...    tipo=${tipos}[3]
...    pergunta=Possui ensino superior completo em tecnologia?
...    resposta=Yes
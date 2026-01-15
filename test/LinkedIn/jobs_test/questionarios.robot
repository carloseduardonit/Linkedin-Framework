*** Settings ***
*** Variables ***

&{q00}    pergunta=modelo
...       resposta=Modelo de Resposta

# Questões  de redes sociais [PT-BR]

&{red01}    pergunta=Linkedin
...      resposta=https://www.linkedin.com/in/carlos-eduardo-dos-s-figueiredo/
&{red01a}  pergunta=LinkedIn
...       resposta=${red01['resposta']}
&{red02}    pergunta=Github
...      resposta=https://github.com/carloseduardonit
&{red03}    pergunta=Salesforce
...      resposta=https://www.salesforce.com/trailblazer/cdossantosfigueiredo
&{red04}    pergunta=Telegran
...      resposta=https://t.me/Carlaol
&{red05}  pergunta=E-mail
...       resposta=carlostecnicowl+robot@gmail.com

# Questões  de Educação [PT-BR]
&{edu01}    pergunta=Você possui inglês fluente?
...       resposta=No
&{edu02}    pergunta=Possui ensino superior completo em tecnologia?
...       resposta=Yes

# Questões  de Experiencia [PT-BR]

&{exp01}    pergunta=Você possui experiência em testes automatizados?
...       resposta=No 
&{exp02}    pergunta=Quantos anos de experiência com QA você tem?
...       resposta= 2
&{exp03}        pergunta=Current company
...       resposta= BRQ Solutions
&{exp04}    pergunta=Confirm the name of the company where you work/ Confirme o nome da empresa em que você trabalha atualmente
...       resposta= ${exp03['resposta']}
&{exp05}    pergunta=Possui disponibilidade para contrato temporário?
...       resposta=No
&{exp06}    pergunta=Há quantos anos você já usa JIRA no trabalho?
...       resposta=2
&{exp07}    pergunta=Possui experiência na realização de testes de performance?
...       resposta=No

# Questões  de Conhecimento [PT-BR]

&{con01}    pergunta=Você possui conhecimento de metodologias ágeis (Scrum, Kanban)?
...       resposta=Yes
&{con02}    pergunta=Você possui experiência com ferramentas de gerenciamento de testes?
...       resposta=Yes
&{con03}    pergunta=Você possui familiaridade com banco de dados e execução de queries (SQL)?
...       resposta=Yes
&{con04}    pergunta=Você possui conhecimento em Java (diferencial)?
...       resposta=Yes  
&{con05}    pergunta=Você possui conhecimento em React e Angular?
...       resposta=No
&{con06}    pergunta=Você possui conhecimento em automação de testes com Selenium WebDriver?
...       resposta=Yes
&{con07}    pergunta=Você possui conhecimento em automação de testes com Cypress?
...           resposta=Yes
&{con08}    pergunta=Você possui conhecimento em automação de testes com Cucumber?
...       resposta=Yes
&{con09}    pergunta=Você possui conhecimento em automação de testes com JUnit/TestNG?
...       resposta=No
&{con10}    pergunta=Você possui conhecimento em automação de testes com Postman
...       resposta=Yes
&{con11}    pergunta=Você possui conhecimento em automação de testes
...       resposta=Yes

# Questões de Localidade [PT-BR]

&{loc01}  pergunta=Possui disponibilidade para atuação Presencial em Recife-PE?
...       resposta=No
&{loc02}  pergunta=Você reside a cidade de São Paulo?
...       resposta=No
&{loc03}  pergunta=Aceita atuar de forma híbrida - presencial 3x na semana, na Vila Olímpia - São Paulo - SP?
...       resposta=No
&{loc04}    pergunta=Você possui disponibilidade para atuação presencial em Maringá/ PR? Requisito obrigatório e indispensável
...       resposta=No
&{loc05}    pergunta=What is your current location?
...       resposta=São Gonçalo, Rio de Janeiro, Brazil
&{loc06}     pergunta=Please confirm City, State and Country where you are currently living?
...       resposta= ${loc05['resposta']}
&{loc07}     pergunta=Location (city)
...       resposta= ${loc05['resposta']}

# Questões  de Experiencia [EN-US]

&{q01}    pergunta=For how long have you worked as a Tester?     
...       resposta=I have worked as a QA Manual Engineer for 2 years, focusing on manual testing, mobile testing, and accessibility (AX). During this time, I also gained experience using tools like Zephyr and Jira, and I'm currently deepening my knowledge in API testing and test automation with frameworks like Robot.
&{q02}    pergunta=For how long have you worked with Automation testing?    
...      resposta=I'm currently gaining experience with automation testing. I've been studying and applying it in personal and training projects using the Robot Framework, focusing on semi-automated testing. While my main background is in manual testing, I'm actively expanding into automation to strengthen my QA skills.
&{q03}    pergunta=With which QA Automation tools have you worked? Ex. Selenium, Cypress, Cucumber, etc    
...      resposta=I have worked with the Robot Framework for semi-automated testing, using it mainly in training and personal projects. While I haven't used tools like Selenium or Cypress professionally yet, I have studied their concepts and I'm gradually expanding my knowledge to include these tools as part of my transition into automation testing.
&{q14}        pergunta=[EN] What is your level of confidence when communicating and collaborating in an English-speaking work environment?
...       resposta=Intermediate I. Example: I can participate in meetings, but I partially understand what has been said.
&{q15}        pergunta=[ES] What is your level of confidence when communicating and collaborating in an Spanish-speaking work environment?
...       resposta= ${q14['resposta']}
&{q16}      pergunta=How comfortable do you feel working in an English-speaking environment?
...        resposta=have an intermediate level of English. I am comfortable reading and understanding technical documentation and written communication. In an English-speaking work environment, I can follow meetings, especially on technical topics, but I am still developing my spoken fluency. I am actively working on improving my English to communicate more confidently and effectively.
&{q17}      pergunta=What is your level of proficiency in English?
...        resposta=None
&{q18}      pergunta=How many years of Quality Assurance experience do you currently have?
...        resposta=2
&{q19}      pergunta=This position is for individuals located within the central and south america country locations, preferably Mexico or Brazil. Are you located in one of these countries?
...        resposta=Yes

# Questões  de Conhecimento [EN-US]

# Questões de Localidade [EN-US]

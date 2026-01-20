*** Settings ***
*** Variables ***

&{q00}    ID=questionario_carlao
...       Area= Contabilidade
...       pergunta=modelo
...       resposta=Modelo de Resposta
&{q20}    pergunta=Cover letter
...       resposta=Dear Hiring Manager, I am writing to express my interest in the Quality Assurance position at your company. I am a QA professional with solid experience in manual testing, system integrations, and structured test execution, combined with a strong background in Salesforce and enterprise systems.Over the past years, I have worked as a QA Manual Engineer, participating in projects that required detailed test planning, execution of functional and regression tests, defect tracking, and close collaboration with developers and business stakeholders. I have hands-on experience with tools such as Jira and Zephyr, and I am continuously evolving my skills in test automation using frameworks such as Robot Framework, Cypress, and Selenium.My experience with the Salesforce ecosystem is a key differentiator. I hold Salesforce certifications, including Salesforce Certified Associate and AI Associate, and I have worked with standard and custom objects, validations, flows, and integrations. This allows me to understand business rules deeply and validate complex scenarios with accuracy and attention to detail.In addition to my technical background, I bring strong analytical skills developed through my education in Systems Analysis and Development and my ongoing degree in Accounting. This multidisciplinary profile enables me to approach testing with a critical mindset, ensuring data consistency, process compliance, and high product quality. I am motivated, disciplined, and committed to continuous learning. I value clear communication, collaboration, and knowledge sharing, and I am confident that I can contribute positively to your QA team and overall product quality.Thank you for your time and consideration. I would welcome the opportunity to discuss how my experience and skills can add value to your organization.

&{q21}    pergunta=Ao selecionar a opção abaixo, declaro que li, compreendi e concordo com os termos deste documento, e consinto com o tratamento dos meus dados pessoais pela CI&T e pela Lever para as finalidades aqui descritas. Leia o documento aqui: https://drive.google.com/file/d/1s_ChFr9NEf28YQLBJWTRY6-nLhYvG1Rm/view
...         resposta=Li e aceito os termos deste consentimento para tratamento dos meus dados pessoais pela CI&T

&{q22}    pergunta=Qual seu tempo de experiência como QA e quais são suas principais stacks de atuação? *
...       resposta=Tenho aproximadamente 2 anos de experiência como QA, atuando principalmente com testes manuais em projetos corporativos. Principais stacks e áreas de atuação: Testes manuais: criação e execução de casos de teste, testes funcionais, regressão, integração e homologação. Ferramentas de gestão: Jira e Zephyr (planejamento, execução e evidências de testes). Plataformas: Salesforce (CRM), com foco em validação de regras de negócio, fluxos, objetos padrão e customizados. Automação (em evolução): Robot Framework, com contato também com Cypress e Selenium. Banco de dados: noções de SQL para validação de dados. Outros contextos: testes em sistemas ERP (Microsoft Dynamics AX) e aplicações mobile. [PT-BR]

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
&{exp08}    pergunta=Há quantos anos você já usa Python no trabalho?
...       resposta=0
&{exp09}      pergunta=Há quantos anos você já usa Kotlin no trabalho?
...       resposta=0
&{exp10}      pergunta=Há quantos anos você já usa Java no trabalho?
...       resposta=0
&{exp11}      pergunta=Há quantos anos você já usa Amazon S3 no trabalho?
...       resposta=0
&{exp08a}      pergunta=Há quanto tempo de experiência em Python?
...       resposta=0
&{exp12}       pergunta=Qual foi o seu último/atual salário?
...       resposta=3825.00
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
&{con12}    pergunta=Você possui conhecimento em automação de testes com Robot Framework?
...       resposta=Yes
&{con13}    pergunta=Você possui conhecimento em automação de testes com Appium?
...       resposta=No
&{con14}    pergunta=Você possui formação superior em andamento em Engenharia de Computação, Engenharia de Dados, Ciência de Dados, Análise de Sistemas ou áreas correlatas?
...       resposta=Yes
&{con15}    pergunta=Possui conhecimento em ferramentas de automação e RPA como n8n ou Automate? ( diferencial, não iliminatório)
...       resposta=No
&{con16}    pergunta=Você possui conhecimento em automação de testes com Katalon?
...       resposta=No
&{con17}    pergunta=Está disponível para trabalhar presencialmente, de segunda a sexta, das 08h00 às 17h30?
...       resposta=No
&{con18}    pergunta=Já realizou escrituração contábil na prática?
...       resposta=No
&{con19}    pergunta=Já executou conciliações contábeis mensais?
...       resposta=No
&{con20}  pergunta=Possui conhecimento em Balanço Patrimonial, Balancete e DRE ?
...       resposta=Yes
&{con21}  pergunta=Você já trabalhou em escritório contábil?
...       resposta=Yes
&{con22}  pergunta=Tem experiência com registros e lançamentos contábeis?
...       resposta=No
&{con23}  pergunta=Já participou de fechamento contábil ?
...       resposta=No
&{con24}  pergunta=Já utilizou algum sistema contábil no dia a dia?
...       resposta=Yes
&{con24}  pergunta=Está cursando Ciências Contábeis?Está cursando Ciências Contábeis?
...       resposta=Yes
&{con24}  pergunta=Tem experiência em escritório de contabilidade?
...       resposta=Yes
&{con24}  pergunta=Tem disponibilidade para trabalhar presencialmente?
...       resposta=No
&{con25}  pergunta=Já trabalhou em escritório de contabilidade?
...       resposta=Yes
&{con26}  pergunta=Vc tem conhecimento no sistema Domínio?
...       resposta=No
# Questões de Localidade [PT-BR]

&{loc01}  pergunta=Possui disponibilidade para atuação Presencial em Recife-PE?
...       resposta=No
&{loc02}  pergunta=Você reside a cidade de São Paulo?
...       resposta=No
&{loc03}  pergunta=Aceita atuar de forma híbrida - presencial 3x na semana, na Vila Olímpia - São Paulo - SP?
...       resposta=No
&{loc04}  pergunta=Você possui disponibilidade para atuação presencial em Maringá/ PR? Requisito e indispensável
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

*** Settings ***
Resource    questionarios.robot
*** Variables ***
${AREA}=     Set Variable    ${areas}[1]
${PRE}=      Set Variable    ${pres}[1]
# Questões  de Experiencia de Informatica [PT-BR]
&{INFO000}  ID=${PRE}-000
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=MODELO
...       resposta=No 

&{INFO001}     ID=${PRE}-001
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui experiência em testes automatizados?
...       resposta=No 

&{INFO002}     ID=${PRE}-002
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Quantos anos de experiência com QA você tem?
...       resposta= 2

&{INFO003}     ID=${PRE}-003
...       area=${AREA}
...       tipo=${tipos}[0]
...       pergunta=Current company
...       resposta= BRQ Solutions

&{INFO004}    ID=${PRE}-004
...       area=${AREA}
...       tipo=${tipos}[0]
...       pergunta=Confirm the name of the company where you work/ Confirme o nome da empresa em que você trabalha atualmente
...       resposta= ${INFO003['resposta']}

&{INFO005}    ID=${PRE}-005
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Possui disponibilidade para contrato temporário?
...       resposta=No

&{INFO006}     ID=${PRE}-006
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Há quantos anos você já usa JIRA no trabalho?
...       resposta=2

&{INFO007}    ID=${PRE}-007
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Possui experiência na realização de testes de performance?
...       resposta=No

&{INFO008}    ID=${PRE}-008
...       area=${AREA}
...       tipo=${tipos}[2]    
...       pergunta=Há quantos anos você já usa Python no trabalho?
...       resposta=0

&{INFO009}    ID=${PRE}-009
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Há quantos anos você já usa Kotlin no trabalho?
...       resposta=0

&{INFO010}    ID=${PRE}-010
...       area=${AREA}
...       tipo=${tipos}[2]  
...       pergunta=Há quantos anos você já usa Java no trabalho?
...       resposta=0

&{INFO011}    ID=${PRE}-011
...       area=${AREA}
...       tipo=${tipos}[2]  
...       pergunta=Há quantos anos você já usa Amazon S3 no trabalho?
...       resposta=0

&{INFO012}    ID=${PRE}-012
...       area=${AREA}
...       tipo=${tipos}[2]  
...       pergunta=Há quanto tempo de experiência em Python?
...       resposta=0

&{INFO013}    ID=${PRE}-013
...       area=${AREA}
...       tipo=${tipos}[2] 
...       pergunta=Qual foi o seu último/atual salário?
...       resposta=3825.00

&{INFO014}   ID=${PRE}-014
...       area=${AREA}
...       tipo=${tipos}[2] 
...    pergunta=Qual sua pretensão salarial?
...      resposta=4000.00 

&{INFO014A}   ID=${PRE}-014A
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Pretensão salarial?
...      resposta=${INFO014['resposta']}

&{INFO014B}   ID=${PRE}-014B
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Qual seria sua pretensão salarial para uma vaga CLT? Só contratamos nessa modalidade. 
...       resposta=${INFO014['resposta']}

&{INFO014C}   ID=${PRE}-014C
...    area=${AREA}
...    tipo=${tipos}[0]
...    pergunta=What is your monthly expectation (specify currency)?
...    resposta=My salary expectation is around 4000 BRL per month, considering my experience as a QA Manual Engineer and my ongoing development in test automation. I am open to discussion based on the overall compensation package and growth opportunities within the company.

&{INFO015}   ID=${PRE}-015
...    area=${AREA}
...    tipo=${tipos}[0]
...    pergunta=For how long have you worked as a Tester?
...    resposta=I have worked as a QA Manual Engineer for 2 years, focusing on manual testing, mobile testing, and accessibility (AX). During this time, I also gained experience using tools like Zephyr and Jira, and I am currently deepening my knowledge in API testing and test automation with frameworks like Robot Framework.

&{INFO015A}   ID=${PRE}-015A
...    area=${AREA}
...    tipo=${tipos}[0]
...    pergunta=Por quanto tempo você trabalhou como Tester?
...    resposta=Trabalhei como QA Manual Engineer por 2 anos, com foco em testes manuais, testes mobile e acessibilidade (AX). Nesse período, também adquiri experiência utilizando ferramentas como Zephyr e Jira, e atualmente estou aprofundando meus conhecimentos em testes de API e automação de testes com frameworks como Robot Framework.

&{INFO015B}    ID=${PRE}-015B
...    area=${AREA}
...    tipo=${tipos}[0]
...    pergunta=Qual seu tempo de experiência como QA e quais são suas principais stacks de atuação?
...    resposta=Tenho aproximadamente 2 anos de experiência como QA, atuando principalmente com testes manuais em projetos corporativos. Principais stacks e áreas de atuação incluem: testes manuais (criação e execução de casos de teste, testes funcionais, regressão, integração e homologação), ferramentas de gestão como Jira e Zephyr, plataforma Salesforce (CRM) com foco em validação de regras de negócio, fluxos e objetos padrão e customizados, automação em evolução com Robot Framework e contato com Cypress e Selenium, noções de SQL para validação de dados, além de experiência em testes em ERP Microsoft Dynamics AX e aplicações mobile.

&{INFO016}   ID=${PRE}-016
...       area=${AREA}
...       tipo=${tipos}[2]
...       pergunta=Você tem disponibilidade para trabalhar em horários flexíveis?
...      resposta=Sim

&{INFO017}   ID=${PRE}-017
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui alguma experiência anterior na área?
...      resposta=Não

&{INFO018}   ID=${PRE}-018
...       area=${AREA}
...       tipo=${tipos}[3]
...       pergunta=Você possui experiência em testes manuais?
...      resposta=Yes


&{INFO019}   ID=${PRE}-019
...    area=${AREA}
...    tipo=${tipos}[1]
...    pergunta=For how long have you worked with Automation testing?
...    resposta=I am currently gaining experience with automation testing through personal and training projects using Robot Framework, focusing on semi-automated testing. While my main background is in manual testing, I am actively expanding into automation to strengthen my QA skills.

&{INFO020}   ID=${PRE}-020
...    area=${AREA}
...    tipo=${tipos}[1]
...    pergunta=With which QA Automation tools have you worked? Ex. Selenium, Cypress, Cucumber, etc
...    resposta=I have worked with Robot Framework for semi-automated testing, mainly in training and personal projects. Although I have not yet used Selenium or Cypress professionally, I have studied their concepts and I am gradually expanding my knowledge as part of my transition into automation testing.

&{INFO021}
...    ID=${PRE}-021
...    area=${AREA}
...    tipo=${tipos}[2]
...    pergunta=[EN] What is your level of confidence when communicating and collaborating in an English-speaking work environment?
...    resposta=Intermediate. I can participate in meetings and understand most technical discussions, although I am still improving my spoken fluency.

&{INFO022}
...    ID=${PRE}-022
...    area=${AREA}
...    tipo=${tipos}[2]
...    pergunta=[ES] What is your level of confidence when communicating and collaborating in a Spanish-speaking work environment?
...    resposta=${Q14['resposta']}

&{INFO023}
...    ID=${PRE}-023
...    area=${AREA}
...    tipo=${tipos}[2]
...    pergunta=How comfortable do you feel working in an English-speaking environment?
...    resposta=I have an intermediate level of English. I am comfortable reading and understanding technical documentation and written communication. I can follow meetings, especially technical discussions, and I am actively improving my spoken fluency.

&{Q17}
...    ID=${PRE}-017
...    area=${AREA}
...    tipo=${tipos}[2]
...    pergunta=What is your level of proficiency in English?
...    resposta=Intermediate (B1 - Working proficiency)

&{Q17}
...    ID=${PRE}-017
...    area=${AREA}
...    tipo=${tipos}[2]
...    pergunta=What is your level of proficiency in English?
...    resposta=None

&{Q17}
...    ID=${PRE}-017
...    area=${AREA}
...    tipo=${tipos}[2]
...    pergunta=Qual é o seu nível de proficiência em inglês?
...    resposta=Intermediário (B1 - Proficiência profissional em desenvolvimento)

&{Q18}
...    ID=${PRE}-018
...    area=${AREA}
...    tipo=${tipos}[0]
...    pergunta=How many years of Quality Assurance experience do you currently have?
...    resposta=2

&{Q19}
...    ID=${PRE}-019
...    area=${AREA}
...    tipo=${tipos}[3]
...    pergunta=This position is for individuals located within Central and South America, preferably Mexico or Brazil. Are you located in one of these countries?
...    resposta=Yes


&{INFO016A}   ID=${PRE}-016A
...    area=${AREA}
...    tipo=${tipos}[1]
...    pergunta=Por quanto tempo você trabalhou com testes de automação?
...    resposta=Atualmente estou adquirindo experiência em testes de automação por meio de projetos pessoais e treinamentos utilizando Robot Framework, com foco em testes semiautomatizados. Embora minha principal experiência seja em testes manuais, estou expandindo ativamente minhas habilidades em automação para fortalecer minha atuação em QA.

&{INFO016A}   ID=${PRE}-016A
...    ID=${PRE}-003
...    area=${AREA}
...    tipo=${tipos}[1]
...    pergunta=Com quais ferramentas de automação de QA você já trabalhou? Ex: Selenium, Cypress, Cucumber, etc.
...    resposta=Tenho experiência com Robot Framework em projetos pessoais e de estudo para testes semiautomatizados. Embora ainda não tenha utilizado Selenium ou Cypress profissionalmente, estudei seus conceitos e estou expandindo gradualmente meu conhecimento como parte da minha transição para automação de testes.

&{Q14}
...    ID=${PRE}-014
...    area=${AREA}
...    tipo=${tipos}[2]
...    pergunta=[EN] Qual é o seu nível de confiança ao se comunicar e colaborar em um ambiente de trabalho em inglês?
...    resposta=Intermediário. Consigo participar de reuniões e compreender a maioria das discussões técnicas, embora ainda esteja aprimorando minha fluência na fala.

&{Q15}
...    ID=${PRE}-015
...    area=${AREA}
...    tipo=${tipos}[2]
...    pergunta=[ES] Qual é o seu nível de confiança ao se comunicar e colaborar em um ambiente de trabalho em espanhol?
...    resposta=${Q14['resposta']}

&{Q16}
...    ID=${PRE}-016
...    area=${AREA}
...    tipo=${tipos}[2]
...    pergunta=Quão confortável você se sente trabalhando em um ambiente de língua inglesa?
...    resposta=Possuo nível intermediário de inglês. Tenho facilidade para ler e compreender documentação técnica e comunicação escrita. Consigo acompanhar reuniões, especialmente discussões técnicas, e estou trabalhando ativamente para melhorar minha fluência na comunicação oral.



&{Q18}
...    ID=${PRE}-018
...    area=${AREA}
...    tipo=${tipos}[0]
...    pergunta=Quantos anos de experiência em Quality Assurance você possui atualmente?
...    resposta=2



&{Q20}
...    ID=${PRE}-020
...    area=${AREA}
...    tipo=${tipos}[0]
...    pergunta=Carta de apresentação (Cover Letter)
...    resposta=Dear Hiring Manager, I am writing to express my interest in the Quality Assurance position at your company. I am a QA professional with solid experience in manual testing, system integrations, and structured test execution, combined with a strong background in Salesforce and enterprise systems. Over the past years, I have worked as a QA Manual Engineer, participating in projects that required detailed test planning, execution of functional and regression tests, defect tracking, and close collaboration with developers and business stakeholders. I have hands-on experience with tools such as Jira and Zephyr, and I am continuously evolving my skills in test automation using frameworks such as Robot Framework, Cypress, and Selenium. My experience with the Salesforce ecosystem is a key differentiator. I hold Salesforce certifications, including Salesforce Certified Associate and AI Associate, and I have worked with standard and custom objects, validations, flows, and integrations. This allows me to deeply understand business rules and validate complex scenarios with accuracy and attention to detail. In addition to my technical background, I bring strong analytical skills developed through my education in Systems Analysis and Development and my ongoing degree in Accounting. This multidisciplinary profile enables me to approach testing with a critical mindset, ensuring data consistency, process compliance, and high product quality. I am motivated, disciplined, and committed to continuous learning. I value clear communication, collaboration, and knowledge sharing, and I am confident that I can contribute positively to your QA team and overall product quality. Thank you for your time and consideration. I would welcome the opportunity to discuss how my experience and skills can add value to your organization.

&{Q21}
...    ID=${PRE}-021
...    area=${AREA}
...    tipo=${tipos}[3]
...    pergunta=Declaro que li, compreendi e concordo com os termos do consentimento para tratamento de dados pessoais.
...    resposta=Li e aceito os termos deste consentimento para tratamento dos meus dados pessoais pela CI&T.



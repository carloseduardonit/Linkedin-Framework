# 🤖 LinkedIn Framework
![.Env](https://img.shields.io/badge/.ENV-ECD53F.svg?style=for-the-badge&logo=dotenv&logoColor=black)
![Robot](https://img.shields.io/badge/Robot%20Framework-000000.svg?style=for-the-badge&logo=Robot-Framework&logoColor=white)
[![GitHub](https://img.shields.io/badge/GitHub-181717.svg?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/carloseduardonit/Robot/tree/main)
![GitHub-Copilot](https://img.shields.io/badge/GitHub%20Copilot-000000.svg?style=for-the-badge&logo=GitHub-Copilot&logoColor=white)
![GitIgnore](https://img.shields.io/badge/gitignore.io-204ECF.svg?style=for-the-badge&logo=gitignoredotio&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB.svg?style=for-the-badge&logo=Python&logoColor=white)
![Markdown](https://img.shields.io/badge/Markdown-000000.svg?style=for-the-badge&logo=Markdown&logoColor=white)

---
## Sobre o Projeto

Automação inteligente para **login e candidaturas no LinkedIn**, desenvolvida com o poder do **Robot Framework**.  
Este projeto foi criado com foco em **testes de automação, produtividade e aprendizado prático**, servindo também como um exemplo real de aplicação profissional do Robot Framework em cenários web.

---
## 🚀 Objetivo do Projeto

O **LinkedIn Framework** tem como principal objetivo **automatizar o processo de login e envio de candidaturas no LinkedIn**, reduzindo o tempo gasto em tarefas repetitivas e melhorando a eficiência nas buscas por oportunidades.

Com ele, é possível:
- Realizar **login automático** na plataforma;
- Pesquisar **vagas por palavra-chave e localização**;
- Aplicar automaticamente em oportunidades compatíveis;
- Registrar **logs detalhados** das execuções e resultados;
- Servir como base para **testes web** utilizando boas práticas de QA.

---
## 🧠 Tecnologias e Ferramentas Utilizadas

| Tecnologia | Descrição |
|-------------|------------|
| 🐍 **Robot Framework** | Framework principal de automação e testes. |
| 🌐 **SeleniumLibrary** | Interação com elementos da interface web. |
| 📄 **Python 3.x** | Linguagem base do Robot Framework. |
| 🧰 **ChromeDriver / GeckoDriver** | Drivers para automação do navegador. |
| 🧪 **Robot Framework Browser / BuiltIn Libraries** | Extensões para controle avançado e logs. |

---
## 🗂️ Estrutura do Projeto
```
📦 Linkedin-Framework/
|
├── 📂 .git/
├── 📂 resources/
│   ├── 📄 dependencies.txt # Lista de dependências e bibliotecas necessárias
│   └── 📄 keywords_linkedin.robot # Keywords personalizadas para login e candidatura
│
├── 📂 test/
│   ├── 📂 Gupy/
│   │   └── 📄 linkedin_candidatura_gupy.robot # Teste de candidatura automática para a plataforma Gupy
│   └── 📂 LinkedIn/
│       ├── 📂 feed_test/
│       │   └── 📄 linkedin_feed_test.robot # Teste de funcionalidades do feed do LinkedIn
│       ├── 📂 jobs_test/
│       │   ├── 📄 linkedin_candidatura.robot # Teste de candidatura automática no LinkedIn
│       │   ├── 📄 linkedin_candidatura_simplificada.robot # Versão simplificada do teste de candidatura
│       │   ├── 📄 linkedin_jobs_test.robot # Teste de busca e aplicação de vagas
│       │   └── 📄 linkedin_questoes.robot # Testes de questões ou formulários de candidatura
│       ├── 📂 login_test/
│       │   └── 📄 linkedin_login_test.robot # Teste automatizado de login no LinkedIn
│       ├── 📂 minhaRede_test/
│       │   └── 📄 linkedin_myNetWork_test.robot # Teste da funcionalidade “Minha Rede” do LinkedIn
│       ├── 📄 linkedin.py # Scripts auxiliares em Python para automação
│       ├── 📄 linkedin_locator.robot # Locators e seletores para elementos do LinkedIn
│       ├── 📄 linkedin_suporte.robot # Testes de suporte ou funções auxiliares
│       └── 📄 linkedin_test.robot # Testes gerais ou de integração do LinkedIn
|
├── 📂 drivers/
│   └── 📄 chromedriver.exe # Driver de automação
├── 📄 .gitignore # Arquivos e pastas ignorados pelo Git
├── 📄 CONTRIBUTING.md # Guia de contribuição para o projeto
├── 📄 iniciar_linkedin_automatizado.bat # Script para iniciar a automação de testes
├── 📄 log.html # Log detalhado das execuções dos testes
├── 📄 output.xml # Arquivo de saída com resultados em XML
├── 📄 ReadMe.md # Documentação principal do projeto
└── 📄 report.html # Relatório resumido dos testes executados
```
---
## 📁 Estrutura Detalhada do Projeto

- **resources/**: Contém recursos compartilhados, como keywords personalizadas e listas de dependências.
- **test/**: Diretório principal dos casos de teste, organizado em subdiretórios por funcionalidade (login, vagas, feed, etc.).
- **drivers/**: Armazena os drivers necessários para a automação dos navegadores.
- **iniciar_linkedin_automatizado.bat**: Script para iniciar a automação de testes de forma simples.
- **log.html** e **report.html**: Arquivos gerados após a execução dos testes, contendo logs detalhados e relatórios resumidos.
---
## ⚙️ Instalação e Configuração

### 🔹 Pré-requisitos

- **Python 3.9+**
- **Google Chrome** (ou Firefox)
- **ChromeDriver** compatível com a versão do navegador
- **Robot Framework** instalado globalmente:
```bash
pip install robotframework
```
### 🔹 Instalação das dependências

```bash
pip install -r dependencies.txt
```
--- 
## 💻 Autor

Carlos Eduardo dos Santos Figueiredo
- QA Engineer | Salesforce | Robot Framework | Automação de Testes |
- 📧 [LinkedIn](https://www.linkedin.com/in/carlos-eduardo-dos-s-figueiredo/)🌐 [GitHub](https://github.com/carloseduardonit)

## Material de apoio
- [Documentação Oficial do Robot Framework](https://robotframework.org/)   
- [Documentação Oficial do SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
- [Documentação Oficial do RPA.Browser.Selenium]( https://robocorp.com/docs/libraries/rpa-framework/rpa-browser-selenium)
- [Documentação Oficial do Robot Framework Browser](https://marketsquare.github.io/robotframework-browser/Browser.html)
- [Documentação Oficial do Python](https://docs.python.org/3/)
- [] ()

## Extensões VSCode
- [] ()

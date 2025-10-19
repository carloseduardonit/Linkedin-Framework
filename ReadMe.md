# 🤖 LinkedIn Framework

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

📦Linkedin-Framework
 ┣ 📂.git # Controle de versão
 ┣ 📂.venv # Ambiente virtual
 ┣ 📂.vscode # Configurações do Visual Studio Code
 ┣ 📂resources # Arquivos de recursos e variáveis
 ┃ ┣ 📜dependencies.txt # Dependências e bibliotecas
 ┃ ┗ 📜keywords_linkedin.robot # Palavras-chave para login e candidatura
 ┣ 📂test # Casos de teste
 ┃ ┣ 📂Gupy 
 ┃ ┃ ┗ 📜linkedin_candidatura_gupy.robot 
 ┃ ┗ 📂LinkedIn
 ┃ ┃ ┣ 📂feed_test
 ┃ ┃ ┃ ┗ 📜linkedin_feed_test.robot
 ┃ ┃ ┣ 📂jobs_test
 ┃ ┃ ┃ ┣ 📜linkedin_candidatura.robot
 ┃ ┃ ┃ ┣ 📜linkedin_candidatura_simplificada.robot
 ┃ ┃ ┃ ┣ 📜linkedin_jobs_test.robot
 ┃ ┃ ┃ ┗ 📜linkedin_questoes.robot
 ┃ ┃ ┣ 📂login_test
 ┃ ┃ ┃ ┗ 📜linkedin_login_test.robot
 ┃ ┃ ┣ 📂minhaRede_test
 ┃ ┃ ┃ ┗ 📜linkedin_myNetWork_test.robot
 ┃ ┃ ┣ 📜linkedin.py
 ┃ ┃ ┣ 📜linkedin_locator.robot
 ┃ ┃ ┣ 📜linkedin_suporte.robot
 ┃ ┃ ┗ 📜linkedin_test.robot
 ┣ 📜.gitignore
 ┣ 📜CONTRIBUTING.md
 ┣ 📜iniciar_linkedin_automatizado.bat
 ┣ 📜log.html
 ┣ 📜output.xml
 ┣ 📜ReadMe.md
 ┗ 📜report.html


---

## ⚙️ Instalação e Configuração

### 🔹 Pré-requisitos

- **Python 3.9+**
- **Google Chrome** (ou Firefox)
- **ChromeDriver** compatível com a versão do navegador
- **Robot Framework**

### 🔹 Instalação das dependências

```bash
pip install -r requirements.txt
```
👨‍💻 Autor

Carlos Eduardo dos Santos Figueiredo
💼 QA Engineer | Salesforce | Robot Framework | Automação de Testes
📧 [LinkedIn](https://www.linkedin.com/in/carlos-eduardo-dos-santos-figueiredo-123456789/)
🌐 [GitHub](https://github.com/carloseduardonit)

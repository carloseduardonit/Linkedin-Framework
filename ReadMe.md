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

Linkedin-Framework/
│
├── resources/ # Arquivos de recursos e variáveis
│   ├── keywords.robot # Palavras-chave reutilizáveis
│   └── dependencies.robot # Dependências e bibliotecas
├── tests/
│ ├── Gupy/ # Casos de teste para Gupy
│ | ├── Gupy_Login_test.robot # Caso de teste para login automatizado
│ ├── Linkedin/ # Casos de teste para LinkedIn

│   ├── Linkedin_Login/ # Caso de teste para login automatizado
│   │ ├── Linkedin_Login_test.robot # Caso de teste para login automatizado
|   ├── Linkedin_Candidatura/ # Caso de teste para candidatura automática
│ ├── candidatura.robot # Caso de teste para candidatura automática
│ └── 
│
├── results/
│ ├── log.html # Logs de execução
│ ├── report.html # Relatórios de testes
│
├── drivers/
│ └── chromedriver.exe # Driver de automação
│
├── .gitignore
└── README.md

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
📧 LinkedIn
🌐 GitHub
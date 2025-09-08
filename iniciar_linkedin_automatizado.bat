@echo off
REM === Ativa o ambiente virtual ===
IF NOT EXIST .venv\ (
    echo Ambiente virtual não encontrado.
    python -m venv .venv
    call .\.venv\Scripts\activate.bat
    exit /b
)

REM === Instala dependências se o arquivo existir ===
IF EXIST dependencies.txt (
    pip list
    pip install -r dependencies.txt
    pip list
    del /Q dependencies.txt
)
REM === Cria Arquivo necessário ===
if not exist \test\LinkedIn\linkedin.py (
    (
        echo # Script para acessar o LinkedIn e realizar ações automatizadas
        echo senha = ""
        echo email = ""
        echo name = ""
        echo # final do script
    ) > LinkedIn\linkedin.py 
)

REM === Limpa arquivos desnecessários ===
del /Q *.png
del /Q geckodriver-*.log
del /Q intera*.xml

REM === Executa os testes ===
robot --test "Acessar o cartoes de Vagas" .\test\LinkedIn\linkedin_test.robot
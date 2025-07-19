@echo off
REM === Instala dependências se o arquivo existir ===
IF EXIST dependencies.txt (
    pip list
    pip install -r dependencies.txt
    pip list
    del /Q dependencies.txt
)
REM === Cria Arquivo necessário ===
if not exist "LinkedIn\linkedin.py" (
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
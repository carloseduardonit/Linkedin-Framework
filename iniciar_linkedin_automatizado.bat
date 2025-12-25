@echo off
REM === Ativa o ambiente virtual ===
IF NOT EXIST .venv\ (
    echo Ambiente virtual nao encontrado. Criando um novo ambiente virtual...
    python -m venv .venv
    call .\.venv\Scripts\activate.bat
    exit /b
) else (
    echo Ambiente virtual encontrado. Ativando o ambiente virtual...
    call .\.venv\Scripts\activate.bat
)

REM === Instala dependências se o arquivo existir ===
IF EXIST dependencies.txt (
    pip list
    echo Instalando dependências do arquivo dependencies.txt...
    pip install -r dependencies.txt
    pip list
    echo Dependências instaladas com sucesso.
    del /Q dependencies.txt
    echo Arquivo dependencies.txt deletado.
) else (
    echo Arquivo dependencies.txt nao encontrado. Pulando instalacao de dependencias.
)
REM === Cria Arquivo necessário ===
if not exist \test\LinkedIn\linkedin.py (
    (
        echo # Script para acessar o LinkedIn e realizar acoes automatizadas
        echo senha = ""
        echo email = ""
        echo name = ""
        echo # final do script
    ) > LinkedIn\linkedin.py 
) else (
    echo Arquivo linkedin.py ja existe. Pulando criacao.
)

REM === Limpa arquivos desnecessários ===
IF exist *.png (
    echo Limpando arquivos PNG antigos...
    del /Q *.png
    echo Arquivos PNG limpos.
) ELSE (
    echo Nenhum arquivo PNG encontrado para limpar.
)

IF exist geckodriver-*.log (
    echo Limpando arquivos de log do geckodriver...
    del /Q geckodriver-*.log
    echo Logs do geckodriver limpos.
) else (
    echo Nenhum arquivo de log do geckodriver encontrado para limpar.
)

IF exist intera*.xml (
    echo Limpando arquivos XML antigos...
    del /Q intera*.xml
    echo Arquivos XML limpos.
) else (
    echo Nenhum arquivo XML encontrado para limpar.
)

REM === Executa os testes ===
robot --test "Acessar o cartoes de Vagas" .\test\LinkedIn\linkedin_test.robot
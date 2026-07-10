@echo off

REM === Baixa e extrai o ChromeDriver se necessário ===
set "CHROMEDRIVER_WIN64=%~dp0chromedriver-win64\chromedriver-win64"
set "CHROMEDRIVER_WIN32=%~dp0chromedriver-win32\chromedriver-win32"
set "version=150.0.7871.114"
set "CHROMEDRIVER_URL_WIN64=https://storage.googleapis.com/chrome-for-testing-public/%version%/win64/chromedriver-win64.zip"
set "CHROMEDRIVER_URL_WIN32=https://storage.googleapis.com/chrome-for-testing-public/%version%/win32/chromedriver-win32.zip"

if not exist "%CHROMEDRIVER_WIN64%\chromedriver.exe" (
    if not exist "%~dp0chromedriver-win64.zip" (
        echo Baixando ChromeDriver 64 bits...
        powershell -NoProfile -Command "Invoke-WebRequest -Uri '%CHROMEDRIVER_URL_WIN64%' -OutFile '%~dp0chromedriver-win64.zip'"
    )
    if exist "%~dp0chromedriver-win64.zip" (
        echo Extraindo ChromeDriver 64 bits...
        powershell -NoProfile -Command "Expand-Archive -Path '%~dp0chromedriver-win64.zip' -DestinationPath '%~dp0chromedriver-win64' -Force"
    )
)

if not exist "%CHROMEDRIVER_WIN32%\chromedriver.exe" (
    if not exist "%~dp0chromedriver-win32.zip" (
        echo Baixando ChromeDriver 32 bits...
        powershell -NoProfile -Command "Invoke-WebRequest -Uri '%CHROMEDRIVER_URL_WIN32%' -OutFile '%~dp0chromedriver-win32.zip'"
    )
    if exist "%~dp0chromedriver-win32.zip" (
        echo Extraindo ChromeDriver 32 bits...
        powershell -NoProfile -Command "Expand-Archive -Path '%~dp0chromedriver-win32.zip' -DestinationPath '%~dp0chromedriver-win32' -Force"
    )
)

REM === Configura o ChromeDriver para o Selenium ===
if exist "%CHROMEDRIVER_WIN64%\chromedriver.exe" (
    set "PATH=%CHROMEDRIVER_WIN64%;%PATH%"
    set "WEBDRIVER_CHROME_DRIVER=%CHROMEDRIVER_WIN64%\chromedriver.exe"
    echo ChromeDriver 64 bits configurado.
) else if exist "%CHROMEDRIVER_WIN32%\chromedriver.exe" (
    set "PATH=%CHROMEDRIVER_WIN32%;%PATH%"
    set "WEBDRIVER_CHROME_DRIVER=%CHROMEDRIVER_WIN32%\chromedriver.exe"
    echo ChromeDriver 32 bits configurado.
) else (
    echo ChromeDriver nao encontrado. Verifique a pasta extraida.
)
REM === Ativa o ambiente virtual ===
IF NOT EXIST .venv\ (
    echo Ambiente virtual nao encontrado. Criando um novo ambiente virtual...
    python.exe -m pip install --upgrade pip
    python -m venv .venv
    call .\.venv\Scripts\activate.bat
    copy resources\dependencies.txt dependencies.txt
    Rem exit /b

) else (
    echo Ambiente virtual encontrado. Ativando o ambiente virtual...
    python.exe -m pip install --upgrade pip
    call .\.venv\Scripts\activate.bat
)

REM === Instala dependências se o arquivo existir ===
IF EXIST resources\dependencies.txt (
    pip list
    echo Instalando dependências do arquivo resources\dependencies.txt...
    python.exe -m pip install --upgrade pip
    pip install -r resources\dependencies.txt
    pip list
    robot --version
    echo Dependências instaladas com sucesso.
) else IF EXIST dependencies.txt (
    pip list
    echo Instalando dependências do arquivo dependencies.txt...
    pip install -r dependencies.txt
    pip list
    robot --version
    echo Dependências instaladas com sucesso.
    del /Q dependencies.txt
    echo Arquivo dependencies.txt deletado.
) else (
    echo Arquivo dependencies.txt nao encontrado. Pulando instalacao de dependencias.
)
Rem === Verifica se a extensão RobotCode está instalada ===

IF code --list-extensions | findstr robotcode (
    echo Extensão RobotCode encontrada.
) else (
    echo Extensão RobotCode nao encontrada.
    echo Instalando extensao RobotCode...
    code --install-extension d-biehl.robotcode
)


REM === Cria Arquivo necessário ===
if not exist test\LinkedIn\linkedin.py (
    (
        echo # Script para acessar o LinkedIn e realizar acoes automatizadas
        echo senha = ""
        echo email = ""
        echo name = ""
        echo # final do script
    ) > test\LinkedIn\linkedin.py
) else (
    echo Arquivo test\LinkedIn\linkedin.py ja existe. Pulando criacao.
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
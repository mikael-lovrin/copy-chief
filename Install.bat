@echo off
setlocal enabledelayedexpansion

set "SRC=%~dp0skills"
set "DEST=%USERPROFILE%\.claude\skills"

echo Instalando Copy Chief...

if not exist "%SRC%\copy-chief\SKILL.md" (
    echo ERRO: nao encontrei skills\copy-chief\SKILL.md ao lado deste instalador.
    pause
    exit /b 1
)

if not exist "%DEST%" (
    mkdir "%DEST%"
)

for %%S in (copy-chief) do (
    if exist "%DEST%\%%S" (
        rmdir /s /q "%DEST%\%%S"
    )
    xcopy "%SRC%\%%S" "%DEST%\%%S" /e /i /y >nul
)

if exist "%DEST%\copy-chief\SKILL.md" (
    echo.
    echo Copy Chief instalado com sucesso!
    echo Skill instalada: copy-chief
    echo Abra a pasta do produto com uma copy ja escrita e peca para revisar/elevar a qualidade para comecar.
) else (
    echo ERRO: falha ao copiar os arquivos da skill.
)

pause

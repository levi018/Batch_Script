@echo off

rem Configuração de Layout
title Testar Link Whitlist or Black List
color 09
mode con lines=30 cols=90

rem Gráfico
:main
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo       ___________              __                 .____    .__        __            
echo       ^\__    ___^/___   _______^/  ^|______ _______  ^|    ^|   ^|__^| ____ ^|  ^| __  ______
echo         ^|    ^|_^/ __ ^\ ^/  ___^/^\   __^\__  ^\^\_  __ ^\ ^|    ^|   ^|  ^|^/    ^\^|  ^|^/ ^/ ^/  ___^/
echo         ^|    ^|^\  ___^/ ^\___ ^\  ^|  ^|  ^/ __ ^\^|  ^| ^\^/ ^|    ^|___^|  ^|   ^|  ^\    ^<  ^\___ ^\ 
echo         ^|____^| ^\___  ^>____  ^> ^|__^| ^(____  ^/__^|    ^|_______ ^\__^|___^|  ^/__^|_ ^\^/____  ^>
echo                    ^\^/     ^\^/            ^\^/                ^\^/       ^\^/     ^\^/     ^\^/ 
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.

echo   þþþþþþþþþþþþþþþþþþ                þþþþþþþþþþþþþþþþþþþþþþþþþþþþ       
echo   þ 1. Ping                         þ 2. Testar White/Black List
echo   þ 3. Tracert                       
echo   þþþþþþþþþþþþþþþþþþ                þþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo.

rem Inserção de links com no máximo 5 links
choice /c "1234" /n /m "Digite> "
goto %errorlevel%

:1
cls
set /p site="Site(sem https)> "
ping %site%
pause >nul
cls
goto main

:2
echo.
echo =================================================================================
echo Para usar este recurso, ‚ necess rio subir o caminho do arquivo TXT com os links.
echo =================================================================================
echo.

rem para usar este recurso, é necessário subir um arquivo TXT com os links, apenas o links e nada mais.
setlocal enabledelayedexpansion
@echo off
setlocal enabledelayedexpansion
set /p "caminho=Digite o caminho do arquivo txt> "
set /a contador=0
for /f "delims=" %%i in (%caminho%) do (
    set /a contador+=1
    echo Linha: !contador! ^| %%i
    start %%i
)
endlocal
)
pause >nul
cls
goto main

:3
set /p site2="Site(sem https)> "
tracert %site%
pause >nul
cls
goto main

pause >nul                                    

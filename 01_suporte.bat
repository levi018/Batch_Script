@ echo off

rem definindo linhas e colunas do prompt
title SUPORTE
mode con lines=20 cols=70

rem Menu interativo
:menu
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo           ^____  ^_    ^_   ^____   ^____   ^____  ^_______  ^____     
echo          ^|      ^|    ^|  ^|    ^| ^|    ^| ^|    ^|    ^|    ^|      
echo          ^|____  ^|    ^|  ^|____^| ^|    ^| ^|___/^     ^|    ^|__    
echo               ^| ^|    ^|  ^|      ^|    ^| ^|   ^\     ^|    ^|       
echo           ^____^| ^|____^|  ^|      ^|____^| ^|    ^\    ^|    ^|____                                                                   
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.
echo   þþþþþþþþþþþþþþþþþþ                þþþþþþþþþþþþþþþþþþþþþþþþþþþ       
echo   þ 1. Calculadora                  þ 2. Gerenciador de Tarefas
echo   þ 3. Servi‡o ativo                þ 4. Painel de Controle    
echo   þ 5. Explorer                     þ 6. Edge
echo   þ 7. Ping -t                      þ 8. Finalizar Servi‡o
echo   þþþþþþþþþþþþþþþþþþ                þþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo.

rem estrura de decisão do código usando o choice
choice /c "12345678" /n /m "Digite um valor > "
goto %errorlevel%

:1
cls
start calc.exe
goto menu

:2
cls
start taskmgr
goto menu

:3
set /p servico="Digite o serviço>
tasklist /fi "imagename eq %servico%" | find "%servico%"
cls
if %errorlevel% == 0 (echo serviço ativo) 
if %errorlevel% == 1 (echo serviço não ativo)
pause >nul
cls
goto menu

:4
cls
start control
goto menu

:5
cls
start explorer.exe
goto menu

:6
cls
start msedge.exe
goto menu

:7
set /p ip="IP>
ping %ip%
pause >null
cls
goto menu

:8
cls
set /p processo="Digite o processo: "
taskkill /IM %processo% /F
pause >nul
cls
goto menu
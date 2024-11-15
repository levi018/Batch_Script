@ echo off

rem definindo linhas e colunas do prompt
title SUPORTE
mode con lines=20 cols=70

rem Menu interativo
:menu
echo ����������������������������������������������������������������������
echo           ^____  ^_    ^_   ^____   ^____   ^____  ^_______  ^____     
echo          ^|      ^|    ^|  ^|    ^| ^|    ^| ^|    ^|    ^|    ^|      
echo          ^|____  ^|    ^|  ^|____^| ^|    ^| ^|___/^     ^|    ^|__    
echo               ^| ^|    ^|  ^|      ^|    ^| ^|   ^\     ^|    ^|       
echo           ^____^| ^|____^|  ^|      ^|____^| ^|    ^\    ^|    ^|____                                                                   
echo ����������������������������������������������������������������������
echo.
echo   ������������������                ���������������������������       
echo   � 1. Calculadora                  � 2. Gerenciador de Tarefas
echo   � 3. Servi�o ativo                � 4. Painel de Controle    
echo   � 5. Explorer                     � 6. Edge
echo   � 7. Ping -t                      � 8. Finalizar Servi�o
echo   ������������������                ���������������������������
echo.

rem estrura de decis�o do c�digo usando o choice
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
set /p servico="Digite o servi�o>
tasklist /fi "imagename eq %servico%" | find "%servico%"
cls
if %errorlevel% == 0 (echo servi�o ativo) 
if %errorlevel% == 1 (echo servi�o n�o ativo)
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
@echo off

rem Configura��o de Layout
title Testar Link Whitlist or Black List
color 09
mode con lines=30 cols=90

rem Gr�fico
:main
echo ������������������������������������������������������������������������������������������
echo       ___________              __                 .____    .__        __            
echo       ^\__    ___^/___   _______^/  ^|______ _______  ^|    ^|   ^|__^| ____ ^|  ^| __  ______
echo         ^|    ^|_^/ __ ^\ ^/  ___^/^\   __^\__  ^\^\_  __ ^\ ^|    ^|   ^|  ^|^/    ^\^|  ^|^/ ^/ ^/  ___^/
echo         ^|    ^|^\  ___^/ ^\___ ^\  ^|  ^|  ^/ __ ^\^|  ^| ^\^/ ^|    ^|___^|  ^|   ^|  ^\    ^<  ^\___ ^\ 
echo         ^|____^| ^\___  ^>____  ^> ^|__^| ^(____  ^/__^|    ^|_______ ^\__^|___^|  ^/__^|_ ^\^/____  ^>
echo                    ^\^/     ^\^/            ^\^/                ^\^/       ^\^/     ^\^/     ^\^/ 
echo ������������������������������������������������������������������������������������������
echo.

echo   ������������������                ����������������������������       
echo   � 1. Ping                         � 2. Testar White/Black List
echo   � 3. Tracert                       
echo   ������������������                ����������������������������
echo.

rem Inser��o de links com no m�ximo 5 links
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
set /p site3="Site 1> "
set /p site4="Site 2> "
set /p site5="Site 3> "
set /p site6="Site 4> "
set /p site7="Site 5> "

start %site3%
start %site4%
start %site5%
start %site6%
start %site7%

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
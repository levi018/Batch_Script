@echo off

title SCRIPT PARA APAGAR EXTENS�ES e PRESERVAR .pst
mode con lines=30 cols=90
echo.

rem Gráfico
:main
echo �������������������������������������������������������������������
echo           __________  ____________________
echo           ^\______   ^\^/   _____^/^\__    ___^/
echo           ^|     ___^/^\_____  ^\   ^|    ^|   
echo           ^|    ^|    ^/        ^\  ^|    ^|   
echo           ^|____^|   ^/_______  ^/  ^|____^|   
echo                            ^\^/          
echo ��������������������������������������������������������������������
echo.

rem digitar o diret�rio atual
echo ��� 1.  � necess�rio colocar o caminho correto e sem aspas.
echo �����������������������������������������������������������
echo.
set /p "diretorio=Digite o seu diret�rio para apagar> "
echo �����������������������������������������������������������
cd %diretorio%

rem consulta se o arquvio tem determinada extens�o, caso n�o seja o especificado ele apaga o mesmo
for /r %%i in (*) do if not "%%~xi"==".pst" del "%%i"

rem consulta subpastas para saber se tem arquivos com a extens�o desejada.
rem caso ache arquivos com a extens�o ele preserva a pasta somente com esses arquivos e exlui o resto
for /r %%i in (.) do (dir /b "%%i\*.pst" >nul 2>nul && echo Pastas que cont�m arquivos .pst: "%%~ni" || rd /s /q "%%i")
echo Opera��o conclu�da!


pause >nul
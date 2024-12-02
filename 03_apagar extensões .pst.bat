@echo off

title SCRIPT PARA APAGAR EXTENSÕES e PRESERVAR .pst
mode con lines=30 cols=90
echo.

rem GrÃ¡fico
:main
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo           __________  ____________________
echo           ^\______   ^\^/   _____^/^\__    ___^/
echo           ^|     ___^/^\_____  ^\   ^|    ^|   
echo           ^|    ^|    ^/        ^\  ^|    ^|   
echo           ^|____^|   ^/_______  ^/  ^|____^|   
echo                            ^\^/          
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.

rem digitar o diretório atual
echo þþþ 1.   necess rio colocar o caminho correto e sem aspas.
echo þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
echo.
set /p "diretorio=Digite o seu diret¢rio para apagar> "
echo þþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþþ
cd %diretorio%

rem consulta se o arquvio tem determinada extensão, caso não seja o especificado ele apaga o mesmo
for /r %%i in (*) do if not "%%~xi"==".pst" del "%%i"

rem consulta subpastas para saber se tem arquivos com a extensão desejada.
rem caso ache arquivos com a extensão ele preserva a pasta somente com esses arquivos e exlui o resto
for /r %%i in (.) do (dir /b "%%i\*.pst" >nul 2>nul && echo Pastas que contém arquivos .pst: "%%~ni" || rd /s /q "%%i")
echo Operação concluída!


pause >nul
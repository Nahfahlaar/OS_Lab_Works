@ECHO OFF
@CHCP 65001 > NUL

SETLOCAL ENABLEDELAYEDEXPANSION

IF "%1"=="" ECHO Укажите первый каталог! && EXIT /B
IF "%2"=="" ECHO Укажите второй каталог! && EXIT /B


IF NOT EXIST "%1" (
    ECHO Первого каталога не существует
    EXIT /B
)

IF NOT EXIST "%2" (
    ECHO Второго каталога не существует
    EXIT /B
)

FOR %%F IN ("%1\*.*") DO (
    IF EXIST "%2\%%~NXF" (
        ECHO %%~NXF
    )
)

PAUSE
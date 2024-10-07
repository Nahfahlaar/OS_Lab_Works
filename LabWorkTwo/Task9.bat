
@ECHO OFF
CHCP 65001 > NUL

SETLOCAL ENABLEDELAYEDEXPANSION

IF "%1"=="" (
    ECHO Укажи текстовый файл
    EXIT /B
)

IF NOT EXIST "%1" (
    ECHO Такого файла не существует
    EXIT /B
)

SET /A count=0

FOR /F %%i IN ('FINDSTR /R "^[0-9][0-9]*$" "%1"') DO (
    SET /A count+=1
)

ECHO Количество целых чисел в файле: %count%
PAUSE
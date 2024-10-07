@ECHO OFF
CHCP 65001 > NUL


SETLOCAL ENABLEDELAYEDEXPANSION

SET count=0


IF NOT EXIST "%1" (
    ECHO Каталог не существует!
    EXIT /B
)


FOR /D /R "%1" %%D IN (*) DO (
    SET /A count+=1  REM Увеличиваем счетчик подкаталогов
)

ECHO Общее количество подкаталогов: !count!
PAUSE
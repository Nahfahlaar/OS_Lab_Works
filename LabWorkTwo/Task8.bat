@ECHO OFF
CHCP 65001 > NUL

IF "%1"=="" (
    ECHO Укажите положительное число меньше 12
    EXIT /B
)


SET /A number=%1


IF %number% LSS 0 (
    ECHO Вводить можно только положительные числа
    EXIT /B
)

IF %number% GTR 12 (
    ECHO Число слишком велико для вычисления факториала
    EXIT /B
)


SET /A fact=1
FOR /L %%i IN (1,1,%number%) DO (
    SET /A fact=fact*%%i
)

ECHO Факториал числа %number% равен %fact%
PAUSE
@ECHO OFF
CHCP 65001 > NUL

SETLOCAL ENABLEDELAYEDEXPANSION

SET max=-999
SET min=999

:marker
SET /P "n=Введите число чтобы записать его или '-' чтобы закончить этот ввод: "
IF "%n%"=="-" GOTO result

IF !n! GTR !max! SET max=!n!
IF !n! LSS !min! SET min=!n!

GOTO marker

:result
ECHO Наибольшее число: !max!
ECHO Наименьшее число: !min!
PAUSE
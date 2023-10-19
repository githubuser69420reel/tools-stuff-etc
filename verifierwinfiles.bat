@echo off

echo Performing system file check...

sfc /verifyonly

if %errorlevel% equ 0 (
    echo System files are intact.
) else (
    echo System files are corrupted. Attempting repair...
    sfc /scannow
)

echo System file check complete.
pause
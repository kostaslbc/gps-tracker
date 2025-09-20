@echo off
setlocal enabledelayedexpansion

REM Path to your esptool.exe and binary
set ESPTOOL=esptool.exe
set BIN_FILE=GPS_sender_433mhz.bin
set BAUD=460800

echo Searching for available COM ports...

REM Get list of COM ports using PowerShell
for /f "delims=" %%A in ('powershell -Command "Get-WmiObject Win32_SerialPort | Select-Object -ExpandProperty DeviceID"') do (
    set COMPORT=%%A
    set COMPORT=!COMPORT: =!
    echo Trying !COMPORT!...

    REM Attempt to flash the ESP32
    %ESPTOOL% --chip esp32s3 --port !COMPORT! --baud !BAUD! write-flash 0x0 %BIN_FILE%
    
    REM Check if flashing was successful
    if !errorlevel! == 0 (
        echo Flashing succeeded on !COMPORT!
        goto :EOF
    ) else (
        echo Flashing failed on !COMPORT!, trying next port...
    )
)

echo No COM ports succeeded. Please check connections and ensure ESP32 is in bootloader mode (hold BOOT while pressing RESET).
pause

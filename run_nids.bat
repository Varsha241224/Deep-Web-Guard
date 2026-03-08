@echo off
echo ====================================
echo Starting NIDS Sniffer
echo ====================================
echo.
echo NOTE: This must run as Administrator!
echo Right-click this file and select "Run as Administrator"
echo.

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Not running as Administrator!
    echo Please right-click and select "Run as Administrator"
    pause
    exit /b 1
)

echo [✓] Running with Administrator privileges
echo.

call venv\Scripts\activate.bat
echo Starting packet sniffer...
echo Press Ctrl+C to stop
echo.
python main.py

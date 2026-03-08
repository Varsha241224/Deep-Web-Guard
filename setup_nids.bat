@echo off
echo ====================================
echo NIDS Setup Script
echo ====================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python not found! Please install Python 3.10+
    echo Download from: https://www.python.org/downloads/
    pause
    exit /b 1
)

echo [1/4] Python found: 
python --version
echo.

REM Create virtual environment
echo [2/4] Creating virtual environment...
if not exist "venv" (
    python -m venv venv
    echo Virtual environment created.
) else (
    echo Virtual environment already exists.
)
echo.

REM Activate and install dependencies
echo [3/4] Installing dependencies...
call venv\Scripts\activate.bat
pip install --upgrade pip
pip install -r requirements_nids.txt
echo.

REM Create necessary directories
echo [4/4] Creating directories...
if not exist "data" mkdir data
if not exist "models" mkdir models
echo Directories created.
echo.

echo ====================================
echo Setup Complete!
echo ====================================
echo.
echo Next steps:
echo 1. Install Npcap from: https://npcap.com/
echo    - Enable "WinPcap API-compatible Mode"
echo    - Reboot Windows
echo.
echo 2. Run NIDS (as Administrator):
echo    python main.py
echo.
echo 3. Open Control Panel (normal user):
echo    streamlit run web_ui/control_panel.py
echo.
echo See NIDS_QUICKSTART.md for detailed instructions.
echo.
pause

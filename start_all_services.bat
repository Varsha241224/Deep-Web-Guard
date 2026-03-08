@echo off
echo ====================================
echo Starting All Deep Web Guard Services
echo ====================================
echo.

REM Check for Administrator privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [WARNING] Not running as Administrator!
    echo Some features may not work properly.
    echo Recommend: Right-click and select "Run as Administrator"
    echo.
    timeout /t 3
)

REM Get the directory where the script is located
set ROOT_DIR=%~dp0
cd /d "%ROOT_DIR%"

echo [1/5] Starting Backend Service (Port 5000)...
start "Backend Service" cmd /k "cd /d "%ROOT_DIR%backend" && node server.js"
timeout /t 2

echo [2/5] Starting ML Service (Port 5001)...
start "ML Service" cmd /k "cd /d "%ROOT_DIR%ml-service" && python app.py"
timeout /t 2

echo [3/5] Starting NIDS Service (Port 5002)...
start "NIDS Service" cmd /k "cd /d "%ROOT_DIR%nids-service" && python app.py"
timeout /t 2

echo [4/5] Starting NIDS Packet Sniffer...
start "NIDS Sniffer" cmd /k "cd /d "%ROOT_DIR%" && python main.py"
timeout /t 2

echo [5/5] Starting Frontend (Port 8080)...
start "Frontend Dev Server" cmd /k "cd /d "%ROOT_DIR%" && npm run dev"
timeout /t 2

echo.
echo ====================================
echo All Services Started!
echo ====================================
echo.
echo Services running:
echo   - Backend API:      http://localhost:5000
echo   - ML Service:       http://localhost:5001
echo   - NIDS Service:     http://localhost:5002
echo   - Frontend:         http://localhost:8080
echo   - Packet Sniffer:   Running in background
echo.
echo Check individual terminal windows for service status.
echo Close terminal windows to stop individual services.
echo.
pause

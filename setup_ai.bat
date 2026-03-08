@echo off
echo ========================================
echo   AI Analysis Setup Script
echo ========================================
echo.

echo Step 1: Installing OpenAI package...
cd ml-service
pip install openai
echo.

echo Step 2: Checking for .env file...
if exist .env (
    echo .env file found!
    echo.
    echo Please make sure your OpenAI API key is in the .env file:
    echo OPENAI_API_KEY=your_key_here
) else (
    echo Creating .env file from template...
    copy .env.example .env
    echo.
    echo Please edit ml-service\.env and add your OpenAI API key!
    echo Get your key from: https://platform.openai.com/api-keys
    echo.
    echo Then add this line to .env:
    echo OPENAI_API_KEY=your_actual_key_here
)

echo.
echo ========================================
echo   Setup Complete!
echo ========================================
echo.
echo Next steps:
echo 1. Add your OpenAI API key to ml-service\.env
echo 2. Restart the ML service: cd ml-service ^&^& python app.py
echo 3. Test from NIDS dashboard!
echo.
echo See AI_ANALYSIS_SETUP.md for detailed instructions.
echo.
pause

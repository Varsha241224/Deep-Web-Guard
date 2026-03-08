@echo off
echo ====================================
echo Starting NIDS Control Panel
echo ====================================
echo.

call venv\Scripts\activate.bat
echo Opening Control Panel at http://localhost:8501
echo Default password: admin123
echo.
echo Press Ctrl+C to stop
echo.
streamlit run web_ui/control_panel.py

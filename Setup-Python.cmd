@echo off
cd /d "%~dp0"
python -m venv .venv
if errorlevel 1 goto failed
".venv\Scripts\python.exe" -m pip install -r requirements.txt
if errorlevel 1 goto failed
echo Setup complete. Double-click Run-Charts.cmd to generate charts.
pause
exit /b 0
:failed
echo Setup could not complete. Check the error above.
pause
exit /b 1

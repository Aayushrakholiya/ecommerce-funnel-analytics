@echo off
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
  echo Run Setup-Python.cmd first.
  pause
  exit /b 1
)
set "MPLBACKEND=Agg"
set "PYTHONUTF8=1"
".venv\Scripts\python.exe" python\product_funnel_analysis.py
if errorlevel 1 (
  echo Chart generation failed. Check the error above or rerun Setup-Python.cmd.
  pause
  exit /b 1
)
start "" "%~dp0charts"
pause

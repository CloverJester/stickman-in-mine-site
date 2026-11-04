@echo off
chcp 65001 >nul
cd /d "%~dp0.."
start "" "http://127.0.0.1:8000/site/"
echo Сайт открыт по адресу http://127.0.0.1:8000/site/
echo Чтобы закрыть сайт, нажми Ctrl+C в этом окне.
set "PYTHON=%LocalAppData%\Programs\Python\Python312\python.exe"
if not exist "%PYTHON%" set "PYTHON=python"
"%PYTHON%" -m http.server 8000 --bind 127.0.0.1
pause

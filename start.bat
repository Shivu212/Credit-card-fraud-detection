@echo off
echo ========================================================
echo   Starting FraudShield AI Platform
echo ========================================================
echo.

echo Launching Backend Server on port 8000...
start /b cmd /c "cd backend && .\venv\Scripts\python -m uvicorn app.main:app --host 0.0.0.0 --port 8000"

echo Launching Frontend Dev Server on port 5173...
start /b cmd /c "cd frontend && npm run dev"

echo.
echo Application is initializing!
echo Frontend URL: http://localhost:5173/
echo Backend API Docs: http://localhost:8000/docs
echo.
pause

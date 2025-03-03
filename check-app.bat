@echo off
echo 檢查 B2 Boss Timer 應用程式是否正在運行...
echo.

netstat -ano | findstr :3000 > nul
if %errorlevel% equ 0 (
    echo 應用程式正在運行！
    echo 請在瀏覽器中訪問：http://localhost:3000
    echo.
    echo 正在嘗試自動打開瀏覽器...
    start http://localhost:3000
) else (
    echo 應用程式似乎沒有運行。
    echo 請運行 run-app.bat 文件啟動應用程式。
    echo.
    echo 是否要現在啟動應用程式？(Y/N)
    set /p choice=
    if /i "%choice%"=="Y" (
        echo 啟動應用程式...
        start run-app.bat
        echo 請等待幾秒鐘，然後再次運行此腳本檢查應用程式狀態。
    )
)

echo.
echo 按任意鍵退出...
pause > nul

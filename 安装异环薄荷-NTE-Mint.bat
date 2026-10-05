@echo off
chcp 65001 >nul
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0install.ps1"
if errorlevel 1 (
  echo 安装未完成，请查看上方错误信息。
) else (
  echo 异环薄荷已安装，请重新打开宠物选择面板。
)
pause

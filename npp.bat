@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
set "NPP_EXE=D:\sw\Notepad++\notepad++.exe"

if not exist "%NPP_EXE%" (
    echo 找不到 "%NPP_EXE%"，请确认 Notepad++ 安装路径。
    exit /b 1
)

rem 将脚本所在目录加入当前会话的 PATH，方便调用项目内工具
set "PATH=%SCRIPT_DIR%;%PATH%"

start "" "%NPP_EXE%" %*

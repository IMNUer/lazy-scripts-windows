@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
set "DBEAVER_EXE=D:\sw\DBeaver\dbeaver.exe"

if not exist "%DBEAVER_EXE%" (
    echo 找不到 "%DBEAVER_EXE%"，请确认 DBeaver 安装路径。
    exit /b 1
)

rem 将脚本所在目录加入当前会话的 PATH，方便调用项目内工具
set "PATH=%SCRIPT_DIR%;%PATH%"

start "" "%DBEAVER_EXE%" %*

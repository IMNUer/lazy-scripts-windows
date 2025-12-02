@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
set "NOTEPAD_EXE=%SystemRoot%\System32\notepad.exe"

if not exist "%NOTEPAD_EXE%" (
    echo 找不到 "%NOTEPAD_EXE%"，请确认 Notepad 可执行文件路径。
    exit /b 1
)

rem 将脚本所在目录加入当前会话的 PATH，方便调用项目内工具
set "PATH=%SCRIPT_DIR%;%PATH%"

start "" "%NOTEPAD_EXE%" %*

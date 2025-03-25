@echo off
chcp 65001 >nul
echo 正在为FreeBSD AMD64编译DDG-Chat-go...
set GOOS=freebsd
set GOARCH=amd64
go build -o ddgchatgo-freebsd-amd64 main.go
if %ERRORLEVEL% == 0 (
    echo 编译成功！生成文件: ddgchatgo-freebsd-amd64
) else (
    echo 编译失败，错误码: %ERRORLEVEL%
)
pause
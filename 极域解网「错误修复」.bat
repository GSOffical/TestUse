@echo off
color 0C
echo CADPA 16+
echo 适龄提醒
echo 免责声明：使用本批处理文件所造成的任何后果用户自己承担
pause >nul
color 0A
echo 极域解网测试
echo 版本：alpha测试
pause >nul
timeout /t 1 >nul
echo 加载中…
timeout /t 2 >nul
echo 加载中…进度为59%
timeout /t 2 >nul
echo 加载成功！
timeout /t 2 >nul
echo 密钥系统 ｜ key system
set /p key=请输入密钥：
if "%key%"=="POWEREDBYSY" goto correct_key
if "%key%"=="RYXCOffical" goto correct_key
if "%key%"=="FurinaLover" goto correct_key
set /a attempts=attempts+1
if %attempts%==3 (
    echo 密钥错误次数过多，机器将会自动关机
    shutdown /s /t 5
) else (
    echo 请重新尝试，剩余%%attempts%%次机会
)
goto end

:correct_key
echo 打开任务管理器
start taskmgr.exe
echo  loading…20%
timeout /t 1 >nul
echo loading…30%
taskkill /IM MasterHelper.exe /F
echo loading…40%
timeout /t 1 >nul
echo loading…50%
start cmd.exe /k "sc stop tdnetfilter"
echo loading…60%
timeout /t 1 >nul
echo loading…70%
taskkill /IM cmd.exe /F
taskkill /IM Taskmgr.exe /F
echo loading…80%
timeout /t 1 >nul
echo loaded…100%
echo 网络已解禁，请适度使用
start https://www.bilibili.com/
goto end

:end
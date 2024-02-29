@echo off

color 0C

echo CADPA 16+
echo 适龄提醒
echo 免责声明：使用本批处理文件所造成的任何后果用户自己承担

pause >nul

color 0A
echo 极域解网测试
echo 版本：alpha测试
timeout /t 1 >nul

echo 加载中…
timeout /t 2 >nul

echo 加载中…进度为59%
timeout /t 2 >nul

echo 加载成功！
timeout /t 2 >nul

echo 密钥系统 ｜ key system
echo 在密钥输入区输入警告或关于以获取其他信息
echo 如果遇到困难了输入帮助即可获取帮助

set /p key=请输入密钥 Enter your key：
if "%key%"=="IlIllIIllIl" goto correct_key
if "%key%"=="RYXCOffical" goto correct_key
if "%key%"=="WangQiYue0218" goto correctd_key
if "%key%"=="警告" goto warning_about
if "%key%"=="关于" goto about_us
if "%key%"=="帮助" goto find_help
if "%key%"=="admin" goto admin_user_read
set /a attempts=attempts+1
if %attempts%==3 (
    echo 密钥错误次数过多，机器将会自动关机
    pause >nul
    echo 我没有开玩笑
    pause >nul
) else (
    echo 请重新尝试，剩余%%attempts%%次机会
)
goto end

:correctd_key

:correct_key
echo 系统启动中…
start taskmgr.exe
echo  loading…20%
timeout /t 1 >nul
echo loading…30%
taskkill /IM MasterHelper.exe
echo loading…40%
timeout /t 1 >nul
echo loading…50%
start cmd.exe /k "sc stop tdnetfilter"
echo loading…60%
timeout /t 1 >nul
echo loading…70%
taskkill /IM Taskmgr.exe
echo loading…80%
timeout /t 1 >nul
echo loaded…100%
echo 网络已解禁，请适度使用 ｜ Success
goto end

:warning_about
color 0C
echo 本bat文件完全免费
echo 本文件遵循CC3.0协议        CC-BY
echo 在使用该文件之前，确保您已完成当堂作业
echo 并且在使用该事件前，确保你完全听懂
echo 感谢您的理解
goto end

:about_us
echo 关于我们
echo Furina--技术支持
echo Github--平台支持
echo Nahida--技术支持
echo Lumin --资金支持
echo - - - - -联系我们- - - - -
echo syteamq311@gmail.com-邮箱
echo QQ:1924467894
goto end

:find_help
echo 如果出现bug请向制造者反馈
echo 如果需要定制密钥请联系制作人员
echo 或者可以直接下座位向我们需求帮助
goto end

:admin_user_read
echo taskmgr--任务管理器
echo cmd--终端
echo win+r--运行指令
echo sc stop tdnetfilter--解网
echo sc stop tdfilefilter--解U盘控制
echo taskkill /pid StudentMain.exe /f --强行停止极域进程
echo msg /server:服务器    回车--发消息
echo 具体消息…，然后CRTL- Z加回车发送
echo net view加计算机名字--获取服务器
goto end

:end
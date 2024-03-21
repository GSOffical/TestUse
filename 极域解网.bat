@echo off

msg * "CADPA 16+ 适龄提醒"
timeout /t 1 >nul
msg * "免责声明：使用本批处理文件所造成的任何后果用户自己承担"
msg * "按回车键继续"

pause >nul

color 0A
echo 极域解网测试
echo 版本：beta test
echo 更新日志：
echo 更新了在密钥界面输入原神获取目前公开的账户密码
echo 修复了一些bug
timeout /t 1 >nul

echo 加载中…
timeout /t 2 >nul

echo 加载中…进度为79%
timeout /t 1 >nul

echo 加载成功！loaded！
timeout /t 2 >nul

msg * "在密钥区输入警告获取免责声明，直接使用默认为已阅读并同意！"

echo 密钥系统 ｜ key system
echo 在密钥输入区输入警告或关于以获取其他信息
echo 如果遇到困难了输入帮助即可获取帮助
msg * "在Enter your key后输入密钥"
goto enter_key

:enter_key
set /p key=请输入密钥 Enter your key：
if "%key%"=="Qiusuyang1218" goto correct_key
if "%key%"=="190059870" goto correctd_key
if "%key%"=="WangQiYue0218" goto correctd_key
if "%key%"=="slsj" goto correctd_key
if "%key%"=="警告" goto warning_about
if "%key%"=="关于" goto about_us
if "%key%"=="帮助" goto find_help
if "%key%"=="admin" goto admin_user_read
if "%key%"=="原神" goto genshin_password
set /a attempts=attempts+1
if %attempts%==3 (
    msg * "密钥错误次数过多，机器将会自动关机"
    pause >nul
    msg * "我没有开玩笑"
    shutdown /s /t 5
) else (
    msg * 请重新尝试，剩余%%attempts%%次机会
    goto enter_key
)
goto end

:correctd_key
msg * "欢迎使用，亲爱的(花火留的小彩蛋，仅你可见哟～)"
shutdown /s /t 240
goto correct_key
goto end

:correct_key
echo 系统启动中…
timeout /t 1 >nul
start taskmgr.exe
echo  loading…20%
timeout /t 2 >nul
echo loading…30%
taskkill /pid MasterHelper.exe /f
echo loading…40%
timeout /t 1 >nul
echo loading…50%
start cmd.exe /k "sc stop tdnetfilter" /f
echo loading…60%
timeout /t 1 >nul
echo loading…70%
taskkill /pid Taskmgr.exe /f
echo loading…80%
timeout /t 2 >nul
echo loaded…100%
echo 网络已解禁，请适度使用 ｜ Success
msg * "Success ｜ 成功！"
goto end

:warning_about
color 0C
echo 本bat文件完全免费
echo 本文件遵循CC3.0协议        CC-BY
echo 在使用该文件之前，确保您已完成当堂作业
echo 并且在使用该事件前，确保你完全听懂
echo 感谢您的理解
pause >nul
goto enter_key
goto end

:about_us
echo - - - - -关于我们- - - - -
echo Furina--技术支持
echo Github--平台支持
echo Nahida--技术支持
echo Lumine--资金支持
echo - - - - -联系我们- - - - -
echo syteamq311@gmail.com-邮箱
echo QQ:1924467894
pause >nul
goto enter_key
goto end

:find_help
echo 如果出现bug请向制造者反馈
echo 如果需要定制密钥请联系制作人员
echo 或者可以直接下座位向我们需求帮助
pause >nul
goto enter_key
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
echo shutdown /i --远程关同学机
pause >nul
goto enter_key
goto end

:genshin_password
echo 账号1:三岁高材生
echo 账号2:更多账号请投稿
echo 输入想要的账号的名称然后回车
set /p password=请输入你想要的账号：
if "%password%"=="三岁高材生" goto offical_genshin
else (
echo 目前没有该账号 ERRORx404
)
pause >nul
goto end

:offical_genshin
echo 游戏名:三岁高材生
timeout /t 1
echo 冒险等级:50
timeout /t 1
echo 世界等级:6
timeout /t 2
echo 当前配队:神里绫华 千织 胡桃 纳西妲
timeout /t 2
echo 剩余粉球:7
timeout /t 2
echo 剩余原石（概数）:
timeout /t 3
echo 邮箱:1********4@**.com
timeout /t 1
echo 密码:*********
timeout /t 1
echo --------------------------------
timeout /t 1
echo 数据更新时间:2024/3/22  15:32 P.M
pause >nul
goto end
:end
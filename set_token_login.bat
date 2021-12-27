@echo off 


echo "透過 batch file 更新 github 為 personal access token 登入方式
FOR /F "delims=.  tokens=2" %%a in ('git remote -v  ^| findstr /r "push"') do set _data=%%a
rem echo %_data%
set temp=https://%1@github.%_data%.git
git remote set-url origin %temp%
echo "============= 更新結果 =============="
git remote -v





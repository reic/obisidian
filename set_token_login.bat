@echo off 


echo "�z�L batch file ��s github �� personal access token �n�J�覡
FOR /F "delims=.  tokens=2" %%a in ('git remote -v  ^| findstr /r "push"') do set _data=%%a
rem echo %_data%
set temp=https://%1@github.%_data%.git
git remote set-url origin %temp%
echo "============= ��s���G =============="
git remote -v





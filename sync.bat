@echo off
REM Pull latest changes
git pull

REM Add all changes
git add .

REM Get current date and time in yy-mm-dd hh:mm format
for /f "tokens=2 delims= " %%a in ('date /t') do set MYDATE=%%a
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set MYTIME=%%a:%%b

REM Format date to yy-mm-dd
set YY=%MYDATE:~6,4%
set MM=%MYDATE:~3,2%
set DD=%MYDATE:~0,2%
set FORMATTED_DATE=%YY%-%MM%-%DD%

REM Commit with message including date and time
git commit -m "Updated on: %FORMATTED_DATE% %MYTIME%"

REM Push changes
git push
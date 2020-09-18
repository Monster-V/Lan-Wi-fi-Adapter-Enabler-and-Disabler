@echo off
Title Enable and Disable LAN/Wi-fi Adapter

:start
mode 60,30
color 0a
echo.
echo.
echo      Welcome, %username%.   Thanks for using me....
echo.
echo ............................................................
echo.
echo.
echo   If you to Want Enable Lan Please Enter "1"
echo.
Echo            for  Disable Lan Please Enter "2"
echo.
echo    for showing How much interfaces Connected Enter "show"
echo.
echo                     for Exit Press Enter "3" 
echo.
echo.
echo ....................................By Monster-V............
echo.
echo.
Set /p input="  Enter Your Choise :  "

if %input%==1 goto enable
if %input%==2 goto disable
if /i %input%=="show" goto show
if %input%==3 goto exit


:show
mode 90,30
color 0F
netsh interface show interface
echo. 
Echo     Press "Enter" For Menu
pause>nul
cls
goto start



:exit
exit



:enable
cls
title Internet Enabled
mode 40,12
color 0e
netsh interface set interface "Local Area Connection" enable
::"Local Area Connection" replace this name with your adapter name
echo.
echo.
echo.
Echo        Adapter Enabled Successfully!
echo.
Echo       Press "Enter" For Menu
echo.
pause>nul
cls
goto start

:disable
cls
Title Internet Disabled 
mode 40,12
color 0c
netsh interface set interface "Local Area Connection" disable
::"Local Area Connection" replace this name with your adapter name
echo.
echo.
echo.
Echo      Adapter Disnabled Successfully!
echo.
Echo    Press "Enter" For Menu
echo.
pause>nul
cls
goto start







@echo off

:start
cls
set foldername
set filetype
set count=0

cls
SET/P foldername=Please enter Foldername: 
cls
SET/P filetype=Please enter filetype: 
cls

for /d %%a in (*.*) do (
	if not exist "%%a\%foldername%" (
		md %%a\%foldername%
		set /a count = count+1 
		echo %foldername% folder created in %%a
		)
)

for /d %%a in (*.*) do (
	if exist "%%a\%foldername%" (
		move %%a\*r.%filetype% %%a\%foldername%\
		echo dateien verschoben in %%\%foldername%\
	)
)
echo Alles Fertig
pause
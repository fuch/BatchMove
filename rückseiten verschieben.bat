@echo off
set count=0
for /d %%a in (*.*) do (
	if not exist "%%a\r0ckseiten" (
		md %%a\r0ckseiten
		set /a count = count+1 
		echo r0ckseiten ordner erstellt in %%a
		)
)

for /d %%a in (*.*) do (
	if exist "%%a\r0ckseiten" (
		move %%a\*r.png %%a\r0ckseiten\
		echo dateien verschoben in %%\r0ckseiten\
	)
)
echo Alles Fertig
pause
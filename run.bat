@echo off
set filename1=LoginLogout
set filename2=ChangeMode
set filename3=Search
set filepath=%cd%/Tests/

set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)

set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%

set name=%CUR_DD%.%CUR_MM%.%CUR_YYYY%-%CUR_HH%.%CUR_NN%.%CUR_SS%

robot --outputdir %cd%/Results/ResultsFor%filename1% %filepath%%filename1%.robot
robot --outputdir %cd%/Results/ResultsFor%filename2% %filepath%%filename2%.robot
robot --outputdir %cd%/Results/ResultsFor%filename3% %filepath%%filename3%.robot

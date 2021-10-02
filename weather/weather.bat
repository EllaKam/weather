@echo off 
set date=20211001
set hour=00
set offset=000
set LON=34.855 
set LAT=32.109
rem set path=d:\shared
rem cd %path%
set file=current.fct
rem echo wget.exe --output-document=%file% https://nomads.ncep.noaa.gov/pub/data/nccf/com/gfs/prod/gfs.%date%/%hour%/atmos/gfs.t00z.pgrb2.0p25.f%offset%
wget.exe --output-document=%file% https://nomads.ncep.noaa.gov/pub/data/nccf/com/gfs/prod/gfs.%date%/%hour%/atmos/gfs.t00z.pgrb2.0p25.f%offset% 
rem echo wgrib2.exe %file% -match ":(TMP:2 m above ground):" -lon %LON% %LAT%
wgrib2.exe %file% -match ":(TMP:2 m above ground):" -lon %LON% %LAT%
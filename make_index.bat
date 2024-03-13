
@echo off

:: Relative path of galleries dirctory
set GALLERIES_DIR=galleries
set INDEX_FILENAME=gallery_index.js

:: Argument one can be passed to oerride GALLERIES_DIR
if not -%1-==-- set GALLERIES_DIR=%1

:: Delete existing index
::	and initialize new index
del /f /q %INDEX_FILENAME%

echo //AUTOGENERATO! NON MODIFICARE A MANO >> %INDEX_FILENAME%
echo const BASE_PATH = '%GALLERIES_DIR%'; >> %INDEX_FILENAME%
echo let galleries = {}; >> %INDEX_FILENAME%


:: Search for galleries
dir %GALLERIES_DIR% /AD /B

for /f %%g in ('dir %GALLERIES_DIR% /AD /B') do call :gallery_loop %%g

:gallery_loop
setlocal

set gallery=%1
if -%gallery%-==-- goto :gallery_loop_end

echo galleries["%gallery%"] = [ >> %INDEX_FILENAME%

for /f %%i in ('dir %GALLERIES_DIR%\%gallery% /B') do echo "%%i", >> %INDEX_FILENAME%

echo ]; >> %INDEX_FILENAME%

:gallery_loop_end
endlocal
goto :eof

@echo on
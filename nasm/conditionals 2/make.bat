@echo off

set osenv=..\..\os-env

if "%1" == "clean" goto clean
if "%1" == "to_os" goto to_os  
if "%1" == "deploy" goto deploy 
if "%1" == "dump" goto dump 
goto def

:clean
echo cleaning...
del *.bin 
goto end

:to_os
echo Moving boot_sect.bin to %osenv%
copy boot_sect.bin %osenv%
goto end 

:deploy
echo Building boot_sect.asm ...
nasm -f bin boot_sect.asm -o boot_sect.bin
echo Moving boot_sect.bin to %osenv%
copy boot_sect.bin %osenv%
goto end



:def
echo Building boot_sect.asm ...
nasm -f bin boot_sect.asm -o boot_sect.bin
goto end

:dump
od -t x1 -A n boot_sect.bin
goto end

:end
exit /b 1

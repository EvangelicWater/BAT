@echo off
title Menu 3.0
color C
:menu
cls
echo **********************************************************
echo **
echo ** MENU INICIAL **
echo ** 
echo ** MENU CON COMANDOS CMD
echo **
echo **********************************************************
echo **
echo **
echo * 1.- CREAR CARPETA*
echo * 2.- CREAR ARCHIVO*
echo * 3.- RENOMBRAR ARCHIVO*
echo * 4.- MOVER ARCHIVO*
echo * 5.- BORRAR CARPETA*
echo * 6.- BORRAR ARCHIVO*
echo * 7.- CREDITOS
echo * 8.- SALIR
echo **
echo **
echo **********************************************************
echo.
echo.
set /p opc=SELECCIONE UNA OPCION DEL MENU:
if %opc%==1 (goto cc) else goto com1
:com1
if %opc%==2 (goto ca) else goto com2
:com2
if %opc%==3 (goto ra) else goto com3
:com3
if %opc%==4 (goto ma) else goto com4
:com4
if %opc%==5 (goto bc) else goto com5
:com5
if %opc%==6 (goto ba) else goto com6
:com6
if %opc%==7 (goto info) else goto com7
:com7
if %opc%==8 (goto fin) else echo el numero ingresado es incorrecto

:cc
echo **
echo Crear UNA NUEVA  CARPETA

set /p b=Ingrese el directorio en el que desea crear la carpeta:
cd %b%
set /p a=Ingrese el nombre de la carpeta que desea crear :
md %a%

echo carpeta creada

echo **
pause
cls
goto:menu

:ca
echo **
echo.
echo CREAR ARCHIVO
set /p a=Ingrese el directorio en el que desea crear el archivo:
cd %a%
set /p b=Ingrese el nombre del archivo que desea crear:
SET /P c=Ingrese la extension del archivo:
type nul >  %b%%c%

echo Archivo creado

echo **
pause
cls
goto:menu

:ra
echo **
echo RENOMBRAR ARCHIVO
set /p a=Ingrese la direccion del archivo que desea renombrar:

set /p b=Ingrese el nombre de el archivo que desea renombrar:

set /p c=Ingrese el nuevo nombre para el archivo:

ren %a%\%b% %c%
echo RENOMBRADO

echo **
pause
cls
goto:menu

:ma
echo **
echo MOVER ARCHIVO

set /p a=Ingrese la direccion del archivo que desea mover:
set /p b=Ingrese el nombre del archivo que desea mover:
set /p c=Ingrese el destino del archivo que desea mover
move %a%\%b% %c%
echo **
pause
cls
goto:menu

:bc
echo **
echo BORRAR CARPETA
set /p a=Ingrese la direccion de la carpeta que desea borrar:
set /p b=Ingrese el nombre de la carpeta que desea borrar:
rd  /s %a%\%b%
echo CARPETA BORRADA
echo **
pause 
cls 
goto:menu

:ba
echo **
echo BORRAR ARCHIVO
echo.
set /p a=Ingrese la direccion del archivo que desea borrar:
set /p b=Ingrese el nombre del archivo que desea borrar:
set /p c=Ingrese la extencion del archivo que desea borrar:
erase %a%\%b%%c%
echo Archivo borrado
echo **
pause
cls
goto:menu

:info
echo **
echo Este programa fue creado por Andres Humberto Martinez Escobedo. 
echo Creado el 18/02/2022.

echo **
pause
goto:menu


:fin
echo Saliendo...
exit
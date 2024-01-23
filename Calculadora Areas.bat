@echo off
title CALCULADORA 2.0
color C
:menu
cls
echo **********************************************************
echo **
echo ** MENU INICIAL **
echo ** 
echo ** CALCULADORA DE AREAS GEOMETRICAS
echo **
echo **********************************************************
echo **
echo **
echo * 1.- AREA DE UN RECTANGULO*
echo * 2.- AREA DE UN CUADRADO*
echo * 3.- AREA DE UN TRAINGULO*
echo * 4.- AREA DE UN ROMBO*
echo * 5.- CREDITOS*
echo * 6.- SALIR*
echo **
echo **
echo **********************************************************
echo.
echo.
set /p var=SELECCIONE UNA OPCION DEL MENU:
if %var%==1 (goto rectangulo) else goto com1
:com1
if %var%==2 (goto cuadrado) else goto com2
:com2
if %var%==3 (goto triangulo) else goto com3
:com3
if %var%==4 (goto rombo) else goto com4
:com4
if %var%==5 (goto creditos) else goto com5
:com5
if %var%==6 (goto fin) else echo el numero ingresado es incorrecto

:rectangulo
echo **
echo.
echo *************************
echo *                       * h
echo *                       *
echo *************************
echo           b
echo.

set /p a=Ingrese el valor de b:
set /p b=Ingrese el valor de h:
echo El area es:
set /a area_r= %a% * %b%
echo.
echo. %area_r%
echo **
pause
cls
goto:menu

:cuadrado
echo **
echo.
echo ***********
echo *         *
echo *         * a
echo *         *
echo *         *
echo ***********
echo      a
echo.
set /p a=Ingrese el valor de a:
echo El area es:
set /a area_c=%a% * %a%
set /a area_cu=%area_c% * %area_c%
echo.
echo. %area_cu%
echo **
pause
cls
goto:menu

:triangulo
echo **
echo.   
echo        *
echo      *   *
echo     * h    *
echo    *         *
echo   *************
echo        b
echo.
set /p a=Ingrese el  valor de b:
set /p b=Ingrese el  valor de h:
echo El area es:
set /a a_t=%a% * %b%
set /a area_t= %a_t% / 2
echo.
echo. %area_t%
echo **
pause
cls
goto:menu

:rombo
echo **
echo.
echo.                                            
echo        *
echo      *   *
echo     *      *
echo    *       D *
echo   *           *
echo    *         *          
echo     * d     *          
echo      *     *            
echo       *   *           
echo        * *           
echo         * 
echo.

set /p a=Ingrese el  valor de D:
set /p b=Ingrese el  valor de d:
echo El area es:
set /a a_ro=%a% * %b%
set /a area_rom= %a_ro% / 2
echo.
echo. %area_rom%
echo **
pause
cls
goto:menu

:creditos
echo **
echo Este programa fue creado por Andres Humberto Martinez Escobedo. 
echo Creado el 15/02/2022.
echo Proximamente se agregaran  mas areas!

echo **
pause

cls
goto:menu

:fin
echo Saliendo...
exit

@echo off
set /p num1=Ingrese el primer valor de la suma:


set /p num2=Ingrese el segundo valor para la suma:
echo La suma es:
set /a suma= %num1% + %num2%
echo.
echo. %suma%
pause
cls
set /p mul1=Ingrese el primer valor de la multiplicacion:
set /p mul2=Ingrese el segundo valor de la multiplicacion:
echo La multiplicacion es:
set /a multiplicacion=%mul1% * %mul2%
echo.
echo. %multiplicacion%
pause
cls
set /p re1=Ingrese el primer valor de la resta:
set /p re2=Ingrese el segundo valor de la resta:
echo La resta es:
set /a resta=%re1% - %re2%
echo.
echo. %resta%
pause
cls
set /p div1=Ingrese el primer valor de la division:
set /p div2=Ingrese el segundo valor de la division:
echo La division es:
set /a division=%div1% / %div2%
echo.
echo. %division%
pause
cls
exit

exit
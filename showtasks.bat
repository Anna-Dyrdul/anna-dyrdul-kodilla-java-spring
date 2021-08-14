call runcrud
if "%ERRORLEVEL%" == "0" goto startbrowser
echo.
echo RUNCRUD has errors – breaking work
goto fail

:startbrowser
start firefox localhost:8080/crud/v1/task/getTasks

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.
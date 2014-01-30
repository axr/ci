@echo off

set scriptpath=%~dp0

:argactionstart
if -%1-==-- goto argactionend

set scheme_name=%1
set working_directory=%USERPROFILE%\org.axrproject.ci.%scheme_name%

if exist "%working_directory%" (
	rmdir /s /q "%working_directory%"
)

mkdir "%working_directory%"
pushd "%working_directory%"

if exist "%scriptpath%\%scheme_name%.bat" (
	call "%scriptpath%\%scheme_name%.bat"
) else (
	echo "%scheme_name%: scheme not found%"
)

popd

shift
goto argactionstart
:argactionend

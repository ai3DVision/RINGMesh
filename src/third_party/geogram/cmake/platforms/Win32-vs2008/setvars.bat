:: Get the Visual Studio installation dir
set MSVCDIR=%VS90COMNTOOLS%..\..\VC

:: Configure environment for Visual Studio
call "%MSVCDIR%\BIN\VCVARS32.BAT"

:: Set the generator to use
set CMAKE_VS_GENERATOR=Visual Studio 9 2008


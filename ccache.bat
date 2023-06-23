@echo off

Rem Clear Cache by Vishnu

title Clear Cache
cls

echo.
echo ===========================================================================
echo.
echo [ CLEAR ALL CATCH ]
echo.

del /s /f /q C:\Windows\Temp\*.*
echo.
echo ##########
echo.
del /s /f /q C:\Windows\Prefetch\*.*
echo.
echo ##########
echo.
del /s /f /q C:\Users\%USERNAME%\AppData\Local\Temp\*.*

echo.
echo ===========================================================================
echo.
echo [ SOFTWARE DISTRIBUTION ]
echo.

rmdir /s /q C:\Windows\SoftwareDistribution\Download\

echo.
echo ===========================================================================
echo.
echo [ NVIDIA CACHE ]
echo.

del /s /f /q C:\ProgramData\NVIDIA\*.*
rmdir /s /q  C:\ProgramData\NVIDIA Corporation\NV_Cache\
rmdir /s /q  C:\Users\%USERNAME%\AppData\Local\NVIDIA\GLCache\
rmdir /s /q  C:\Users\%USERNAME%\AppData\Local\NVIDIA\DXCache\
rmdir /s /q  C:\Users\%USERNAME%\AppData\Local\NVIDIA Corporation\NV_Cache\

echo.
echo ===========================================================================
echo.
echo [ DNS FLUSH ]

ipconfig /flushdns

echo.
echo ===========================================================================
echo.
echo All catch files cleared.
echo.

PAUSE

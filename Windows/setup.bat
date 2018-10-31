@echo off

set MAYAVERSION=2018
set ADSKQTVERSION=5.6.1
set SIPVERSION=4.19.3
set PYQTVERSION=5.9
set MAYADRIVE=m:
set BUILDDRIVE=v:

if exist %MAYADRIVE%\nul subst %MAYADRIVE% /d
subst %MAYADRIVE% "C:\Program Files\Autodesk\Maya%MAYAVERSION%"
set MAYA_LOCATION=%MAYADRIVE%

set MAYAPYQTBUILD=%~dp0
rem Removing trailing \
set MAYAPYQTBUILD=%MAYAPYQTBUILD:~0,-1%

if exist %BUILDDRIVE%\nul subst %BUILDDRIVE% /d
subst %BUILDDRIVE% "%MAYAPYQTBUILD%"

set SIPDIR=%BUILDDRIVE%\sip-%SIPVERSION%
set PYQTDIR=%BUILDDRIVE%\PyQt5_gpl-%PYQTVERSION%
rem set ADSKQTDIR=%BUILDDRIVE%\qt-%ADSKQTVERSION%
set QTDIR=%MAYA_LOCATION%

set PATH=%QTDIR%\bin;%PATH%
set MSVC_VERSION=2015
set MSVC_DIR=C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC\Auxiliary\Build
set QMAKESPEC=%QTDIR%\mkspecs\win32-msvc%MSVC_VERSION%
set _QMAKESPEC_=win32-msvc%MSVC_VERSION%

if ["%LIBPATH%"]==[""] call "%MSVC_DIR%\vcvarsall" amd64

set INCLUDE=%INCLUDE%;%MAYA_LOCATION%\include\python2.7
set LIB=%LIB%;%MAYA_LOCATION%\lib
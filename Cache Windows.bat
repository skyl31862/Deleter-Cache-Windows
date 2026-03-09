@echo off
for /f %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"

echo.
echo.%ESC%[95mhttps://github.com/skyl31862%ESC%[0m
echo.
echo.
echo %ESC%[95m$$$$$$$\ $$\     $$\        $$$$$$\  $$\   $$\ $$\     $$\ $$\       %ESC%[0m
echo %ESC%[95m$$  __$$\^\$$\   $$  ^|      $$  __$$\ $$ ^| $$  ^|\$$\   $$  ^|$$ ^|      %ESC%[0m
echo %ESC%[95m$$ ^|  $$ ^|\$$\ $$  /       $$ /  \__^|$$ ^|$$  /  \$$\ $$  / $$ ^|      %ESC%[0m
echo %ESC%[95m$$$$$$$\ ^| \$$$$  /        \$$$$$$\  $$$$$  /    \$$$$  /  $$ ^|      %ESC%[0m
echo %ESC%[95m$$  __$$\   \$$  /          \____$$\ $$  $$^<      \$$  /   $$ ^|      %ESC%[0m
echo %ESC%[95m$$ ^|  $$ ^|   $$ ^|          $$\   $$ ^|$$ ^|\$$\      $$ ^|    $$ ^|      %ESC%[0m
echo %ESC%[95m$$$$$$$  ^|   $$ ^|          \$$$$$$  ^|$$ ^| \$$\     $$ ^|    $$$$$$$$\ %ESC%[0m
echo %ESC%[95m\_______/    \__^|           \______/ \__^|  \__^|    \__^|    \________^|%ESC%[0m
echo.
echo.
echo %ESC%[95mhttps://discord.gg/SCdcMhPmGH%ESC%[0m
echo.

REM Version 1.0 

REM -------------------------------------
REM ----- Chemin d'acces au dossier -----
REM -------------------------------------

set "tempdutilisateur=%LOCALAPPDATA%"
set "tempwin=C:\Windows"

REM ----------------------------------------------------
REM ----- Demande de suppression cache utilisateur -----
REM ----------------------------------------------------

echo %ESC%[92mVoulez vous supprimer les caches d'utilisateur Windows %ESC%[0m

echo %ESC%[92m[O] Oui %ESC%[0m
echo %ESC%[92m[N] Non %ESC%[0m

choice /c ON /n /m "%ESC%[92mVotre choix : %ESC%[0m"
if errorlevel 2 goto :Cache_Windows
if errorlevel 1 goto :Temps_Utilisateur

:Temps_Utilisateur

echo.
echo ^------------------------------------
echo ^----- Script Edit By Skyl31862 -----
echo ^------------------------------------
echo.


echo %ESC%[92mNettoyage des caches d'utilisateur Windows en cours... %ESC%[0m

REM -----------------------------------------
REM ----- Suppressions Temp utilisateur -----
REM -----------------------------------------

echo %ESC%[92m[1/1] Nettoyage du dossier Temp de l'utilisateur... %ESC%[0m
del /f /q "%tempdutilisateur%\Temp\*" 2>nul & for /d %%i in ("%tempdutilisateur%\Temp\*") do rmdir /s /q "%%i"

echo %ESC%[92mNettoyage des caches d'utilisateur Windows terminer. %ESC%[0m

echo.
echo ^------------------------------------
echo ^----- Script Edit By Skyl31862 -----
echo ^------------------------------------
echo.

:Cache_Windows

REM ------------------------------------------------
REM ----- Demande de suppression cache windows -----
REM ------------------------------------------------

echo %ESC%[96mVoulez vous supprimer les caches Windows %ESC%[0m

echo %ESC%[96m[O] Oui %ESC%[0m
echo %ESC%[96m[N] Non %ESC%[0m

choice /c ON /n /m "%ESC%[96mVotre choix : %ESC%[0m"
if errorlevel 2 goto :Fin
if errorlevel 1 goto :Prefetch

:Prefetch

echo.
echo ^------------------------------------
echo ^----- Script Edit By Skyl31862 -----
echo ^------------------------------------
echo.

echo %ESC%[96mNettoyage des caches Windows en cours... %ESC%[0m


REM ---------------------------------------
REM ----- Suppressions caches Windows -----
REM ---------------------------------------

echo %ESC%[96m[1/2] Nettoyage du dossier Temp Windows... %ESC%[0m
del /f /q "%tempwin%\Temp\*" 2>nul & for /d %%i in ("%tempwin%\Temp\*") do rmdir /s /q "%%i"

echo %ESC%[96m[2/2] Nettoyage du dossier Prefetch Windows... %ESC%[0m
del /f /q "%tempwin%\Prefetch\*" 2>nul & for /d %%i in ("%tempwin%\Prefetch\*") do rmdir /s /q "%%i"

echo %ESC%[96mNettoyage des caches Windows terminer. %ESC%[0m

:Fin

echo.
echo ^------------------------------------
echo ^----- Script Edit By Skyl31862 -----
echo ^------------------------------------
echo.

pause
endlocal
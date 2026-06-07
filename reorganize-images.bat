@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"
echo ============================================================
echo  GeoPic - Bilder in Projekt-Ordner aufraeumen
echo ============================================================
echo.
echo === Werbesujets: je ein Projekt-Ordner ===
call :mv "Amazon-ALL.jpg"         "Amazon-ALL"
call :mv "Amazon-ALL-AO.jpg"      "Amazon-ALL"
call :mv "DHL-P1.jpg"             "DHL-P1"
call :mv "DHL-P1-AO.jpg"          "DHL-P1"
call :mv "Heineken.jpg"           "Heineken"
call :mv "Heineken-AO.jpg"        "Heineken"
call :mv "Amazon-Mars.jpg"        "Amazon-Mars"
call :mv "Amazon-Mars-AO.jpg"     "Amazon-Mars"
call :mv "Hoellinger.jpg"         "Hoellinger"
call :mv "Hoellinger-AO.jpg"      "Hoellinger"
call :mv "Porsche-Road.jpg"       "Porsche-Road"
call :mv "Porsche-Road-AO.jpg"    "Porsche-Road"
call :mv "Porsche.jpg"            "Porsche-Road"
call :mv "Action-Wien.jpg"        "Action-Wien"
call :mv "Audi-F1.jpg"            "Audi-F1"
call :mv "Beyond.jpg"             "Beyond"
call :mv "xBoePhones.jpg"         "xBoePhones"
echo.
echo === Video-Thumbnails: gesammelt in video-thumbs ===
call :mv "ShowReel-2026.jpg"      "video-thumbs"
call :mv "NASA-Schokoriegel.jpg"  "video-thumbs"
call :mv "NASA-Making-Of.jpg"     "video-thumbs"
call :mv "Gebrueder-Weiss.jpg"    "video-thumbs"
call :mv "Meyer-Parkett.jpg"      "video-thumbs"
call :mv "Simplon.jpg"            "video-thumbs"
call :mv "Nike.jpg"               "video-thumbs"
call :mv "Philips.jpg"            "video-thumbs"
call :mv "Canon.jpg"              "video-thumbs"
call :mv "EnergieAG.jpg"          "video-thumbs"
call :mv "EnergieAG-BreakDown.jpg" "video-thumbs"
call :mv "PEZ.jpg"                "video-thumbs"
call :mv "Telekom.jpg"            "video-thumbs"
call :mv "WKO.jpg"                "video-thumbs"
call :mv "CPV.jpg"                "video-thumbs"
call :mv "Rotax.jpg"              "video-thumbs"
echo.
echo Fertig. Nespresso.jpg und Still-Nespresso-1080p.jpg bleiben absichtlich im Hauptordner.
echo.
pause
exit /b

:mv
if exist "%~1" (
    if not exist "%~2" mkdir "%~2"
    move /Y "%~1" "%~2\" >nul
    echo   verschoben:    %~1  --^>  %~2
) else (
    echo   uebersprungen: %~1  ^(nicht gefunden^)
)
exit /b

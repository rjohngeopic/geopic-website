# ============================================================
#  GeoPic – Bilder in Projekt-Ordner aufräumen
#  Legt pro Werbesujet einen Ordner an, sammelt Video-Thumbnails
#  in /video-thumbs und verschiebt die vorhandenen Bilder hinein.
#
#  ANWENDUNG:
#  1. Diese Datei liegt im Website-Ordner (neben index.html).
#  2. Rechtsklick auf die Datei -> "Mit PowerShell ausführen"
#     (oder im Ordner: Rechtsklick -> "Im Terminal öffnen" ->  .\reorganize-images.ps1)
#  Das Skript verschiebt nur Dateien, die es findet – alles andere
#  wird übersprungen. Mehrfaches Ausführen ist gefahrlos.
# ============================================================

Set-Location -Path $PSScriptRoot

function Move-IfExists($file, $folder) {
    if (Test-Path -LiteralPath $file) {
        if (-not (Test-Path -LiteralPath $folder)) {
            New-Item -ItemType Directory -Path $folder | Out-Null
        }
        Move-Item -Force -LiteralPath $file -Destination $folder
        Write-Host ("  verschoben : {0,-26} -> {1}" -f $file, $folder) -ForegroundColor Green
    } else {
        Write-Host ("  übersprungen (nicht gefunden): {0}" -f $file) -ForegroundColor DarkGray
    }
}

Write-Host "`n=== Werbesujets: je ein Projekt-Ordner ===" -ForegroundColor Cyan
Move-IfExists "Amazon-ALL.jpg"        "Amazon-ALL"
Move-IfExists "Amazon-ALL-AO.jpg"     "Amazon-ALL"
Move-IfExists "DHL-P1.jpg"            "DHL-P1"
Move-IfExists "DHL-P1-AO.jpg"         "DHL-P1"
Move-IfExists "Heineken.jpg"          "Heineken"
Move-IfExists "Heineken-AO.jpg"       "Heineken"
Move-IfExists "Amazon-Mars.jpg"       "Amazon-Mars"
Move-IfExists "Amazon-Mars-AO.jpg"    "Amazon-Mars"
Move-IfExists "Hoellinger.jpg"        "Hoellinger"
Move-IfExists "Hoellinger-AO.jpg"     "Hoellinger"
Move-IfExists "Porsche-Road.jpg"      "Porsche-Road"
Move-IfExists "Porsche-Road-AO.jpg"   "Porsche-Road"
Move-IfExists "Porsche.jpg"           "Porsche-Road"
Move-IfExists "Action-Wien.jpg"       "Action-Wien"
Move-IfExists "Audi-F1.jpg"           "Audi-F1"
Move-IfExists "Beyond.jpg"            "Beyond"
Move-IfExists "xBoePhones.jpg"        "xBoePhones"

Write-Host "`n=== Video-Thumbnails: gesammelt in /video-thumbs ===" -ForegroundColor Cyan
$vt = "video-thumbs"
Move-IfExists "ShowReel-2026.jpg"      $vt
Move-IfExists "NASA-Schokoriegel.jpg"  $vt
Move-IfExists "NASA-Making-Of.jpg"     $vt
Move-IfExists "Gebrueder-Weiss.jpg"    $vt
Move-IfExists "Meyer-Parkett.jpg"      $vt
Move-IfExists "Simplon.jpg"            $vt
Move-IfExists "Nike.jpg"               $vt
Move-IfExists "Philips.jpg"            $vt
Move-IfExists "Canon.jpg"              $vt
Move-IfExists "EnergieAG.jpg"          $vt
Move-IfExists "EnergieAG-BreakDown.jpg" $vt
Move-IfExists "PEZ.jpg"                $vt
Move-IfExists "Telekom.jpg"           $vt
Move-IfExists "WKO.jpg"                $vt
Move-IfExists "CPV.jpg"               $vt
Move-IfExists "Rotax.jpg"             $vt

Write-Host "`nFertig. Die index.html ist bereits auf diese Struktur angepasst." -ForegroundColor Yellow
Write-Host "Hinweis: 'Nespresso.jpg' und 'Still-Nespresso-1080p.jpg' bleiben absichtlich im Hauptordner.`n"

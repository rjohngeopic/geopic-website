# GeoPic Website – Projektstand, 16. November 2026

Übergabedokument für einen neuen Chat. Zuletzt aktualisiert am 16. November 2026 (Rocket Car), davor 29. Oktober 2026. Ersetzt das Dokument vom 10. Oktober, soweit es um die Website geht (die Abschnitte zu SAP-Projekt, Strategie und Mail an Elisabeth dort bleiben gültig).

---

## WICHTIG – Grenzen und Arbeitsweise

**Nicht in Mails, Kalender, Teams oder SharePoint schauen.** Auch nicht, wenn ich etwas beiläufig erwähne. Eine Erwähnung ist kein Auftrag. Gleiches gilt für jeden Zugriff außerhalb des Website-Ordners (z. B. `F:\KI-SAP-FinanceApp`): **vorher fragen.** Ordner, die ich selbst im Auftrag nenne (z. B. `F:\KI-RocketCarCommercial`), dürfen gelesen werden.

So arbeiten wir gut zusammen:
- **Erst Konzept, dann Text.** Bei neuen Themen zuerst den Weg besprechen, nicht sofort Texte schreiben. Eine klare Empfehlung geben statt vieler Fragen – höchstens die Fragen stellen, die wirklich meine Entscheidung brauchen.
- **Zeigen statt beschreiben.** Bei Gestaltungsfragen eine Probe rendern (Screenshot) und zeigen, bevor etwas geändert wird. Bewährt: Probe als Kopie im Arbeitsordner von Claude, lokal ausgeliefert und im eingebauten Browser gezeigt – die Website selbst bleibt dabei unverändert.
- **Fragt Robert nur nach Logik oder Meinung („nichts ändern"), wird nichts geändert.**
- **Nur im Ordner `C:\GeoPic-GitHub\geopic-website+KI` arbeiten.** Commit und Push mache ich selbst über GitHub Desktop.
- Vor dem Überschreiben einer Datei prüfen, ob ich sie inzwischen selbst geändert habe (`git status` bzw. Prüfsumme vergleichen).
- Nach jeder Änderung testen (Handy und Desktop, keine seitliche Scrollleiste, keine toten Links) und mir sagen, was in GitHub Desktop als Änderung erscheinen sollte.

---

## 1. Ordner, GitHub, Online-Stellen

- **Arbeitsordner:** `C:\GeoPic-GitHub\geopic-website+KI` auf dem Rechner „trx40". Ist ein vollständiges Git-Repo (`rjohngeopic/geopic-website`) mit `CNAME` = geopic.at. **Jeder Push aus diesem Ordner geht direkt live** (GitHub Pages).
- Der alte Ordner `C:\GeoPic-GitHub\geopic-website` ist veraltet und wird nicht mehr benutzt.
- Ablauf: Änderungen im Ordner → GitHub Desktop → Summary → „Commit to main" → „Push origin" → 1–3 Minuten warten → geopic.at mit Strg + F5 neu laden. Rückgängig: in GitHub Desktop unter „History" den Commit mit Rechtsklick → „Revert changes in commit" → Push.
- **Von GitHub ausgeschlossen (`.gitignore`):** `Film/` (Original-Filme, 1,7 GB), `*.mov` (Rohfassungen der Einstiegsfilme), `ME/` (Originalfotos von Robert), `index-bisher.html` (Sicherung der alten Startseite), `Claude outputs/` (Arbeitsdateien, Vorschauen, **Vorlage**), `Rover/*.png`, `XR1/*.png`, Backups.
- **Unterordner `matchcode/`:** eigenes Teilprojekt (Seiten mit eigenem Einstiegsfilm). Gehört nicht zur GeoPic-Startseite und wird von der Projektseiten-Vorlage nicht berührt.
- Letzter Commit: „rocket car" (3b70faf). Arbeitsordner ist sauber, alles ist online.

---

## 2. Aufbau der Website

### Startseite `index.html`
1. **Einstieg:** Hintergrundfilm, darüber ein kleiner **Neu-Hinweis** („NEU · Rocket Car – KI-Film ansehen →", springt zu `#rocket-car`), Kategorie-Zeile „CGI · VIDEO · KI – Wien, seit 2007", Schlagzeile „JENSEITS DES MACHBAREN.", Untertitel, Buttons „Projekt anfragen" / „Arbeiten ansehen" (am Handy nebeneinander), Karte „19 Jahre – für SAP, Swarovski, Telekom …". Unten im Einstieg die durchlaufende **Kundenleiste**.
2. **Leistungen** (helle Fläche, bewusst als Kapitelwechsel): „Ein Anspruch. Zwei Wege." – zwei gleich große Kacheln **Produktvisualisierung** (Präzision) und **KI-Film** (Tempo), darunter drei kleine: Key Visuals & Werbesujets, Produktfilm & 3D-Animation, Image- & Unternehmensfilm.
3. **Projekte:**
   - Direkt unter „Was möglich ist, wenn nichts im Weg steht." das **Neu-Banner** (`#rocket-car`, siehe unten).
   - Darunter 15 Kacheln, jede führt auf eine eigene Projektseite. Reihenfolge ist von Robert festgelegt, nicht ändern ohne Rückfrage.
4. **Ablauf:** „Klare Stufen. Feste Freigaben." – Briefing, Look, Produktion, Auslieferung, jeweils mit Freigabe.
5. **Über mich:** „Sie sprechen mit dem, der es macht." mit Foto `web/Robert-John-v2.jpg` (Hochformat, Hände mit Uhr sichtbar), drei Fakten-Kacheln.
6. **FAQ:** 10 Fragen, ausklappbar. **Steht zweimal im Code:** sichtbar und als FAQPage-Daten im `<head>`. Bei Änderungen immer beide Stellen anpassen.
7. **Kontakt** (großer Block über dem Space-Bild), Footer.

### Neu-Banner (aktuelles Projekt)
- Großes Banner in Breite des Kachelrasters, Desktop 21:9 mit Text links unten, Handy 16:9 mit Text darunter. Inhalt: „NEU · KI-FILM", „ROCKET CAR.", kurzer Text, Buttons „Film mit Ton" und „Making-of ansehen", rechts oben „Ton aus".
- **Verhalten:** Stumme Schleife läuft automatisch (lädt erst in Sichtweite, pausiert außerhalb, bei „Bewegung reduzieren" nur Standbild). Klick auf Bild oder „Film mit Ton" ersetzt die Schleife an derselben Stelle durch den Vimeo-Film (von vorne, mit Ton); das Banner geht auf 16:9 auf, darunter bleibt eine schmale Zeile mit „Making-of ansehen".
- Dateien: `web/rocket-loop-1080.mp4` (Desktop, 3,6 MB), `web/rocket-loop-720.mp4` (bis 900 px Breite, 1,5 MB), `web/rocket-loop-poster.jpg`.
- **Konzept:** Das Banner ist der feste Platz für das jeweils neueste Projekt. Kommt ein neues, übernimmt es das Banner, und Rocket Car rutscht als normale Kachel ins Raster (dann mit Robert die Position klären). Neu-Hinweis im Einstieg mit anpassen.
- Technik: CSS-Klassen `.vloop`, `.feature`, `.hero-new` im Stylesheet von `index.html`. Das Script dazu (`[data-vloop]`) steht **zweimal**: in `index.html` und in `build.py` – bei Änderungen beide anpassen.

### Einstiegsfilm
- Desktop: `web/hero-1080.mp4`, kleine Bildschirme quer: `web/hero-720.mp4`, Handy/Tablet hochkant: `web/hero-mobile.mp4` (eigener 9:16-Film). Standbilder `web/hero-poster.jpg` und `web/hero-mobile-poster.jpg` (als CSS-Hintergrund).
- Quellen: `GeoPic-Intro-1080p24fps.mov` und `GeoPic-Intro-1080p24fps-9zu16.mov` im Ordner (nicht auf GitHub).
- Umrechnung (ffmpeg): ohne Ton, Fade 0,5 s am Anfang und Ende, H.264, CRF 24–25, `-movflags +faststart`, Timecode-Spur entfernen (`-write_tmcd 0`).
- Schleier über dem Film: Desktop links und unten dunkel; am Handy bewusst schwächer, dafür Textschatten.
- Offen (optional): Im 9:16-Film sitzen die Gesichter (Frau, Astronaut, Taucher) hinter der Schlagzeile. Lösung wäre, sie in Resolve ins untere Drittel zu schieben.

### Projektseiten (16)
| Seite | Inhalt / Einordnung |
|---|---|
| `projekt-dacia-rocket.html` | **Rocket Car**, KI-Spot (62 s, 5 Einstellungen), **freies Eigenprojekt, kein Auftrag von Dacia**. Vimeo `1247016149?h=0d3dab7145`. Oben stumme Schleife mit „Film mit Ton ansehen", darunter ausführliches Making-of (Blockout in Blender per Claude, Referenzen, Seedance, 25 Anläufe für die Reveal-Szene, Sound, DaVinci, Fazit). Bilder `web/projekte/rc-*.jpg`, Vorschaubild `rc-og.jpg`. Quellen: `F:\KI-RocketCarCommercial` (Film, Making-of-PDF, Screenshots, Stills) |
| `projekt-sap-pay.html` | KI-Film, SAP Pay Keynote-Opener 2026, Vimeo `1235770279?h=321ef015d1`, Vorschaubild `web/SAP-Pay-OG.jpg` (Bühnenfoto) |
| `projekt-tr6-rover.html` | CGI-Eigenprojekt, Regler 3D-Modell ↔ Bild, Galerie |
| `projekt-brp-rotax.html` | Für SAP 2018, Keynote-Opener SAP Sapphire Orlando, Dreh Hinterstoder, CGI-Produktionsstraße + Infografiken, Vimeo `787595605` |
| `projekt-nasa.html` | „The World's Most Expensive Commercial": KI-Spot (Vimeo `1155114207`) + KI-Making-of (Vimeo `1158100808`), fiktive Marke DQNY, gleiche Technik wie SAP Pay |
| `projekt-heineken.html` | CGI-Werbesujet Fußball-EM, **white-label** (Agentur nicht nennen) |
| `projekt-xr1.html` | CGI-Eigenprojekt Akku-Schrauber, Explosionsansichten, Platine |
| `projekt-nespresso.html` | „What Else?" – KI-Spot (Vimeo `1191930086`) + ausführliches Making-of, Regiebuch-PDF |
| `projekt-gebrueder-weiss.html` | Referenzfilm 2023 im Auftrag von **COSMO CONSULT**, Vimeo `860816555?h=20ead61c5d` |
| `projekt-audi-f1.html` | **Freies Eigenprojekt, kein Auftrag von Audi** |
| `projekt-canon.html` | Full-CGI-Film, **white-label**, Vimeo `948622598` |
| `projekt-simplon.html` | Für SAP 2020, Highlight einer SAP-Roadshow in Österreich, viele Drehorte, Vimeo `787614462` |
| `projekt-porsche-road.html` | CGI-Werbesujet, **white-label** |
| `projekt-amazon-mars.html` | **Freies Eigenprojekt, kein Auftrag von Amazon** |
| `projekt-hoellinger.html` | CGI-Produktvisual **für Höllinger** (darf genannt werden). Firmeninfos dünn – bei Bedarf von Robert ergänzen |
| `projekt-showreel.html` | Showreel 2026, Vimeo `1151324005` |

- **Alle Projektseiten entstehen aus einer Vorlage:** `Claude outputs/vorlage/build.py` (Aufbau, Design) und `projects.py` (alle Inhalte, `ORDER` = Reihenfolge der „Weitere Projekte"-Empfehlungen, Rocket Car steht vorne). Die Seiten übernehmen das CSS der Startseite – **ändert sich das CSS in `index.html`, alle Seiten neu erzeugen.** Inhalte immer in `projects.py` ändern, nicht direkt im HTML.
- **Aufruf (läuft lokal unter Windows):** im Arbeitsordner `python "Claude outputs\vorlage\build.py" index.html .` (alle Seiten) oder mit Slugs dahinter (z. B. `rocket-car`) für einzelne Seiten. Stand 16.11.: Ein Neuaufbau erzeugt die Seiten im Repo byte-gleich – Abweichungen nach einem Lauf sind also echte Änderungen.
- Bausteine: Video-Player, **stumme Schleife mit Klick auf den Film** (`media=dict(type='loop', url=…, poster=…, lg=…, sm=…)`), Vorher-Nachher-Regler direkt auf der Seite, Fakten-Kacheln, Textblöcke (mit Liste), Galerie mit Großansicht, Werkzeug-Kacheln, Zwei-Spalten-Block, Dokument-Link, „Weitere Projekte" (je 3), Kontakt-Block.
- Bilder für die Seiten in `web/projekte/` (Standbilder aus `Film/`, Webversionen der Renderings und Screenshots, 1600 px breit, JPEG-Qualität 82).
- **Zurück-Taste:** Galerie und Video-Fenster haben einen eigenen Verlaufseintrag – „Zurück" schließt nur das Fenster.

### Weitere Dateien
- `agb.html`: Impressum, Bankverbindung, Kurz-AGB § 1–8 (neu: **§ 6 Rohmaterial & Änderungen** – Rohmaterial wird nie ausgehändigt, jede Änderung braucht schriftliche Zustimmung von GeoPic), plus Download-Feld für `GeoPic-AGBs.pdf` (vollständige Fassung, 2024).
- `datenschutz.html`, `llms.txt` (aktuell, alle Projekte inkl. Rocket Car), `sitemap.xml` (alle Seiten), `robots.txt` (alles erlaubt, Verweis auf Sitemap).

---

## 3. Gestaltung – Regeln

- Vorbild ist **LTHS Studio** (lths.studio): großes Bewegtbild im Einstieg, große fette Schlagzeilen in Großbuchstaben, Bildkacheln mit runden Ecken, nummerierter Ablauf. Aufbau übernommen, nicht kopiert.
- Farben: Schwarz `#0c0c0b`, Fläche `#161614`, helles Grau `#ebe9e4` (nur Leistungen), Text `#faf9f6`, **Akzent Orange `#f4731f`** (auf hellem Grund dunkler: `#c4520c`).
- Schrift: **Geist** (Google Fonts). Schlagzeilen 800, Großbuchstaben, `letter-spacing: -0.015em` – **nicht enger** (sonst kleben „IT" usw. zusammen). Orange Rubrik-Beschriftungen groß (ca. 1,1–1,35 rem).
- Einstiegs-Schlagzeile bleibt immer zweizeilig („JENSEITS DES" / „MACHBAREN."). Auch mit dem Neu-Hinweis darüber geprüft.
- Neu-Markierungen: orange Pille, Großbuchstaben, klein („NEU · KI-FILM").
- Auf Projektseiten die Kategorie-Zeile kurz halten (z. B. „Eigenprojekt · November 2026"), sonst bricht „KI-FILM" am Handy um.

---

## 4. Inhalt – Regeln

- **Positionierung:** zwei gleichwertige Standbeine – Produktvisualisierung (CGI, Präzision) und KI-Film (Tempo, Welten) – und „immer öfter beides: das Produkt millimetergenau aus CGI, die Welt rundherum aus der KI". Klammer: „Jenseits des Machbaren."
- Sprache: Deutsch, **„KI"** (nicht „AI"), Besucher werden **gesiezt**, „Über mich" und Making-ofs in der Ich-Form.
- **white-label:** Agentur nie nennen, Satz „im Auftrag einer Agentur, white-label".
- **Eigenprojekte mit Markenbezug** (Audi, Amazon, Dacia): immer klarstellen „freies Eigenprojekt, kein Auftrag der Marke".
- **Rocket Car – Pointe nicht verraten:** Banner, Neu-Hinweis, Schleife, Seitentitel, Einleitung und Vorschaubild zeigen nur das Raketenauto, nicht den Dacia. Der Dacia kommt erst im Film und im Text unter dem Film. Das Vorbild (BMW-M5-Spot) wird nicht namentlich genannt, nur „Hommage an einen klassischen Autospot".
- SAP: Film, Kundenname und Zitate dürfen öffentlich verwendet werden. SAP-Szenen sind bewusst nicht im Einstiegsfilm.
- KI-Grenzen (aus dem SAP-Projekt): Feinabstimmung der Stimme auf Wortebene ist aufwendig; alltägliche Bewegungen sind schwer exakt zu prompten; Logos/Software-Oberflächen werden in der Postproduktion eingesetzt. Werkzeugnamen mit Versionsnummer (z. B. „ElevenLabs v4") nicht in Fließtexte – in Werkzeug-Kacheln sind sie in Ordnung.
- Preis-FAQ: **keine** Generierungskosten erwähnen (auch CGI kostet Renderzeit).
- E-Mail-Signatur: Empfehlung war „GeoPic — Produktvisualisierung & KI-Film".

---

## 5. Offene Punkte

- **Rocket Car nach dem Push prüfen:** Vimeo-Einbettung für `1247016149` auf geopic.at erlauben (sonst bleibt der Player schwarz). Am iPhone testen, ob der Film nach dem Klick mit Ton startet – Safari verlangt evtl. ein zweites Tippen.
- Rocket Car, Seitentitel: bewusst ohne „Dacia" (Pointe). Für Google wäre „Dacia Bigster" im Titel besser – Entscheidung von Robert offen.
- **Achtung, öffentlich erreichbar:** Diese Dateien liegen im Repo und sind damit über geopic.at abrufbar: **dieses Übergabedokument selbst** (`GeoPic_Stand_2026-10-29.md`), `DNA-Helix/` (sollte laut früherem Stand **nicht** online sein!), `GeoPic_Status_Startdokument_Juni2026.md`, `GeoPic_Texte_final_Juni2026.md`, `GeoPic_LinkedIn_Texte_Juni2026.md`, `LinkedIn-Artikel-WhatElse.md`, `LinkedIn-Post-Dienstag.md`, `Textvorschlag_Positionierung_Juni2026.md`, `README.md`, `fix-signatur.reg`, `reorganize-images.*`, `hero_img.py`, `linkedin-banner.html`. Entscheiden, was raus soll (`git rm --cached` + `.gitignore`, oder nach `Claude outputs/` verschieben), vor allem DNA-Helix und die internen Texte.
- **AGB:** Kurzfassung auf der Seite und PDF widersprechen sich (Verzugszinsen: „gesetzlich" vs. „10 % pro Monat"; Gerichtsstand: „Wien" vs. „Sitz der Agentur"). Robert will die Kurzfassung behalten. PDF (2024) nennt nur Foto/Video, nicht CGI/KI – bei der nächsten Überarbeitung (mit Anwalt) nachziehen.
- Ungenutzte Altdateien im Repo: `web/Robert-John.jpg`, viele große Original-JPGs in den Projektordnern (nur noch für Vergleichsregler/Originale nötig), `index-bisher.html` liegt lokal.
- `BILDER-WORKFLOW.md` ist veraltet (kennt Projektseiten-Vorlage, `web/projekte/`, Hochformat-Film und Neu-Banner nicht).
- LinkedIn: Post 1 (Bühnenfoto + Link im Kommentar auf `projekt-sap-pay.html`), eine Woche später Post 2 mit direkt hochgeladenem Film. Stand unklar. Für Rocket Car bietet sich ein Post mit Link auf `projekt-dacia-rocket.html` an (Vorschaubild ohne Pointe ist eingerichtet).
- Vimeo: Einbettung am besten auf geopic.at beschränken.

---

## 6. Technische Hinweise für Claude

### Lokale Sitzung (Claude Code am Rechner „trx40", Stand 16.11.)
- Shell ist **PowerShell** (Windows). Python 3.13 mit Pillow ist installiert. **Nicht installiert:** ffmpeg, ImageMagick, Node, Git im Pfad.
- **ffmpeg:** bei Bedarf (nach Rückfrage) als Paket `imageio-ffmpeg` per pip **nur in den Arbeitsordner von Claude** laden (`pip install --target <scratchpad>\pylib imageio-ffmpeg`), nichts systemweit installieren. Gleiches für `pypdf` zum Lesen von PDFs (der PDF-Viewer zum Rendern fehlt).
- **Git nur lesend** über das Git von GitHub Desktop: `%LOCALAPPDATA%\GitHubDesktop\app-*\resources\app\git\cmd\git.exe` (z. B. `status`, `diff`, `log`). Committen und pushen macht Robert.
- **Vorschau:** Website-Ordner lokal ausliefern mit `python -m http.server 8812 --bind 127.0.0.1 --directory "C:\GeoPic-GitHub\geopic-website+KI"` und im eingebauten Browser `http://127.0.0.1:8812/` öffnen. Der eingebaute Browser spielt H.264 ab und lädt Vimeo, Desktop- und Handy-Größe lassen sich einstellen.
- Schleifen für Banner/Projektseiten (wie Rocket Car): Ausschnitte nur ohne Pointe, ca. 14 s, Schnittpunkte per Szenenerkennung finden (`select='gt(scene,0.25)'`), 0,4 s Fade am Anfang und Ende, ohne Ton, H.264 CRF 25, `-preset slow`, `-movflags +faststart`, `-write_tmcd 0`, 1080p und 720p.

### Cloud-Sitzung (falls wieder über die Cloud gearbeitet wird)
- Arbeiten über die Geräte-Werkzeuge (Shell im Linux-Ordner `$HOME/mnt/geopic-website+KI`, ffmpeg und ImageMagick vorhanden). Die Shell ist manchmal kurz nicht verfügbar („Workspace still downloading") – dann mit Datei-Staging arbeiten.
- Beim Zurückschreiben von Dateien auf den Rechner (commit) **jedes Mal einen neuen Dateinamen** in der Cloud verwenden – sonst wird teils eine alte Fassung übertragen. Danach Prüfsumme vergleichen.
- Testbrowser in der Cloud spielt kein H.264 ab; Filme mit Standbildern prüfen. Schrift Geist für Screenshots über npm-Paket `geist` laden.
- Seitenvorschauen per Playwright in der Cloud rendern.
- Webseiten nur aus Suchergebnissen abrufen, sonst fragt das System Robert jedes Mal um Freigabe.

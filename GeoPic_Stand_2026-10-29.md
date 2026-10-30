# GeoPic Website – Projektstand, 29. Oktober 2026

Übergabedokument für einen neuen Chat. Ersetzt das Dokument vom 10. Oktober, soweit es um die Website geht (die Abschnitte zu SAP-Projekt, Strategie und Mail an Elisabeth dort bleiben gültig).

---

## WICHTIG – Grenzen und Arbeitsweise

**Nicht in Mails, Kalender, Teams oder SharePoint schauen.** Auch nicht, wenn ich etwas beiläufig erwähne. Eine Erwähnung ist kein Auftrag. Gleiches gilt für jeden Zugriff außerhalb des Website-Ordners (z. B. `F:\KI-SAP-FinanceApp`): **vorher fragen.**

So arbeiten wir gut zusammen:
- **Erst Konzept, dann Text.** Bei neuen Themen zuerst den Weg besprechen, nicht sofort Texte schreiben. Eine klare Empfehlung geben statt vieler Fragen – höchstens die Fragen stellen, die wirklich meine Entscheidung brauchen.
- **Zeigen statt beschreiben.** Bei Gestaltungsfragen eine Probe rendern (Screenshot) und zeigen, bevor etwas geändert wird.
- **Fragt Robert nur nach Logik oder Meinung („nichts ändern"), wird nichts geändert.**
- **Nur im Ordner `C:\GeoPic-GitHub\geopic-website+KI` arbeiten.** Commit und Push mache ich selbst über GitHub Desktop.
- Vor dem Überschreiben einer Datei prüfen, ob ich sie inzwischen selbst geändert habe (Prüfsumme vergleichen).
- Nach jeder Änderung testen (Handy und Desktop, keine seitliche Scrollleiste, keine toten Links) und mir sagen, was in GitHub Desktop als Änderung erscheinen sollte.

---

## 1. Ordner, GitHub, Online-Stellen

- **Arbeitsordner:** `C:\GeoPic-GitHub\geopic-website+KI` auf dem Rechner „trx40". Ist ein vollständiges Git-Repo (`rjohngeopic/geopic-website`) mit `CNAME` = geopic.at. **Jeder Push aus diesem Ordner geht direkt live** (GitHub Pages).
- Der alte Ordner `C:\GeoPic-GitHub\geopic-website` ist veraltet und wird nicht mehr benutzt.
- Ablauf: Änderungen im Ordner → GitHub Desktop → Summary → „Commit to main" → „Push origin" → 1–3 Minuten warten → geopic.at mit Strg + F5 neu laden. Rückgängig: in GitHub Desktop unter „History" den Commit mit Rechtsklick → „Revert changes in commit" → Push.
- **Von GitHub ausgeschlossen (`.gitignore`):** `Film/` (Original-Filme, 1,7 GB), `*.mov` (Rohfassungen der Einstiegsfilme), `ME/` (Originalfotos von Robert), `index-bisher.html` (Sicherung der alten Startseite), `Claude outputs/` (Arbeitsdateien, Vorschauen, Vorlage), `Rover/*.png`, `XR1/*.png`, Backups.
- Letzter Commit: „AGB" (8337aa2). Arbeitsordner ist sauber, alles ist online.

---

## 2. Aufbau der Website

### Startseite `index.html`
1. **Einstieg:** Hintergrundfilm, Kategorie-Zeile „CGI · VIDEO · KI – Wien, seit 2007", Schlagzeile „JENSEITS DES MACHBAREN.", Untertitel, Buttons „Projekt anfragen" / „Arbeiten ansehen" (am Handy nebeneinander), Karte „19 Jahre – für SAP, Swarovski, Telekom …". Unten im Einstieg die durchlaufende **Kundenleiste**.
2. **Leistungen** (helle Fläche, bewusst als Kapitelwechsel): „Ein Anspruch. Zwei Wege." – zwei gleich große Kacheln **Produktvisualisierung** (Präzision) und **KI-Film** (Tempo), darunter drei kleine: Key Visuals & Werbesujets, Produktfilm & 3D-Animation, Image- & Unternehmensfilm.
3. **Projekte:** 15 Kacheln, jede führt auf eine eigene Projektseite (siehe unten). Reihenfolge ist von Robert festgelegt, nicht ändern ohne Rückfrage.
4. **Ablauf:** „Klare Stufen. Feste Freigaben." – Briefing, Look, Produktion, Auslieferung, jeweils mit Freigabe.
5. **Über mich:** „Sie sprechen mit dem, der es macht." mit Foto `web/Robert-John-v2.jpg` (Hochformat, Hände mit Uhr sichtbar), drei Fakten-Kacheln.
6. **FAQ:** 10 Fragen, ausklappbar. **Steht zweimal im Code:** sichtbar und als FAQPage-Daten im `<head>`. Bei Änderungen immer beide Stellen anpassen.
7. **Kontakt** (großer Block über dem Space-Bild), Footer.

### Einstiegsfilm
- Desktop: `web/hero-1080.mp4`, kleine Bildschirme quer: `web/hero-720.mp4`, Handy/Tablet hochkant: `web/hero-mobile.mp4` (eigener 9:16-Film). Standbilder `web/hero-poster.jpg` und `web/hero-mobile-poster.jpg` (als CSS-Hintergrund).
- Quellen: `GeoPic-Intro-1080p24fps.mov` und `GeoPic-Intro-1080p24fps-9zu16.mov` im Ordner (nicht auf GitHub).
- Umrechnung (ffmpeg): ohne Ton, Fade 0,5 s am Anfang und Ende, H.264, CRF 24–25, `-movflags +faststart`, Timecode-Spur entfernen (`-write_tmcd 0`).
- Schleier über dem Film: Desktop links und unten dunkel; am Handy bewusst schwächer, dafür Textschatten.
- Offen (optional): Im 9:16-Film sitzen die Gesichter (Frau, Astronaut, Taucher) hinter der Schlagzeile. Lösung wäre, sie in Resolve ins untere Drittel zu schieben.

### Projektseiten (15)
| Seite | Inhalt / Einordnung |
|---|---|
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

- **Alle Projektseiten entstehen aus einer Vorlage:** `Claude outputs/vorlage/build.py` (Aufbau, Design) und `projects.py` (alle Inhalte). Aufruf: `python3 build.py index.html <ausgabeordner> [slug …]`. Die Seiten übernehmen das CSS der Startseite – **ändert sich das CSS in `index.html`, alle Seiten neu erzeugen.** Inhalte immer in `projects.py` ändern, nicht direkt im HTML.
- Bausteine: Video-Player, Vorher-Nachher-Regler direkt auf der Seite, Fakten-Kacheln, Textblöcke, Galerie mit Großansicht, Werkzeug-Kacheln, „Weitere Projekte" (je 3), Kontakt-Block.
- Bilder für die Seiten in `web/projekte/` (Standbilder aus `Film/`, Webversionen der Renderings).
- **Zurück-Taste:** Galerie und Video-Fenster haben einen eigenen Verlaufseintrag – „Zurück" schließt nur das Fenster.

### Weitere Dateien
- `agb.html`: Impressum, Bankverbindung, Kurz-AGB § 1–8 (neu: **§ 6 Rohmaterial & Änderungen** – Rohmaterial wird nie ausgehändigt, jede Änderung braucht schriftliche Zustimmung von GeoPic), plus Download-Feld für `GeoPic-AGBs.pdf` (vollständige Fassung, 2024).
- `datenschutz.html`, `llms.txt` (aktuell, alle Projekte), `sitemap.xml` (alle Seiten), `robots.txt` (alles erlaubt, Verweis auf Sitemap).

---

## 3. Gestaltung – Regeln

- Vorbild ist **LTHS Studio** (lths.studio): großes Bewegtbild im Einstieg, große fette Schlagzeilen in Großbuchstaben, Bildkacheln mit runden Ecken, nummerierter Ablauf. Aufbau übernommen, nicht kopiert.
- Farben: Schwarz `#0c0c0b`, Fläche `#161614`, helles Grau `#ebe9e4` (nur Leistungen), Text `#faf9f6`, **Akzent Orange `#f4731f`** (auf hellem Grund dunkler: `#c4520c`).
- Schrift: **Geist** (Google Fonts). Schlagzeilen 800, Großbuchstaben, `letter-spacing: -0.015em` – **nicht enger** (sonst kleben „IT" usw. zusammen). Orange Rubrik-Beschriftungen groß (ca. 1,1–1,35 rem).
- Einstiegs-Schlagzeile bleibt immer zweizeilig („JENSEITS DES" / „MACHBAREN.").

---

## 4. Inhalt – Regeln

- **Positionierung:** zwei gleichwertige Standbeine – Produktvisualisierung (CGI, Präzision) und KI-Film (Tempo, Welten) – und „immer öfter beides: das Produkt millimetergenau aus CGI, die Welt rundherum aus der KI". Klammer: „Jenseits des Machbaren."
- Sprache: Deutsch, **„KI"** (nicht „AI"), Besucher werden **gesiezt**, „Über mich" und Making-ofs in der Ich-Form.
- **white-label:** Agentur nie nennen, Satz „im Auftrag einer Agentur, white-label".
- **Eigenprojekte mit Markenbezug** (Audi, Amazon): immer klarstellen „freies Eigenprojekt, kein Auftrag der Marke".
- SAP: Film, Kundenname und Zitate dürfen öffentlich verwendet werden. SAP-Szenen sind bewusst nicht im Einstiegsfilm.
- KI-Grenzen (aus dem SAP-Projekt): Feinabstimmung der Stimme auf Wortebene ist aufwendig; alltägliche Bewegungen sind schwer exakt zu prompten; Logos/Software-Oberflächen werden in der Postproduktion eingesetzt. Werkzeugnamen mit Versionsnummer (z. B. „ElevenLabs v4") nicht in Fließtexte.
- Preis-FAQ: **keine** Generierungskosten erwähnen (auch CGI kostet Renderzeit).
- E-Mail-Signatur: Empfehlung war „GeoPic — Produktvisualisierung & KI-Film".

---

## 5. Offene Punkte

- **Achtung, öffentlich erreichbar:** Diese Dateien liegen im Repo und sind damit über geopic.at abrufbar: `DNA-Helix/` (sollte laut früherem Stand **nicht** online sein!), `GeoPic_Status_Startdokument_Juni2026.md`, `GeoPic_Texte_final_Juni2026.md`, `GeoPic_LinkedIn_Texte_Juni2026.md`, `LinkedIn-Artikel-WhatElse.md`, `LinkedIn-Post-Dienstag.md`, `Textvorschlag_Positionierung_Juni2026.md`, `README.md`, `fix-signatur.reg`, `reorganize-images.*`, `hero_img.py`, `linkedin-banner.html`. Entscheiden, was raus soll (`git rm --cached` + `.gitignore`), vor allem DNA-Helix und die internen Texte.
- **AGB:** Kurzfassung auf der Seite und PDF widersprechen sich (Verzugszinsen: „gesetzlich" vs. „10 % pro Monat"; Gerichtsstand: „Wien" vs. „Sitz der Agentur"). Robert will die Kurzfassung behalten. PDF (2024) nennt nur Foto/Video, nicht CGI/KI – bei der nächsten Überarbeitung (mit Anwalt) nachziehen.
- Ungenutzte Altdateien im Repo: `web/Robert-John.jpg`, viele große Original-JPGs in den Projektordnern (nur noch für Vergleichsregler/Originale nötig), `index-bisher.html` liegt lokal.
- `BILDER-WORKFLOW.md` ist veraltet (kennt Projektseiten-Vorlage, `web/projekte/` und Hochformat-Film nicht).
- LinkedIn: Post 1 (Bühnenfoto + Link im Kommentar auf `projekt-sap-pay.html`), eine Woche später Post 2 mit direkt hochgeladenem Film. Stand unklar.
- Vimeo: Einbettung am besten auf geopic.at beschränken.

---

## 6. Technische Hinweise für Claude

- Arbeiten über die Geräte-Werkzeuge (Shell im Linux-Ordner `$HOME/mnt/geopic-website+KI`, ffmpeg und ImageMagick vorhanden). Die Shell ist manchmal kurz nicht verfügbar („Workspace still downloading") – dann mit Datei-Staging arbeiten.
- Beim Zurückschreiben von Dateien auf den Rechner (commit) **jedes Mal einen neuen Dateinamen** in der Cloud verwenden – sonst wird teils eine alte Fassung übertragen. Danach Prüfsumme vergleichen.
- Testbrowser in der Cloud spielt kein H.264 ab; Filme mit Standbildern prüfen. Schrift Geist für Screenshots über npm-Paket `geist` laden.
- Der eingebaute Browser öffnet keine lokalen Dateien; Seitenvorschauen per Playwright in der Cloud rendern.
- Webseiten nur aus Suchergebnissen abrufen, sonst fragt das System Robert jedes Mal um Freigabe.

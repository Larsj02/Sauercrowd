# Sauercrowd - WoW Hardcore Addon

[![CurseForge Downloads](https://img.shields.io/curseforge/dt/1415334?style=for-the-badge&logo=curseforge)](https://www.curseforge.com/wow/addons/sauercrowd)
[![WoW Version](https://img.shields.io/badge/WoW-Classic%20Era%201.15.x-blue?style=for-the-badge&logo=battledotnet)](https://worldofwarcraft.blizzard.com/)
[![Ko-fi Pudi](https://img.shields.io/badge/Ko--fi-Pudi-FF5E5B?style=for-the-badge&logo=ko-fi&logoColor=white)](https://ko-fi.com/einfachpudi)
[![Ko-fi Cricksu](https://img.shields.io/badge/Ko--fi-Cricksu-FF5E5B?style=for-the-badge&logo=ko-fi&logoColor=white)](https://ko-fi.com/cricksu)

Offizielles Addon für das Sauercrowd WoW HC Event

> **Disclaimer:** Alle Inhalte im `media/` Ordner (Bilder, Sounds, etc.) sind Eigentum des Event-Teams von Sauercrowd und dürfen ohne ausdrückliche Genehmigung nicht anderweitig verwendet werden.

---

## Hauptfunktionen

### Death Tracking & Announcements

Alle Tode werden in der Gilde geteilt und angezeigt.

**Features:**
- Automatische Benachrichtigung bei Gildentodesfällen mit visueller "Death Alert" Animation
- Mini-Deathlog: Kompaktes, resizable Fenster zeigt letzte Tode
  - Spalten: Name (40%), Klasse (40%), Level (20%)
  - Tooltip mit vollständigen Details beim Hover
  - Größe anpassbar: 250x120 Minimum bis 500x350 Maximum
  - Speichert Position und Größe automatisch
- Automatische Guild Chat Benachrichtigung bei eigenem Tod
- Dual-System für maximale Kompatibilität:
  - Primär: Guild Chat Parsing
  - Unterstützt verschiedene Nachrichtenformate für Kompatibilität
  - Keine Konflikte: Kompatibel mit anderen Hardcore-Addons

**Informationen die geteilt werden:**
- Name, Klasse, Level
- Zone des Todes
- Content Creator Handle (falls vorhanden)

### Chat Features

Guild Member Icons: SC Icon-Präfix für alle Gildenmitglieder in allen Chat-Channels

**Features:**
- Funktioniert in: Guild, Say, Yell, Party, Raid, Whisper
- Hilft Griefer zu identifizieren die Gildenmitglieder imitieren
- Automatische Erkennung über GuildCache

### Content Creator System

Streamer und Content Creators können sich identifizieren.

**Features:**
- **Twitch Handle Prompt:** Einmalige Abfrage beim ersten Login für Content Creator Identifikation
- **Account-Wide Storage:** Twitch/YouTube Handle wird account-weit gespeichert (alle Charaktere)
- **Automatische Guild Note:** Handle wird automatisch in die öffentliche Gildennotiz geschrieben
- **Tooltip Integration:** Content Creator Handles werden in Spieler-Tooltips angezeigt
- **Format:** `DeinHandle (Tode: X)`

> **Einrichtung:** Beim ersten Login erscheint automatisch ein Fenster. Gib einfach deinen Twitch oder YouTube Namen ein.

### Hardcore Rules Enforcement

Das Addon erzwingt automatisch die Hardcore-Regeln.

**Was wird blockiert:**
- Briefkasten - Wird automatisch geschlossen (mit Popup-Meldung)
- Auktionshaus - Wird automatisch geschlossen (mit Popup-Meldung)
- Handel mit Nicht-Gildenmitgliedern - Wird automatisch abgebrochen (mit Popup-Meldung)
- Gruppen mit Nicht-Gildenmitgliedern - Du wirst automatisch aus der Gruppe entfernt (mit Popup-Meldung)
- Party-Einladungen von Nicht-Gildenmitgliedern - Werden automatisch abgelehnt

> **Hinweis:** Spieler mit dem Rang "Gildenbank" dürfen Briefkästen nutzen.

### PvP-Warnsystem

Warnt wenn du PvP-aktivierte NPCs oder Spieler targetierst.

**Features:**
- Warnung bei Targeting von PvP-aktivierten NPCs und Spielern
- Visuelles Popup-Fenster mit rotem Rahmen
- Optionaler Warnton (konfigurierbar in den Einstellungen)
- Rumble-Effekt für bessere Sichtbarkeit
- 10 Sekunden Cooldown pro Spieler um Spam zu vermeiden

### Levelbenachrichtigungen

Das Addon gratuliert automatisch bei wichtigen Level-Meilensteinen.

**Glückwünsche bei:**
- Level 10, 20, 30, 40, 50
- Level 60: Spezielle heroische Ankündigung mit visueller Animation und Triumphsound

**Features:**
- Automatische Guild Chat Benachrichtigung bei Meilensteinen
- Level 60: Exklusive visuelle "Level 60 Achievement" Animation für alle Gildenmitglieder
- Zeigt Content Creator Handle in Ankündigungen (falls vorhanden)

### Tooltip Erweiterungen

Erweitert Tooltips mit nützlichen Informationen.

**Zeigt an:**
- Gildenrang
- Online-Status
- Content Creator Handles
- Zusätzliche Charakterinformationen

### Minimap Icon

Zentraler Zugriffspunkt für das Death Log.

**Funktionen:**
- **Linksklick:** Death Log anzeigen/verstecken
- **Tooltip zeigt:**
  - Addon Version
  - Verfügbare Funktionen

### Automatische Optimierungen

Das Addon nimmt beim Start automatisch einige Optimierungen vor.

**Automatische Anpassungen:**
- **Minimap Mail Icon** - Wird ausgeblendet um die Minimap aufgeräumt zu halten
- **Party Invite Sounds** - Group-Einladungssounds werden stummgeschaltet
- Reduziert Ablenkungen und verbessert die Konzentration auf das Hardcore-Erlebnis

---

## Installation

### Option 1: CurseForge (Empfohlen)

1. Besuche https://www.curseforge.com/wow/addons/sauercrowd
2. Klicke auf "Install" oder lade die neueste Version herunter
3. Das Addon wird automatisch in deinen WoW-Ordner installiert

### Option 2: Manuelle Installation

1. Download des Addons
2. Entpacke den Ordner in `World of Warcraft\_classic_era_\Interface\AddOns\`
3. Starte WoW neu oder `/reload` in-game
4. Minimap-Icon erscheint für schnellen Zugriff auf das Death Log

---

## Einstellungen

Das Addon hat einige optionale Einstellungen die du im WoW Options-Menü unter "AddOns" → "Sauercrowd" findest:

- **PVP Warnung** - Aktiviert/Deaktiviert die PvP-Warnung beim Targeting
- **PVP Warnung Ton** - Aktiviert/Deaktiviert den Warnton bei PvP-Warnungen
- **Todesmeldungen Ton** - Aktiviert/Deaktiviert den Ton bei Todesmeldungen

---

## Tipps

- **Death Log:** Linksklick auf Minimap Icon zum Öffnen/Schließen
- **Death Log Größe:** Ziehe an der unteren rechten Ecke um die Größe anzupassen
- **Content Creator:** Handle wird automatisch beim ersten Login abgefragt und in der Gildennotiz gespeichert

---

## Technische Details

- **Interface-Version:** 11508 (WoW Classic Era 1.15.x)

**SavedVariables:**
- `SauercrowdOptionsDB` (per Character) - Einstellungen
- `SauercrowdTwitchHandles` (Account-wide) - Content Creator Handle und Todeszähler
- `SauercrowdSessions` (Account-wide) - Session Tracking

**Addon Message Prefixes:**
- `Sauercrowd` - Guild Communication
- `SC_TAMPER` - Admin Commands

**Libraries:**
- LibStub
- LibDataBroker-1.1
- LibDBIcon-1.0

---

## Bekannte Einschränkungen

- **Guild Only:** Alle Features funktionieren nur mit Gildenmitgliedern auf dem gleichen Realm
- **Hardcoded Event Rules:** Die Event-Regeln sind fest im Addon einprogrammiert und können nicht deaktiviert werden

---

## Wichtige Hinweise

- Alle Blockaden (Briefkasten, AH, etc.) zeigen Popup-Meldungen zur Information
- Dein Todeszähler ist account-weit und wird automatisch in deiner Gildennotiz angezeigt
- Das Addon ist speziell für die Sauercrowd Hardcore Gilde entwickelt
- Der Content Creator Handle wird nur beim ersten Login abgefragt - du kannst ihn durch erneutes Eingeben ändern

---

## Support & Feedback

Bei Problemen oder Feedback:
- Melde dich bei den Addon-Entwicklern in der Gilde
- Erstelle ein Issue auf GitHub

---

## Autoren

- **Cricksu**
- **Pudi**

## Mitwirkende

- **Canasterzaster**

---

## Support the Devs

Wenn dir das Addon gefällt und du uns unterstützen möchtest:

- [Pudi auf Ko-fi](https://ko-fi.com/einfachpudi)
- [Cricksu auf Ko-fi](https://ko-fi.com/cricksu)

---

*Viel Erfolg und viel Glück - möge dein Hardcore-Charakter lange leben!*

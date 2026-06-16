# TMX Banner
### By SIFAT

> Customize your Termux terminal with beautiful ASCII banners, hacking themes, terminal color schemes, and custom fonts — all from one interactive menu with live preview!

---

## 📋 Table of Contents

- [What is TMX Banner?](#what-is-tmx-banner)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [How to Use](#how-to-use)
  - [1. Banner Setup](#1--banner-setup)
  - [2. Terminal Color Change](#2--terminal-color-change)
  - [3. Terminal Font Change](#3--terminal-font-change)
  - [4. Remove Banner](#4--remove-banner)
- [Banner Themes](#banner-themes)
- [Color Themes](#color-themes)
- [Font Styles](#font-styles)
- [Uninstall](#uninstall)
- [File Overview](#file-overview)

---

## What is TMX Banner?

TMX Banner is an all-in-one Termux terminal customizer. It lets you:
- Set a beautiful animated welcome banner every time Termux opens
- Change your terminal's text and background **color scheme**
- Change your terminal's **font style** with one click
- Preview everything **before** saving

---

## Features

| Feature | Description |
|---------|-------------|
| 🎨 Banner Setup | 8 hacking & themed welcome banners |
| 🖌 Terminal Colors | 8 preset color schemes for the terminal |
| 🔤 Terminal Font | 8 professional coding fonts to download & apply |
| 👀 Live Preview | See your banner before saving |
| 🔄 Start Over | Pick a new option without losing anything |
| 🗑 Remove | Restore original Termux defaults anytime |

---

## Requirements

| Tool | Install Command |
|------|----------------|
| git | `pkg install git` |
| figlet | `pkg install figlet` |
| cowsay | `pkg install cowsay` |
| ruby | `pkg install ruby` |
| lolcat | `gem install lolcat` |
| curl | `pkg install curl` *(needed for font download)* |

All installed automatically when you run `bash requirements.sh`.

---

## Installation

**Step 1 — Open Termux on your Android device**

**Step 2 — Install git**
```bash
pkg install git
```

**Step 3 — Clone the repository**
```bash
git clone https://github.com/MYB-SIFAT/TMX-BANNER.git
```

**Step 4 — Enter the folder**
```bash
cd TMX-BANNER
```

**Step 5 — Install all dependencies**
```bash
bash requirements.sh
```

---

## How to Use

### Launch TMX Banner
```bash
bash tmx-ban.sh
```

You will see the **Main Menu**:

```
╔════════════════════════════════════════════════╗
║             MAIN MENU                          ║
╠════════════════════════════════════════════════╣
║  [1] 🎨  Banner Setup   — Welcome screen banner║
║  [2] 🖌   Terminal Color — Change terminal colors
║  [3] 🔤  Terminal Font   — Change terminal font ║
║  [4] 🗑   Remove Banner  — Restore defaults     ║
╠════════════════════════════════════════════════╣
║  [0] ✖   Exit                                  ║
╚════════════════════════════════════════════════╝
```

Type a number and press **Enter**.

---

### 1 🎨 Banner Setup

Customizes the welcome screen shown every time you open Termux.

**Step 1 — Choose a banner theme (1–8)**

```
╔════════════════════════════════════════════════╗
║           SELECT A BANNER THEME                ║
╠════════════════════════════════════════════════╣
║  [1] 🌈 Classic  - Rainbow Splash              ║
║  [2] 💀 Hacker   - Matrix Green                ║
║  [3] ⚡ Cyber    - Neon Blue Pulse             ║
║  [4] 🔥 Flame    - Red Hot Inferno             ║
║  [5] 👻 Ghost    - Shadow Dark Mode            ║
║  [6] 🕵️  Phantom  - Stealth Protocol            ║
║  [7] 💎 Elite    - Purple Royale               ║
║  [8] 🌐 Matrix   - Digital Rain                ║
╚════════════════════════════════════════════════╝
```

**Step 2 — Enter your cowsay message**

This text appears inside the ASCII speech bubble.
```
🗨  Cowsay message:
→ Hacked by SIFAT
```

**Step 3 — Enter your banner text**

This becomes the big ASCII art letters.
```
📝 Banner text:
→ SIFAT
```

**Step 4 — Preview your banner**

You will see a live preview exactly as it will appear in Termux.

**Step 5 — Save or start over**
```
[1] ✅  Save this banner
[2] 🔄  Start over (pick new theme)
[3] ❌  Cancel, make no changes
```

Press **1** to save. Open a **new Termux session** to see your banner!

---

### 2 🖌 Terminal Color Change

Changes your Termux terminal's **background color**, **text color**, and **cursor color**.

From the Main Menu press **2**, then choose a color theme:

```
╔════════════════════════════════════════════════╗
║        TERMINAL COLOR THEMES                   ║
╠════════════════════════════════════════════════╣
║  [1] 💚 Hacker Green  — Dark bg, matrix green  ║
║  [2] 💙 Cyber Blue    — Dark bg, neon blue     ║
║  [3] 🔴 Flame Red     — Dark bg, hot red/orange║
║  [4] 🤍 Ghost White   — Dark bg, clean white   ║
║  [5] 💜 Purple Night  — Dark bg, vivid purple  ║
║  [6] 🟩 Matrix Black  — Pure black, bright green
║  [7] 🌊 Ocean Teal    — Deep blue, teal text   ║
║  [8] 🟠 Sunset Orange — Dark bg, warm orange   ║
╠════════════════════════════════════════════════╣
║  [9] 🔄 Reset to Termux Default                ║
╚════════════════════════════════════════════════╝
```

Pick a number → color is applied immediately.
**Restart Termux** to see the full effect.

> **Tip:** Pair the color theme with your banner theme! e.g. Hacker banner + Hacker Green color.

---

### 3 🔤 Terminal Font Change

Downloads and applies a professional coding font to your Termux terminal. Requires an internet connection.

From the Main Menu press **3**, then choose a font:

```
╔════════════════════════════════════════════════╗
║        TERMINAL FONT STYLES                    ║
╠════════════════════════════════════════════════╣
║  [1] 🔵 FiraCode       — Ligatures, coding symbols
║  [2] 🟣 JetBrainsMono  — Clean modern dev font ║
║  [3] 🔶 Hack           — Readable, open source ║
║  [4] 🔷 CascadiaCode   — Microsoft coding font ║
║  [5] 🟠 UbuntuMono     — Ubuntu terminal font  ║
║  [6] 🟤 DejaVuSansMono — Classic readable mono ║
║  [7] ⚪ Inconsolata    — Minimal, clean, elegant║
║  [8] 🔴 SourceCodePro  — Adobe professional    ║
╠════════════════════════════════════════════════╣
║  [9] 🔄 Reset to Termux Default font           ║
╚════════════════════════════════════════════════╝
```

Pick a number → font downloads automatically and is applied.
**Restart Termux** to see the new font.

> ⚠️ Font download requires internet. Make sure you are connected to Wi-Fi or mobile data.

---

### 4 🗑 Remove Banner

Removes TMX Banner and restores the original Termux welcome screen.

From the Main Menu press **4**, then confirm with **1**.

Your original `bash.bashrc` and `motd` are restored automatically.

---

## Banner Themes

| # | Theme | Figlet Font | Cowsay Characters | Style |
|---|-------|-------------|-------------------|-------|
| 1 | 🌈 Classic | slant | eyes, daemon, blowfish, cheese, meow, moofasa, tux | Rainbow lolcat |
| 2 | 💀 Hacker | shadow | daemon, eyes, moofasa | Matrix green art |
| 3 | ⚡ Cyber | smslant | tux, eyes, daemon | Neon blue panel |
| 4 | 🔥 Flame | banner3 | dragon, moofasa, daemon | Fire box art |
| 5 | 👻 Ghost | big | ghost, daemon, meow | Dark shadow mode |
| 6 | 🕵️ Phantom | lean | eyes, daemon, blowfish | Grey stealth mode |
| 7 | 💎 Elite | script | moofasa, cheese, daemon | Purple royale |
| 8 | 🌐 Matrix | digital | eyes, daemon, tux, meow | Binary rain art |

---

## Color Themes

| # | Name | Background | Text Color |
|---|------|------------|------------|
| 1 | 💚 Hacker Green | `#0a0f0a` | `#00ff41` |
| 2 | 💙 Cyber Blue | `#050a1a` | `#00d4ff` |
| 3 | 🔴 Flame Red | `#100500` | `#ff6600` |
| 4 | 🤍 Ghost White | `#0d0d0d` | `#cccccc` |
| 5 | 💜 Purple Night | `#0d0010` | `#cc44ff` |
| 6 | 🟩 Matrix Black | `#000000` | `#00ff00` |
| 7 | 🌊 Ocean Teal | `#020d1a` | `#64c8ff` |
| 8 | 🟠 Sunset Orange | `#0f0800` | `#ff9500` |

---

## Font Styles

| # | Font | Style |
|---|------|-------|
| 1 | 🔵 FiraCode | Programming ligatures (→, !=, ==) |
| 2 | 🟣 JetBrainsMono | Modern, clean, used in JetBrains IDEs |
| 3 | 🔶 Hack | Crisp and readable for terminals |
| 4 | 🔷 CascadiaCode | Microsoft's official coding font |
| 5 | 🟠 UbuntuMono | Ubuntu's terminal font |
| 6 | 🟤 DejaVuSansMono | Classic, widely tested |
| 7 | ⚪ Inconsolata | Minimal and elegant |
| 8 | 🔴 SourceCodePro | Adobe's professional monospace |

---

## Uninstall

```bash
bash remove.sh
```

Restores original `bash.bashrc` and `motd`, removes all TMX Banner files.

---

## File Overview

| File | Description |
|------|-------------|
| `tmx-ban.sh` | Main script — banner, color, font, menu |
| `requirements.sh` | Installs all dependencies |
| `remove.sh` | Uninstalls and restores defaults |
| `random.txt` | Bash snippet for randomized cowsay characters |

---

## Video Tutorial

▶️ coming soon 🔜 

---

## License

MIT License — see [LICENSE](LICENSE) for details.

---

*Made with ❤️ by SIFAT*

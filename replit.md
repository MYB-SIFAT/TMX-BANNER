# TMX Banner

**Author: SIFAT**

A Bash shell script utility for customizing the Termux terminal welcome screen (MOTD) with dynamic ASCII art banners.

## What it does

TMX Banner replaces the default Termux MOTD with a customized banner using:
- **figlet** — generates large ASCII text
- **cowsay** — displays ASCII art characters with speech bubbles
- **lolcat** — adds rainbow coloring to output

Each time a new Termux terminal session opens, a randomized banner is shown.

## Important Note

This tool is designed for **Termux on Android**. It modifies paths specific to Termux (`/data/data/com.termux/files/usr/etc/`). Running it in a standard Linux environment (like Replit) will not have the intended effect on those system paths.

## Scripts

- **`tmx-ban.sh`** — Main script. Takes user input for cowsay text and banner text, then writes the config to Termux system files.
- **`requirements.sh`** — Installs dependencies (`figlet`, `cowsay`, `ruby`, `lolcat` via gem).
- **`remove.sh`** — Uninstalls and restores original Termux configuration.
- **`random.txt`** — Bash snippet appended to `bash.bashrc` for randomized cowsay characters.

## Running in Replit

Use the **Run TMX Banner** workflow (or run `bash tmx-ban.sh` in the shell). Note that Termux-specific paths will not exist in this environment.

## User preferences

(none set yet)

#!/bin/bash

# ═══════════════════════════════════════════════════
#   TMX Banner v3.0 — by SIFAT
#   Termux Terminal Customizer
#   Features: Banner | Colors | Fonts
# ═══════════════════════════════════════════════════

TERMUX_ETC="/data/data/com.termux/files/usr/etc"
TERMUX_HOME="/data/data/com.termux/files/home/TMX-Banner"
TERMUX_CFG="/data/data/com.termux/files/home/.termux"
MOTD_SCRIPT="$TERMUX_HOME/tmx_motd.sh"

RED='\e[1;31m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
CYAN='\e[1;36m'
MAGENTA='\e[1;35m'
WHITE='\e[1;37m'
RESET='\e[0m'
DIM='\e[2m'
BOLD='\e[1m'

# ───────────────────────────────────────────────────
#  HEADER
# ───────────────────────────────────────────────────

show_header() {
    clear
    echo -e "${CYAN}"
    figlet -f slant "TMX Banner" 2>/dev/null || echo "=== TMX Banner ==="
    echo -e "${RESET}"
    echo -e "${MAGENTA}  ╔════════════════════════════════════════════════╗${RESET}"
    echo -e "${MAGENTA}  ║  ${YELLOW}Author   : SIFAT${MAGENTA}                               ║${RESET}"
    echo -e "${MAGENTA}  ║  ${WHITE}Termux Terminal Customizer  v3.0${MAGENTA}               ║${RESET}"
    echo -e "${MAGENTA}  ╚════════════════════════════════════════════════╝${RESET}"
    echo
}

# ───────────────────────────────────────────────────
#  MAIN MENU
# ───────────────────────────────────────────────────

main_menu() {
    show_header
    echo -e "${CYAN}  ╔════════════════════════════════════════════════╗${RESET}"
    echo -e "${CYAN}  ║             MAIN MENU                          ║${RESET}"
    echo -e "${CYAN}  ╠════════════════════════════════════════════════╣${RESET}"
    echo -e "${CYAN}  ║  ${GREEN}[1]${RESET} 🎨  Banner Setup   — Welcome screen banner  ${CYAN}║${RESET}"
    echo -e "${CYAN}  ║  ${GREEN}[2]${RESET} 🖌   Terminal Color — Change terminal colors  ${CYAN}║${RESET}"
    echo -e "${CYAN}  ║  ${GREEN}[3]${RESET} 🔤  Terminal Font   — Change terminal font    ${CYAN}║${RESET}"
    echo -e "${CYAN}  ║  ${YELLOW}[4]${RESET} 🗑   Remove Banner  — Restore defaults        ${CYAN}║${RESET}"
    echo -e "${CYAN}  ╠════════════════════════════════════════════════╣${RESET}"
    echo -e "${CYAN}  ║  ${RED}[0]${RESET} ✖   Exit                                    ${CYAN}║${RESET}"
    echo -e "${CYAN}  ╚════════════════════════════════════════════════╝${RESET}"
    echo
    echo -ne "${YELLOW}  Choose [0-4]: ${RESET}"
    read -r main_choice
}

# ───────────────────────────────────────────────────
#  BANNER — THEME DEFINITIONS
# ───────────────────────────────────────────────────

THEME_NAMES=(""
    "Classic  - Rainbow Splash"
    "Hacker   - Matrix Green"
    "Cyber    - Neon Blue Pulse"
    "Flame    - Red Hot Inferno"
    "Ghost    - Shadow Dark Mode"
    "Phantom  - Stealth Protocol"
    "Elite    - Purple Royale"
    "Matrix   - Digital Rain"
)
THEME_ICONS=(""  "🌈"  "💀"  "⚡"  "🔥"  "👻"  "🕵️ "  "💎"  "🌐")

get_font() {
    case $1 in
        1) echo "slant"    ;; 2) echo "shadow"   ;;
        3) echo "smslant"  ;; 4) echo "banner3"  ;;
        5) echo "big"      ;; 6) echo "lean"     ;;
        7) echo "script"   ;; 8) echo "digital"  ;;
        *) echo "standard" ;;
    esac
}

get_cowsay_chars() {
    case $1 in
        1) echo "('eyes' 'daemon' 'blowfish' 'cheese' 'meow' 'moofasa' 'tux')" ;;
        2) echo "('daemon' 'eyes' 'moofasa')"                                    ;;
        3) echo "('tux' 'eyes' 'daemon')"                                        ;;
        4) echo "('dragon' 'moofasa' 'daemon')"                                  ;;
        5) echo "('ghost' 'daemon' 'meow')"                                      ;;
        6) echo "('eyes' 'daemon' 'blowfish')"                                   ;;
        7) echo "('moofasa' 'cheese' 'daemon')"                                  ;;
        8) echo "('eyes' 'daemon' 'tux' 'meow')"                                ;;
        *) echo "('eyes' 'daemon' 'blowfish' 'cheese' 'meow' 'moofasa' 'tux')" ;;
    esac
}

get_theme_art() {
    case $1 in
        2) cat << 'EOF'
echo -e "\e[1;32m"
echo "  ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ "
echo "  ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗"
echo "  ███████║███████║██║     █████╔╝ █████╗  ██████╔╝"
echo "  ██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗"
echo "  ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║"
echo "  ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝"
echo -e "\e[0;32m"
echo "  [*] Initializing hack sequence............. OK"
echo "  [*] Bypassing firewall..................... OK"
echo "  [*] Root access........................... GRANTED"
echo "  [*] Target system......................... COMPROMISED"
echo -e "\e[1;32m  [!] Welcome back, ELITE HACKER\e[0m"
echo
EOF
        ;;
        3) cat << 'EOF'
echo -e "\e[1;34m"
echo "  ╔═══════════════════════════════════════════╗"
echo "  ║      ⚡  CYBER TERMINAL ACTIVE  ⚡        ║"
echo "  ╠═══════════════════════════════════════════╣"
echo "  ║  STATUS  : ONLINE       ENCRYPT : AES-256 ║"
echo "  ║  SIGNAL  : SECURE       PROXY   : ACTIVE  ║"
echo "  ║  CHANNEL : ENCRYPTED    VPN     : ENABLED  ║"
echo "  ╚═══════════════════════════════════════════╝"
echo -e "\e[1;36m  >> Secure connection established. Proceed.\e[0m"
echo
EOF
        ;;
        4) cat << 'EOF'
echo -e "\e[1;31m"
echo "  🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥"
echo "  🔥    F L A M E   P R O T O C O L    🔥"
echo "  🔥         A C T I V A T E D         🔥"
echo "  🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥"
echo -e "\e[0;33m  The fire within you never goes out.\e[0m"
echo
EOF
        ;;
        5) cat << 'EOF'
echo -e "\e[2;37m"
echo "  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
echo "  ░░  👻  G H O S T   M O D E  👻       ░░"
echo "  ░░   You were never here...            ░░"
echo "  ░░   No logs. No traces. No presence.  ░░"
echo "  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
echo -e "\e[0m"
EOF
        ;;
        6) cat << 'EOF'
echo -e "\e[0;90m"
echo "  >>> PHANTOM SYSTEM v1.0 <<<"
echo "  >>> IDENTITY  : [CLASSIFIED]"
echo "  >>> LOCATION  : [UNTRACEABLE]"
echo "  >>> STATUS    : INVISIBLE"
echo "  >>> CLEARANCE : LEVEL OMEGA"
echo -e "\e[0;37m  >>> Authentication complete. Ghost in the machine.\e[0m"
echo
EOF
        ;;
        7) cat << 'EOF'
echo -e "\e[1;35m"
echo "  ┌─────────────────────────────────────────┐"
echo "  │   ♛  E L I T E   A C C E S S  ♛        │"
echo "  │      G R A N T E D                      │"
echo "  ├─────────────────────────────────────────┤"
echo "  │  Welcome to the Purple Kingdom          │"
echo "  └─────────────────────────────────────────┘"
echo -e "\e[0;35m  ♛ You are one of the elite. Rule well. ♛\e[0m"
echo
EOF
        ;;
        8) cat << 'EOF'
echo -e "\e[0;32m"
echo "  01001101 01000001 01010100 01010010 01001001 01011000"
echo "  [MATRIX] System boot.............. COMPLETE"
echo "  [MATRIX] Neural link.............. ACTIVE"
echo "  [MATRIX] Reality simulation....... RUNNING"
echo "  [MATRIX] You took the red pill.... WELCOME"
echo -e "\e[1;32m  There is no spoon.\e[0m"
echo
EOF
        ;;
        *) echo 'echo ""' ;;
    esac
}

# ───────────────────────────────────────────────────
#  BANNER — SETUP FLOW
# ───────────────────────────────────────────────────

preview_banner() {
    local font="$1" text="$2" cowsay_text="$3" theme="$4"
    local chars first_char
    chars=$(get_cowsay_chars "$theme")
    first_char=$(echo "$chars" | tr -d "()'\"" | awk '{print $1}')
    echo
    echo -e "${YELLOW}  ╔══════════════════ PREVIEW ══════════════════╗${RESET}"
    echo
    eval "$(get_theme_art "$theme")"
    cowsay -f "$first_char" "$cowsay_text" 2>/dev/null | lolcat
    echo
    figlet -f "$font" "$text" 2>/dev/null | lolcat
    echo
    echo -e "${YELLOW}  ╚═════════════════════════════════════════════╝${RESET}"
    echo
}

banner_theme_menu() {
    show_header
    echo -e "${CYAN}  ╔════════════════════════════════════════════════╗${RESET}"
    echo -e "${CYAN}  ║           SELECT A BANNER THEME                ║${RESET}"
    echo -e "${CYAN}  ╠════════════════════════════════════════════════╣${RESET}"
    for i in 1 2 3 4 5 6 7 8; do
        printf "${CYAN}  ║  ${GREEN}[%s]${RESET} %s %-34s ${CYAN}║${RESET}\n" \
            "$i" "${THEME_ICONS[$i]}" "${THEME_NAMES[$i]}"
    done
    echo -e "${CYAN}  ╠════════════════════════════════════════════════╣${RESET}"
    echo -e "${CYAN}  ║  ${RED}[0]${RESET} ↩  Back to Main Menu                    ${CYAN}║${RESET}"
    echo -e "${CYAN}  ╚════════════════════════════════════════════════╝${RESET}"
    echo
    echo -ne "${YELLOW}  Choose theme [0-8]: ${RESET}"
    read -r theme_choice
}

save_banner() {
    local font="$1" banner_text="$2" cowsay_text="$3" theme="$4"
    local chars
    chars=$(get_cowsay_chars "$theme")
    echo
    echo -e "${GREEN}  Saving your TMX Banner...${RESET}"
    [[ -f original_bashrc.txt ]] && cat original_bashrc.txt > "$TERMUX_ETC/bash.bashrc"
    [[ -f original_motd.txt  ]] && cat original_motd.txt  > "$TERMUX_ETC/motd"
    mkdir -p "$TERMUX_HOME"
    echo "$cowsay_text" > "$TERMUX_HOME/cowsay.txt"
    echo "" > "$TERMUX_ETC/motd"
    {
        echo "#!/bin/bash"
        echo "# TMX Banner MOTD — by SIFAT"
        echo ""
        get_theme_art "$theme"
        echo ""
        echo "ARRAY=$chars"
        echo 'RAND_STR="${ARRAY[$RANDOM % ${#ARRAY[@]}]}"'
        echo "cowsay -f \$RAND_STR < \"$TERMUX_HOME/cowsay.txt\" | lolcat"
        echo ""
        echo "figlet -f $font '$banner_text' | lolcat"
    } > "$MOTD_SCRIPT"
    chmod +x "$MOTD_SCRIPT"
    echo "" >> "$TERMUX_ETC/bash.bashrc"
    echo "# TMX Banner" >> "$TERMUX_ETC/bash.bashrc"
    echo "bash \"$MOTD_SCRIPT\"" >> "$TERMUX_ETC/bash.bashrc"
    echo
    echo -e "${GREEN}  ╔════════════════════════════════════════════╗${RESET}"
    echo -e "${GREEN}  ║  ✅  Banner Saved Successfully!             ║${RESET}"
    echo -e "${GREEN}  ║  Open a new Termux session to see it! 🎉   ║${RESET}"
    echo -e "${GREEN}  ╚════════════════════════════════════════════╝${RESET}"
    echo
}

run_banner_setup() {
    banner_theme_menu
    [[ "$theme_choice" == "0" ]] && return
    if ! [[ "$theme_choice" =~ ^[1-8]$ ]]; then
        echo -e "${RED}  Invalid choice!${RESET}"; sleep 1; return
    fi
    local font
    font=$(get_font "$theme_choice")
    echo
    echo -e "${CYAN}  ╔════════════════════════════════════════════╗${RESET}"
    echo -e "${CYAN}  ║          ENTER YOUR BANNER INFO            ║${RESET}"
    echo -e "${CYAN}  ╚════════════════════════════════════════════╝${RESET}"
    echo
    echo -e "${YELLOW}  🗨  Cowsay message (speech bubble text):${RESET}"
    echo -ne "  → "; read -r varcowsay
    echo
    echo -e "${YELLOW}  📝 Banner text (big ASCII art):${RESET}"
    echo -ne "  → "; read -r varbanner
    echo
    echo -e "${CYAN}  Generating preview...${RESET}"; sleep 0.4
    preview_banner "$font" "$varbanner" "$varcowsay" "$theme_choice"
    echo -e "${CYAN}  ╔════════════════════════════════════════════╗${RESET}"
    echo -e "${CYAN}  ║     What would you like to do?             ║${RESET}"
    echo -e "${CYAN}  ╠════════════════════════════════════════════╣${RESET}"
    echo -e "${CYAN}  ║  ${GREEN}[1]${RESET} ✅  Save this banner                 ${CYAN}║${RESET}"
    echo -e "${CYAN}  ║  ${YELLOW}[2]${RESET} 🔄  Start over (pick new theme)      ${CYAN}║${RESET}"
    echo -e "${CYAN}  ║  ${RED}[3]${RESET} ❌  Cancel, make no changes          ${CYAN}║${RESET}"
    echo -e "${CYAN}  ╚════════════════════════════════════════════╝${RESET}"
    echo -ne "  → "; read -r save_choice
    case $save_choice in
        1) save_banner "$font" "$varbanner" "$varcowsay" "$theme_choice" ;;
        2) run_banner_setup ;;
        3) echo -e "${RED}  Cancelled.${RESET}" ;;
        *) echo -e "${RED}  Invalid input.${RESET}" ;;
    esac
}

# ───────────────────────────────────────────────────
#  TERMINAL COLOR CHANGER
# ───────────────────────────────────────────────────

COLOR_SCHEME_NAMES=(""
    "Hacker Green  — Dark bg, matrix green text"
    "Cyber Blue    — Dark bg, neon blue text"
    "Flame Red     — Dark bg, hot red/orange text"
    "Ghost White   — Dark bg, clean white text"
    "Purple Night  — Dark bg, vivid purple text"
    "Matrix Black  — Pure black, bright green"
    "Ocean Teal    — Deep blue bg, teal text"
    "Sunset Orange — Dark bg, warm orange text"
)
COLOR_ICONS=(""  "💚"  "💙"  "🔴"  "🤍"  "💜"  "🟩"  "🌊"  "🟠")

write_color_scheme() {
    local scheme="$1"
    mkdir -p "$TERMUX_CFG"
    case $scheme in
        1) cat > "$TERMUX_CFG/colors.properties" << 'EOF'
background=#0a0f0a
foreground=#00ff41
cursor=#00ff41
color0=#000000
color1=#003200
color2=#007200
color3=#00aa00
color4=#00cc00
color5=#00ee44
color6=#00ff88
color7=#00ff41
color8=#003300
color9=#33ff66
color10=#55ff88
color11=#88ffaa
color12=#00ddcc
color13=#00ffee
color14=#aaffdd
color15=#ccffee
EOF
        ;;
        2) cat > "$TERMUX_CFG/colors.properties" << 'EOF'
background=#050a1a
foreground=#00d4ff
cursor=#00d4ff
color0=#000000
color1=#003366
color2=#0055aa
color3=#0077cc
color4=#0099dd
color5=#00bbee
color6=#00d4ff
color7=#aaddff
color8=#001133
color9=#33aaff
color10=#55ccff
color11=#88ddff
color12=#00eeff
color13=#55ffff
color14=#aaeeff
color15=#ddf5ff
EOF
        ;;
        3) cat > "$TERMUX_CFG/colors.properties" << 'EOF'
background=#100500
foreground=#ff6600
cursor=#ff6600
color0=#000000
color1=#330000
color2=#660000
color3=#aa2200
color4=#cc3300
color5=#ee4400
color6=#ff6600
color7=#ffaa00
color8=#440000
color9=#ff4422
color10=#ff6633
color11=#ff8855
color12=#ffaa00
color13=#ffcc44
color14=#ffdd88
color15=#ffeecc
EOF
        ;;
        4) cat > "$TERMUX_CFG/colors.properties" << 'EOF'
background=#0d0d0d
foreground=#cccccc
cursor=#ffffff
color0=#000000
color1=#333333
color2=#555555
color3=#777777
color4=#999999
color5=#aaaaaa
color6=#cccccc
color7=#dddddd
color8=#222222
color9=#888888
color10=#aaaaaa
color11=#cccccc
color12=#dddddd
color13=#eeeeee
color14=#f5f5f5
color15=#ffffff
EOF
        ;;
        5) cat > "$TERMUX_CFG/colors.properties" << 'EOF'
background=#0d0010
foreground=#cc44ff
cursor=#cc44ff
color0=#000000
color1=#220033
color2=#440055
color3=#660077
color4=#880099
color5=#aa00cc
color6=#cc44ff
color7=#dd88ff
color8=#330044
color9=#aa55ff
color10=#bb77ff
color11=#cc99ff
color12=#ddbbff
color13=#eeccff
color14=#f0ddff
color15=#f8eeff
EOF
        ;;
        6) cat > "$TERMUX_CFG/colors.properties" << 'EOF'
background=#000000
foreground=#00ff00
cursor=#00ff00
color0=#000000
color1=#003000
color2=#005000
color3=#007000
color4=#009000
color5=#00aa00
color6=#00cc00
color7=#00ff00
color8=#001500
color9=#00dd00
color10=#00ee55
color11=#55ff55
color12=#88ff88
color13=#aaffaa
color14=#ccffcc
color15=#eeffee
EOF
        ;;
        7) cat > "$TERMUX_CFG/colors.properties" << 'EOF'
background=#020d1a
foreground=#64c8ff
cursor=#64c8ff
color0=#000000
color1=#001a33
color2=#003366
color3=#004d99
color4=#0066bb
color5=#0080cc
color6=#64c8ff
color7=#aaddff
color8=#001122
color9=#3399ff
color10=#55bbff
color11=#88ccff
color12=#aaddff
color13=#cceeff
color14=#ddf5ff
color15=#eef9ff
EOF
        ;;
        8) cat > "$TERMUX_CFG/colors.properties" << 'EOF'
background=#0f0800
foreground=#ff9500
cursor=#ff9500
color0=#000000
color1=#2a1400
color2=#553300
color3=#885500
color4=#aa7700
color5=#cc8800
color6=#ff9500
color7=#ffcc66
color8=#331a00
color9=#ffaa22
color10=#ffbb44
color11=#ffcc66
color12=#ffdd88
color13=#ffeeaa
color14=#fff0cc
color15=#fff8ee
EOF
        ;;
    esac
}

run_color_changer() {
    show_header
    echo -e "${CYAN}  ╔════════════════════════════════════════════════╗${RESET}"
    echo -e "${CYAN}  ║        TERMINAL COLOR THEMES                   ║${RESET}"
    echo -e "${CYAN}  ╠════════════════════════════════════════════════╣${RESET}"
    for i in 1 2 3 4 5 6 7 8; do
        printf "${CYAN}  ║  ${GREEN}[%s]${RESET} %s %-37s ${CYAN}║${RESET}\n" \
            "$i" "${COLOR_ICONS[$i]}" "${COLOR_SCHEME_NAMES[$i]}"
    done
    echo -e "${CYAN}  ╠════════════════════════════════════════════════╣${RESET}"
    echo -e "${CYAN}  ║  ${YELLOW}[9]${RESET} 🔄 Reset to Termux Default              ${CYAN}    ║${RESET}"
    echo -e "${CYAN}  ║  ${RED}[0]${RESET} ↩  Back to Main Menu                    ${CYAN}    ║${RESET}"
    echo -e "${CYAN}  ╚════════════════════════════════════════════════╝${RESET}"
    echo
    echo -ne "${YELLOW}  Choose color theme [0-9]: ${RESET}"
    read -r color_choice

    [[ "$color_choice" == "0" ]] && return

    if [[ "$color_choice" == "9" ]]; then
        mkdir -p "$TERMUX_CFG"
        rm -f "$TERMUX_CFG/colors.properties"
        termux-reload-settings 2>/dev/null
        echo
        echo -e "${GREEN}  ✅ Restored to Termux default colors!${RESET}"
        echo -e "${DIM}  Restart Termux to see the change.${RESET}"
        echo
        return
    fi

    if ! [[ "$color_choice" =~ ^[1-8]$ ]]; then
        echo -e "${RED}  Invalid choice!${RESET}"; sleep 1; return
    fi

    write_color_scheme "$color_choice"
    termux-reload-settings 2>/dev/null

    echo
    echo -e "${GREEN}  ╔════════════════════════════════════════════╗${RESET}"
    echo -e "${GREEN}  ║  ✅  Color Theme Applied!                   ║${RESET}"
    echo -e "${GREEN}  ║  ${COLOR_ICONS[$color_choice]} ${COLOR_SCHEME_NAMES[$color_choice]}${RESET}"
    echo -e "${GREEN}  ║                                            ║${RESET}"
    echo -e "${GREEN}  ║  Restart Termux to see full effect. 🎨     ║${RESET}"
    echo -e "${GREEN}  ╚════════════════════════════════════════════╝${RESET}"
    echo
}

# ───────────────────────────────────────────────────
#  TERMINAL FONT CHANGER
# ───────────────────────────────────────────────────

FONT_NAMES=(""
    "FiraCode       — Ligatures, coding symbols"
    "JetBrainsMono  — Clean modern dev font"
    "Hack           — Readable, open source"
    "CascadiaCode   — Microsoft's coding font"
    "UbuntuMono     — Ubuntu's terminal font"
    "DejaVuSansMono — Classic readable mono"
    "Inconsolata    — Minimal, clean, elegant"
    "SourceCodePro  — Adobe's professional font"
)
FONT_ICONS=(""  "🔵"  "🟣"  "🔶"  "🔷"  "🟠"  "🟤"  "⚪"  "🔴")

FONT_URLS=(""
    "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/FiraCodeNerdFont-Regular.ttf"
    "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/Regular/JetBrainsMonoNerdFont-Regular.ttf"
    "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/HackNerdFont-Regular.ttf"
    "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/Regular/CaskaydiaCoveNerdFont-Regular.ttf"
    "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/UbuntuMono/Regular/UbuntuMonoNerdFont-Regular.ttf"
    "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/DejaVuSansMNerdFont-Regular.ttf"
    "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Inconsolata/InconsolataNerdFont-Regular.ttf"
    "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/SauceCodeProNerdFont-Regular.ttf"
)

run_font_changer() {
    show_header
    echo -e "${CYAN}  ╔════════════════════════════════════════════════╗${RESET}"
    echo -e "${CYAN}  ║        TERMINAL FONT STYLES                    ║${RESET}"
    echo -e "${CYAN}  ╠════════════════════════════════════════════════╣${RESET}"
    for i in 1 2 3 4 5 6 7 8; do
        printf "${CYAN}  ║  ${GREEN}[%s]${RESET} %s %-37s ${CYAN}║${RESET}\n" \
            "$i" "${FONT_ICONS[$i]}" "${FONT_NAMES[$i]}"
    done
    echo -e "${CYAN}  ╠════════════════════════════════════════════════╣${RESET}"
    echo -e "${CYAN}  ║  ${YELLOW}[9]${RESET} 🔄 Reset to Termux Default font         ${CYAN}   ║${RESET}"
    echo -e "${CYAN}  ║  ${RED}[0]${RESET} ↩  Back to Main Menu                    ${CYAN}   ║${RESET}"
    echo -e "${CYAN}  ╚════════════════════════════════════════════════╝${RESET}"
    echo
    echo -ne "${YELLOW}  Choose font [0-9]: ${RESET}"
    read -r font_choice

    [[ "$font_choice" == "0" ]] && return

    if [[ "$font_choice" == "9" ]]; then
        rm -f "$TERMUX_CFG/font.ttf"
        termux-reload-settings 2>/dev/null
        echo
        echo -e "${GREEN}  ✅ Restored to Termux default font!${RESET}"
        echo -e "${DIM}  Restart Termux to see the change.${RESET}"
        echo
        return
    fi

    if ! [[ "$font_choice" =~ ^[1-8]$ ]]; then
        echo -e "${RED}  Invalid choice!${RESET}"; sleep 1; return
    fi

    echo
    echo -e "${YELLOW}  ⬇  Downloading ${FONT_NAMES[$font_choice]}...${RESET}"
    mkdir -p "$TERMUX_CFG"

    if curl -L --progress-bar "${FONT_URLS[$font_choice]}" -o "$TERMUX_CFG/font.ttf"; then
        termux-reload-settings 2>/dev/null
        echo
        echo -e "${GREEN}  ╔════════════════════════════════════════════╗${RESET}"
        echo -e "${GREEN}  ║  ✅  Font Applied Successfully!             ║${RESET}"
        echo -e "${GREEN}  ║  ${FONT_ICONS[$font_choice]} ${FONT_NAMES[$font_choice]}${RESET}"
        echo -e "${GREEN}  ║                                            ║${RESET}"
        echo -e "${GREEN}  ║  Restart Termux to see the new font! 🔤   ║${RESET}"
        echo -e "${GREEN}  ╚════════════════════════════════════════════╝${RESET}"
    else
        echo
        echo -e "${RED}  ❌ Download failed. Check your internet connection and try again.${RESET}"
    fi
    echo
}

# ───────────────────────────────────────────────────
#  REMOVE / RESTORE
# ───────────────────────────────────────────────────

run_remove() {
    show_header
    echo -e "${RED}  ╔════════════════════════════════════════════╗${RESET}"
    echo -e "${RED}  ║         REMOVE TMX BANNER                  ║${RESET}"
    echo -e "${RED}  ╠════════════════════════════════════════════╣${RESET}"
    echo -e "${RED}  ║  This will restore your original Termux    ║${RESET}"
    echo -e "${RED}  ║  bashrc and motd. Are you sure?            ║${RESET}"
    echo -e "${RED}  ╚════════════════════════════════════════════╝${RESET}"
    echo
    echo -e "${YELLOW}  [1] ✅ Yes, remove banner${RESET}"
    echo -e "${YELLOW}  [0] ↩  Cancel${RESET}"
    echo -ne "  → "; read -r remove_choice
    [[ "$remove_choice" != "1" ]] && return
    [[ -f original_bashrc.txt ]] && cat original_bashrc.txt > "$TERMUX_ETC/bash.bashrc"
    [[ -f original_motd.txt  ]] && cat original_motd.txt  > "$TERMUX_ETC/motd"
    echo
    echo -e "${GREEN}  ✅ Banner removed. Original Termux screen restored.${RESET}"
    echo
}

# ───────────────────────────────────────────────────
#  BACKUP & MAIN
# ───────────────────────────────────────────────────

do_backup() {
    [[ -f "$TERMUX_ETC/bash.bashrc" && ! -f original_bashrc.txt ]] && \
        cp "$TERMUX_ETC/bash.bashrc" original_bashrc.txt
    [[ -f "$TERMUX_ETC/motd" && ! -f original_motd.txt ]] && \
        cp "$TERMUX_ETC/motd" original_motd.txt
}

main() {
    do_backup
    while true; do
        main_menu
        case $main_choice in
            1) run_banner_setup  ;;
            2) run_color_changer ;;
            3) run_font_changer  ;;
            4) run_remove        ;;
            0)
                echo -e "${RED}  Exiting TMX Banner. Goodbye!${RESET}"
                exit 0
                ;;
            *)
                echo -e "${RED}  Invalid choice!${RESET}"; sleep 1
                ;;
        esac
    done
}

main

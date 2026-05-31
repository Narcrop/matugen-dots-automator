# 🎨 Matugen Dots & Automator

Welcome! This repository contains my personal **Matugen** configuration (Material You color palette generator), custom templates, and an automation script to seamlessly change wallpapers and reload dynamic colors with a single click via your file manager's (dolphin) context menu.

---

## ✨ Features

* **Custom Templates:** Optimized templates for [KDE, GTK, Konsole, Kitty, Pywalfox, Vesktop].
* **Centralized Config:** My production ready Matugen `config.toml`.
* **Custom Kitty Settings:** kitty.conf
* **One-Click Automation:** A script that integrates into your file manager's right-click menu to update your wallpaper and trigger Matugen instantly.

---

## Prerequisites

### Prerequisites
Make sure you have the following installed:
* [Matugen](https://github.com/InioAsis/matugen)
* [Pywalfox](https://github.com/frewacom/pywalfox)
* [Pywalfox Add-On](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/)
* [Kitty](https://github.com/kovidgoyal/kitty)
* [Your wallpaper daemon like: [awww](https://codeberg.org/LGFae/awww), [hyprpaper](https://github.com/hyprwm/hyprpaper), [plasma-apply-wallpaperimage](https://kde.org/es/plasma-desktop/)]

---

## 🚀 Installation & Setup

You can easily install and set up this project by cloning the repository and moving the files to their respective locations, or by running the automated manual setup below.

### 1. Clone the Repository
```bash
git clone https://github.com/Narcrop/matugen-dots-automator.git
cd matugen-dots-automator

```

### 2. Deploy Files to their Correct Locations

Copy the configuration folders, scripts, and desktop entries to your user's local directories:

```bash
cp -r .config ~/
cp -r .local ~/

```

### 3. Grant Execution Permissions (Crucial Step)

For security reasons, Linux blocks scripts and custom shortcut menus from running until you explicitly mark them as executable. Run the following commands:

```bash
# Give execution permissions to the automation script
chmod +x ~/.local/bin/switch_rice.sh

# Give execution permissions to the desktop entry
chmod +x ~/.local/share/kio/servicemenus/matugen-wallpaper.desktop

```

### 4. File Manager Integration (Right-Click Context Menu)

Depending on your Desktop Environment or File Manager, you need to tie the script to your right-click action:

* **KDE Dolphin:** The `matugen-wallpaper.desktop` file placed in `~/.local/share/kio/servicemenus/` will register it as a Service Menu in rigth click action above a image
* **Thunar (XFCE): in progress
* **Nemo (Cinnamon): in  progress

---

### Demostration
https://github.com/user-attachments/assets/a686924a-83f8-4d71-b7f8-7ecf1e6d2d91









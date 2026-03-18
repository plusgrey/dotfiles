# My Emacs

<div align="center">

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![GNU Emacs](https://img.shields.io/badge/Emacs-28.1%2B-7F5AB6?logo=gnu&logoColor=white)](https://www.gnu.org/software/emacs/)
[![Platform](https://img.shields.io/badge/Platform-Windows%20|%20Linux%20|%20macOS-informational)](#prerequisite)

</div>

<div align="center">

![My Emacs](logo.png)

</div>

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
  - [Operating Systems](#operating-systems)
  - [GNU Emacs](#gnu-emacs)
- [Quick Start](#quick-start)
  - [Installation](#installation)
    - [Standard Installation](#standard-installation)
    - [First Startup](#first-startup)
  - [Updating](#updating)
    - [Update Commands](#update-commands)
- [Customization](#customization)
  - [Using Customize Interface](#using-customize-interface)
  - [Manual Configuration](#manual-configuration)
    - [Common Configuration Options](#common-configuration-options)
- [Hydra Keybindings](#hydra-keybindings)

<!-- markdown-toc end -->

This is a personal Emacs configuration that aims to enhance the default Emacs experience.
It bundles a plethora of additional packages and adds useful customizations. The final product
offers an easy to use Emacs configuration for both newcomers and power users.

It is able to run on Windows, GNU Linux and macOS. It is compatible **ONLY with
GNU Emacs 28.1 and above**. In general you're advised to always run with the
latest stable release - currently **30.1**.

## Features

- **Out of the box**: Ready to use immediately after installation
- **Clean and Fast**: Optimized for performance and clean interface
- **Quick fuzzy search**: Efficient file and text searching capabilities
- **Better Org/Markdown support**: Enhanced markup language editing
- **Multi-language Programming Support**:
  - **System Languages**: C/C++/Object-C/C#/Java
  - **Scripting Languages**: Python/Ruby/Perl/PHP/Shell/Powershell/Bat
  - **Web Technologies**: JavaScript/Typescript/JSON/YAML
  - **Markup Languages**: HTML/CSS/XML
  - **Modern Languages**: Golang/Swift/Rust/Dart/Elixir
  - *And many more...*
- **Auto completion**: Intelligent code completion
- **Fly syntax check**: Real-time syntax error detection
- **Fly spell check**: Live spelling correction
- **Git integration**: Seamless version control workflow
- **Project/Workspace integration**: Advanced project management
- **Docker support**: Containerization tools integration
- **Enhanced Chinese support**:
  - Chinese calendar integration
  - Youdao dictionary lookup
  - Google translation service
  - Pinyin search functionality

## Prerequisites

### Operating Systems

- **GNU Linux**: Fully supported
- **macOS**: Fully supported
- **Windows**: Supported via Cygwin/MSYS

### GNU Emacs

Compatible with **GNU Emacs 28.1 and above**. We recommend using the latest stable release (currently **Emacs 30.1**).

For installation instructions, please refer to [Installing Emacs](http://wikemacs.org/index.php/Installing_Emacs).

## Quick Start

### Installation

#### Standard Installation

To install My Emacs, backup your existing configuration and clone the repository:

```bash
# Backup your existing configuration
mv ~/.emacs.d ~/.emacs.d.bak

# Clone the repository
git clone --depth 1 <your-repo-url> ~/.emacs.d
```

Alternatively, you can download the ZIP package directly and extract it to `~/.emacs.d`.

**:information_source: Notes**: XDG Configuration Directory (Linux)

If you're using Linux and prefer an XDG-compatible location, use:

```bash
# Ensure ~/.emacs.d, ~/.emacs and ~/.emacs.el don't exist
git clone --depth 1 <your-repo-url> $XDG_CONFIG_HOME/emacs
```

Or extract the ZIP package to the `$XDG_CONFIG_HOME/emacs` directory.

#### First Startup

After installation, start Emacs and wait for packages to install during the first startup. This may take some time depending on your network speed.

**:warning: Notes**:
- First startup may take a while as packages are downloaded and installed
- If installation stalls, check your network connection or consider using a proxy
- For troubleshooting, start with minimal configuration: `emacs -Q -l ~/.emacs.d/init-mini.el`

**:rocket: Enjoy!** :smile:

### Updating

Keep your My Emacs installation up-to-date with these commands:

#### Update Commands

```elisp
;; Update everything: configurations and packages
M-x my-update

;; Update only Emacs configurations
M-x my-update-config

;; Update only packages
M-x my-update-packages
```

## Customization

### Using Customize Interface

The easiest way to customize My Emacs is through the built-in customization interface:

1. Execute `M-x customize-group`
2. Select the `my` group
3. Modify the settings as needed
4. Click **Save** to store the configurations
5. Restart Emacs to apply changes

### Manual Configuration

For advanced users, you can directly edit configuration settings in your `custom.el` file:

#### Common Configuration Options

```elisp
;; Disable startup logo
(setq my-logo nil)

;; Set user information
(setq my-full-name "Your Name")           ; Your full name
(setq my-mail-address "your@email.com")   ; Your email address

;; Proxy settings
(setq my-proxy "127.0.0.1:1087")          ; HTTP/HTTPS proxy
(setq my-socks-proxy "127.0.0.1:1086")    ; SOCKS proxy

;; System settings
(setq my-use-exec-path-from-shell t)      ; Use shell environment

;; Visual settings
(setq my-icon t)                          ; Display icons (t to enable, nil to disable)
(setq my-package-archives 'melpa)         ; Package repository (melpa, bfsu, tuna, ustc)
(setq my-theme 'auto)                     ; Theme: auto, random, system, default, dark, light

;; UI settings
(setq my-completion-style 'minibuffer)    ; Completion style: minibuffer or childframe
(setq my-frame-maximized-on-startup t)    ; Maximize frame on startup
(setq my-dashboard nil)                   ; Show dashboard on startup (t to show, nil to hide)

;; Development settings
(setq my-lsp 'lsp-mode)                   ; LSP client: lsp-mode, eglot, or nil
(setq my-lsp-format-on-save t)            ; Auto-format on save
(setq my-lsp-format-on-save-ignore-modes  ; Modes to skip formatting on save
     '(c-mode c++-mode python-mode markdown-mode))

;; Feature toggles
(setq my-tree-sitter nil)                 ; Enable tree-sitter (requires Emacs 29+)
(setq my-chinese-calendar nil)            ; Enable Chinese calendar support
(setq my-player t)                        ; Enable media player controls
(setq my-prettify-symbols-alist nil)      ; Symbol prettification (nil to use font ligatures)
```

**:information_source: Notes**:
- The default package archive is `melpa`. You can change this in `custom.el` or via `M-x set-package-archives`
- Personal configurations can be placed in `~/.emacs.d/custom-post.org` or `~/.emacs.d/custom-post.el`

## Hydra Keybindings

My Emacs comes with several Hydra interfaces for efficient workflows. Here are the available hydras and their keybindings:

| Hydra Name                  | Scope                | Keybinding(s)     | Description                          |
|:---------------------------|:--------------------|:------------------|:-------------------------------------|
| `dape-hydra`               | Global               | `M-<f5>`          | Debug adapter protocol actions       |
| `dashboard-hydra`          | Dashboard Mode       | `h` / `?`         | Dashboard navigation and actions     |
| `doom-modeline-hydra`      | Modeline Mode        | `C-<f6>`          | Modeline customization options       |
| `elfeed-hydra`             | Elfeed Search Mode   | `?`               | RSS feed reader commands             |
| `git-messenger-hydra`      | Global               | `C-x v p`         | Git commit message inspection        |
| `hideshow-hydra`           | Programming Modes    | `C-~`             | Code folding/unfolding actions       |
| `hydra-dired-quick-sort`   | Dired Mode           | `S`               | File sorting options                 |
| `lsp-ui-hydra`             | LSP UI Mode          | `M-<f6>`          | LSP UI interface commands            |
| `org-hydra`                | Org Mode             | `<`               | Org template insertion               |
| `rect-hydra`               | Org Mode             | `S-<return>`      | Rectangle selection operations       |
| `rect-hydra`               | Text/Programming     | `C-<return>`      | Rectangle selection operations       |
| `smerge-mode-hydra`        | Smerge Mode          | `C-c m`           | Merge conflict resolution            |
| `toggles-hydra`            | Global               | `<f6>`            | Global option toggles                |
| `window-hydra`             | Global               | `C-c w` / `C-x o w`| Window management                  |
| `xwidget-hydra`            | XWidget Webkit Mode  | `?`               | Embedded browser controls            |
| `ztreediff-hydra`          | Ztree Diff Mode      | `C-<f5>`          | Directory comparison operations      |

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

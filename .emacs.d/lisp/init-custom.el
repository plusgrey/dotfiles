;; init-custom.el --- Define customizations.	-*- lexical-binding: t -*-

;; Copyright (C) 2026 Your Name

;; Author: Your Name <your.email@example.com>
;; URL: https://github.com/yourusername/.emacs.d

;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;

;;; Commentary:
;;
;; Customization.
;;

;;; Code:

(eval-when-compile
  (require 'package))

(defgroup my nil
  "My Emacs customization."
  :group 'convenience
  :link '(url-link :tag "Homepage" "https://github.com/yourusername/.emacs.d"))

(defcustom my-logo (expand-file-name
                         (if (display-graphic-p) "logo.png" "banner.txt")
                         user-emacs-directory)
  "Set My logo. nil means official logo."
  :group 'my
  :type 'string)

(defcustom my-full-name user-full-name
  "Set user full name."
  :group 'my
  :type 'string)

(defcustom my-mail-address user-mail-address
  "Set user email address."
  :group 'my
  :type 'string)

(defcustom my-org-directory (expand-file-name "~/org")
  "Set org directory."
  :group 'my
  :type 'string)

(defcustom my-proxy "127.0.0.1:7897"
  "Set HTTP/HTTPS proxy."
  :group 'my
  :type 'string)

(defcustom my-socks-proxy "127.0.0.1:7897"
  "Set SOCKS proxy."
  :group 'my
  :type 'string)



(defcustom my-use-exec-path-from-shell
  (and (or (memq window-system '(mac ns x)) (daemonp))
       (not (bound-and-true-p ns-emacs-plus-injected-path)))
  "Use `exec-path-from-shell' or not.
If using emacs-plus with path ejection, set to nil."
  :group 'my
  :type 'boolean)

(defcustom my-icon t
  "Display icons or not."
  :group 'my
  :type 'boolean)

;; Emacs Lisp Package Archive (ELPA)
;; @see https://github.com/melpa/melpa and https://elpa.emacs-china.org/.
(defcustom my-package-archives-alist
  (let ((proto (if (gnutls-available-p) "https" "http")))
    `((melpa    . (("gnu"    . ,(format "%s://elpa.gnu.org/packages/" proto))
                   ("nongnu" . ,(format "%s://elpa.nongnu.org/nongnu/" proto))
                   ("melpa"  . ,(format "%s://melpa.org/packages/" proto))))
      (bfsu     . (("gnu"    . ,(format "%s://mirrors.bfsu.edu.cn/elpa/gnu/" proto))
                   ("nongnu" . ,(format "%s://mirrors.bfsu.edu.cn/elpa/nongnu/" proto))
                   ("melpa"  . ,(format "%s://mirrors.bfsu.edu.cn/elpa/melpa/" proto))))
      (iscas    . (("gnu"    . ,(format "%s://mirror.iscas.ac.cn/elpa/gnu/" proto))
                   ("nongnu" . ,(format "%s://mirror.iscas.ac.cn/elpa/nongnu/" proto))
                   ("melpa"  . ,(format "%s://mirror.iscas.ac.cn/elpa/melpa/" proto))))
      (netease  . (("gnu"    . ,(format "%s://mirrors.163.com/elpa/gnu/" proto))
                   ("nongnu" . ,(format "%s://mirrors.163.com/elpa/nongnu/" proto))
                   ("melpa"  . ,(format "%s://mirrors.163.com/elpa/melpa/" proto))))
      (sjtu     . (("gnu"    . ,(format "%s://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/" proto))
                   ("nongnu" . ,(format "%s://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/nongnu/" proto))
                   ("melpa"  . ,(format "%s://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/" proto))))
      (tuna     . (("gnu"    . ,(format "%s://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/" proto))
                   ("nongnu" . ,(format "%s://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/" proto))
                   ("melpa"  . ,(format "%s://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/" proto))))
      (ustc     . (("gnu"    . ,(format "%s://mirrors.ustc.edu.cn/elpa/gnu/" proto))
                   ("nongnu" . ,(format "%s://mirrors.ustc.edu.cn/elpa/nongnu/" proto))
                   ("melpa"  . ,(format "%s://mirrors.ustc.edu.cn/elpa/melpa/" proto))))))
  "A list of the package archives."
  :group 'my
  :type '(alist :key-type (symbol :tag "Archive group name")
                :value-type (alist :key-type (string :tag "Archive name")
                                   :value-type (string :tag "URL or directory name"))))

(defcustom my-package-archives 'melpa
  "Set package archives from which to fetch."
  :group 'my
  :set (lambda (symbol value)
         (set symbol value)
         (setq package-archives
               (or (alist-get value my-package-archives-alist)
                   (error "Unknown package archives: `%s'" value))))
  :type `(choice ,@(mapcar
                    (lambda (item)
                      (let ((name (car item)))
                        (list 'const
                              :tag (capitalize (symbol-name name))
                              name)))
                    my-package-archives-alist)))

(defcustom my-theme-alist
  '((default . doom-one)
    (pro     . doom-monokai-pro)
    (dark    . doom-vibrant)
    (light   . doom-one-light)
    (warm    . doom-solarized-light)
    (cold    . doom-palenight)
    (day     . doom-tomorrow-day)
    (night   . doom-tomorrow-night))
  "List of themes mapped to internal themes."
  :group 'my
  :type '(alist :key-type (symbol :tag "Theme")
                :value-type (symbol :tag "Internal theme")))

(defcustom my-auto-themes '(("8:00"  . doom-one-light)
				                 ("19:00" . doom-one))
  "List of themes mapped to the time they should be loaded.

The keywords `:sunrise' and `:sunset' can be used for the time
if the option `calendar-latitude' and option `calendar-longitude' are set.
For example:
  \\='((:sunrise . doom-one-light)
    (:sunset  . doom-one))"
  :group 'my
  :type '(alist :key-type (string :tag "Time")
                :value-type (symbol :tag "Theme")))

(defcustom my-system-themes '((dark  . doom-one)
                                   (light . doom-one-light))
  "List of themes related the system appearance.

It's only available on macOS currently."
  :group 'my
  :type '(alist :key-type (symbol :tag "Appearance")
                :value-type (symbol :tag "Theme")))

(defcustom my-theme 'default
  "The color theme."
  :group 'my
  :type `(choice (const :tag "Auto" auto)
                 (const :tag "Random" random)
                 (const :tag "System" system)
                 ,@(mapcar
                    (lambda (item)
                      (let ((name (car item)))
                        (list 'const
                              :tag (capitalize (symbol-name name))
                              name)))
                    my-theme-alist)
                 symbol))

(defcustom my-completion-style 'childframe
  "Completion display style."
  :group 'my
  :type '(choice (const :tag "Minibuffer" minibuffer)
                 (const :tag "Child Frame" childframe)))

(defcustom my-frame-maximized-on-startup nil
  "Maximize frame on startup or not."
  :group 'my
  :type 'boolean)

(defcustom my-dashboard (not (daemonp))
  "Display dashboard at startup or not.
If Non-nil, use dashboard, otherwise will restore previous session."
  :group 'my
  :type 'boolean)

(defcustom my-lsp 'eglot
  "Set language server.

`lsp-mode': See https://github.com/emacs-lsp/lsp-mode.
`eglot': See https://github.com/joaotavora/eglot.
nil means disabled."
  :group 'my
  :type '(choice (const :tag "LSP Mode" lsp-mode)
                 (const :tag "Eglot" eglot)
                 (const :tag "Disable" nil)))

(defcustom my-tree-sitter t
  "Enable tree-sitter or not.
Native tree-sitter is introduced in 29."
  :group 'my
  :type 'boolean)

(defcustom my-lsp-format-on-save nil
  "Auto format buffers on save."
  :group 'my
  :type 'boolean)

(defcustom my-lsp-format-on-save-ignore-modes
  '(c-mode c++-mode python-mode markdown-mode)
  "The modes that don't auto format and organize imports while saving the buffers.
`prog-mode' means ignoring all derived modes."
  :group 'my
  :type '(repeat (symbol :tag "Major-Mode")))

(defcustom my-chinese-calendar nil
  "Enable Chinese calendar or not."
  :group 'my
  :type 'boolean)

(defcustom my-player nil
  "Enable players or not."
  :group 'my
  :type 'boolean)

(defcustom my-prettify-symbols-alist
  '(("lambda" . ?λ)
    ("<-"     . ?←)
    ("->"     . ?→)
    ("->>"    . ?↠)
    ("=>"     . ?⇒)
    ("map"    . ?↦)
    ("/="     . ?≠)
    ("!="     . ?≠)
    ("=="     . ?≡)
    ("<="     . ?≤)
    (">="     . ?≥)
    ("=<<"    . (?= (Br . Bl) ?≪))
    (">>="    . (?≫ (Br . Bl) ?=))
    ("<=<"    . ?↢)
    (">=>"    . ?↣)
    ("&&"     . ?∧)
    ("||"     . ?∨)
    ("not"    . ?¬))
  "A list of symbol prettifications.
Nil to use font supports ligatures."
  :group 'my
  :type '(alist :key-type string :value-type (choice character sexp)))

;; Load `custom-file'
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(provide 'init-custom)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-custom.el ends here

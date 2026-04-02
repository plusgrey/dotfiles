;;; custom.el --- user customization file    -*- lexical-binding: t no-byte-compile: t -*-
;;; Commentary:
;;;       Add or change the configurations in custom.el, then restart Emacs.
;;;       Put your own configurations in custom-post.el to override default configurations.
;;; Code:

;; (setq my-logo nil)                        ; Logo file or nil (official logo)
;; (setq my-full-name "user name")           ; User full name
;; (setq my-mail-address "user@email.com")   ; Email address
;; (setq my-proxy "127.0.0.1:7897")          ; HTTP/HTTPS proxy
;; (setq my-socks-proxy "127.0.0.1:7897")    ; SOCKS proxy

;; (setq my-use-exec-path-from-shell nil)    ; Use `exec-path-from-shell' or not. If using emacs-plus with path ejection, set to nil
;; (setq my-icon nil)                        ; Display icons or not: t or nil
(setq my-package-archives 'melpa)         ; Package repo: melpa, bfsu, iscas, netease, sjtu, tencent, tuna or ustc
(setq my-theme 'vscode)                  ; Color theme: auto, random, system, default, pro, dark, light, warm, cold, day, night or vscode
;; (setq my-completion-style 'minibuffer)    ; Completion display style: minibuffer or childframe
;; (setq my-frame-maximized-on-startup t)    ; Maximize frame on startup or not: t or nil
;; (setq my-dashboard nil)                   ; Display dashboard at startup or not: t or nil
;; (setq my-lsp 'lsp-mode)                   ; Set LSP client: lsp-mode, eglot or nil
;; (setq my-lsp-format-on-save t)            ; Auto format buffers on save: t or nil
;; (setq my-lsp-format-on-save-ignore-modes '(c-mode c++-mode python-mode markdown-mode)) ; Ignore format on save for some languages
;; (setq my-tree-sitter nil)                 ; Enable tree-sitter or not: t or nil. Only available in 29+.
;; (setq my-chinese-calendar t)              ; Support Chinese calendar or not: t or nil
;; (setq my-player t)                        ; Enable players or not: t or nil
(setq my-prettify-symbols-alist nil)      ; Alist of symbol prettifications. Nil to use font supports ligatures.

;; For Emacs devel
;; (setq package-user-dir (locate-user-emacs-file (format "elpa-%s" emacs-major-version)))
;; (setq desktop-base-file-name (format ".emacs-%s.desktop" emacs-major-version))
;; (setq desktop-base-lock-name (format ".emacs-%s.desktop.lock" emacs-major-version))

;; Fonts
(defun my-setup-fonts ()
  "Setup fonts."
  (when (display-graphic-p)
    ;; Set default font
    (cl-loop for font in '("MesloLGS Nerd Font Mono" "FiraCode Nerd Font" "CaskaydiaCove Nerd Font"
                           "Fira Code" "Cascadia Code" "Jetbrains Mono"
                           "SF Mono" "Menlo" "Hack" "Source Code Pro"
                           "Monaco" "DejaVu Sans Mono" "Consolas")
             when (font-available-p font)
             return (set-face-attribute 'default nil
                                        :family font
                                        :height (cond (sys/macp 150)
                                                      (sys/win32p 140)
                                                      (t 150))))

    ;; Set mode-line font
    ;; (cl-loop for font in '("SF Mono" "Menlo" "SF Pro Display" "Helvetica")
    ;;          when (font-available-p font)
    ;;          return (progn
    ;;                   (set-face-attribute 'mode-line nil :family font :height 120)
    ;;                   (when (facep 'mode-line-active)
    ;;                     (set-face-attribute 'mode-line-active nil :family font :height 120))
    ;;                   (set-face-attribute 'mode-line-inactive nil :family font :height 120)))

    ;; Specify font for all unicode characters
    (cl-loop for font in '("Apple Symbols" "Segoe UI Symbol" "Symbola" "Symbol")
             when (font-available-p font)
             return (set-fontset-font t 'symbol (font-spec :family font) nil 'prepend))

    ;; Emoji
    (cl-loop for font in '("Noto Color Emoji" "Apple Color Emoji" "Segoe UI Emoji")
             when (font-available-p font)
             return (set-fontset-font t 'emoji (font-spec :family font) nil 'prepend))

    ;; Specify font for Chinese characters
    ;; (cl-loop for font in '("LXGW Neo Xihei" "LXGW WenKai Mono" "WenQuanYi Micro Hei Mono"
    ;;                        "PingFang SC" "Microsoft Yahei UI" "Simhei")
    ;;          when (font-available-p font)
    ;;          return (progn
    ;;                   (setq face-font-rescale-alist `((,font . 1.3)))
    ;;                   (set-fontset-font t 'han (font-spec :family font))))
    ))

(my-setup-fonts)
(add-hook 'window-setup-hook #'my-setup-fonts)
(add-hook 'server-after-make-frame-hook #'my-setup-fonts)

;; Mail
;; (setq message-send-mail-function 'smtpmail-send-it
;;       smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;;       smtpmail-auth-credentials '(("smtp.gmail.com" 587
;;                                    user-mail-address nil))
;;       smtpmail-default-smtp-server "smtp.gmail.com"
;;       smtpmail-smtp-server "smtp.gmail.com"
;;       smtpmail-smtp-service 587)

;; Calendar
;; Set location , then press `S' can show the time of sunrise and sunset
;; (setq calendar-location-name "Chengdu"
;;       calendar-latitude 30.67
;;       calendar-longitude 104.07)

;; Misc.
;; (setq confirm-kill-emacs 'y-or-n-p)
;; (setq package-check-signature nil)

;; Enable proxy
;; (enable-http-proxy)
;; (enable-socks-proxy)

;; Display on the specified monitor
;; (when (and (> (length (display-monitor-attributes-list)) 1)
;;            (> (display-pixel-width) 1920))
;;   (set-frame-parameter nil 'left 288))

;; (put 'cl-destructuring-bind 'lisp-indent-function 'defun)
;; (put 'treemacs-create-theme 'lisp-indent-function 'defun)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" default)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Maximize current buffer even from side window (treemacs, vterm, etc.)
(defun my-maximize-buffer ()
  "Display current buffer in a normal window and delete others.
Works even when called from a side window."
  (interactive)
  (let ((buf (current-buffer)))
    ;; Find the first non-side window
    (catch 'found
      (dolist (win (window-list))
        (unless (window-parameter win 'window-side)
          (select-window win)
          (switch-to-buffer buf)
          (throw 'found nil))))
    ;; Now delete other windows
    (delete-other-windows)))

;; Bind to C-c 1 (C-x 1 won't work because it's used by side windows)
(global-set-key (kbd "C-c 1") #'my-maximize-buffer)

;;; custom.el ends here

;;; init.el --- Configuration optimized for Singapore/Global access -*- lexical-binding: t -*-

;; 1. Setup Load Paths
(add-to-list 'load-path (expand-file-name "core" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "theme" user-emacs-directory))

;; 2. Package Management Initialization
(require 'package)

;; Using official global mirrors for better speed/reliability in Singapore
(setq package-archives
      '(("gnu"    . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa"  . "https://melpa.org/packages/")))

;; Initialize packages
(unless (bound-and-true-p package--initialized)
  (package-initialize))

;; Only refresh if we have no local cache (saves startup time)
(unless package-archive-contents
  (package-refresh-contents))

;; 3. Setup use-package
;; Ensure use-package is installed (Emacs 29+ has it built-in, but this is safe)
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; 4. Load Custom Modules
(require 'basic)
(require 'dev)
(require 'theme)

;; 5. Handle Custom File (UI generated settings)
;; Keep this at the end to ensure your manual config isn't overwritten by UI changes
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file 'noerror))

(add-hook
 'emacs-startup-hook
 (lambda ()
   (setq gc-cons-threshold (* 50 1024 1024)
         gc-cons-percentage 0.1)
   (when (boundp 'my--file-name-handler-alist)
     (setq file-name-handler-alist my--file-name-handler-alist))))

;;; init.el ends here

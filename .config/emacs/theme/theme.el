;;; theme.el --- Light Eye-Care Theme Configuration -*- lexical-binding: t -*-

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (load-theme 'doom-zenburn t)

  ;; 在使用选定主题时，让光标处的括号高亮更明显
  (doom-themes-visual-bell-config)
  
  ;; 修正某些 UI 元素的显示 (可选)
  (doom-themes-neotree-config)
  (doom-themes-org-config))

(provide 'theme)

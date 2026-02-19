;;; theme.el --- Light Eye-Care Theme Configuration -*- lexical-binding: t -*-

(use-package doom-themes
  :ensure t
  :config
  ;; 设置浅色护眼主题
  ;; 选项 A: doom-one-light (现代、清晰，墙裂推荐)
  ;; 选项 B: doom-solarized-light (经典的低对比度“黄纸”护眼色)
  (load-theme 'doom-one-light t)

  ;; 在使用选定主题时，让光标处的括号高亮更明显
  (doom-themes-visual-bell-config)
  
  ;; 修正某些 UI 元素的显示 (可选)
  (doom-themes-neotree-config)
  (doom-themes-org-config))

(provide 'theme)

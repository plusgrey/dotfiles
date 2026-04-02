# My Emacs 配置手册（快捷键对齐版）

> 基于 `.emacs.d` 源码自动对账（含 `init-mini.el` / `custom.el` / `init.el` / `lisp/init-*.el`）。

## 目录
- [全局自定义快捷键](#全局自定义快捷键)
- [模式与插件专属快捷键](#模式与插件专属快捷键)
- [Hydra 入口与内部键](#hydra-入口与内部键)
- [常用 Emacs 默认快捷键](#常用-emacs-默认快捷键)
- [冲突与覆盖说明](#冲突与覆盖说明)
- [源码权威索引（全部自定义键位）](#源码权威索引全部自定义键位)

## 全局自定义快捷键

| 快捷键 | 命令 | 来源 |
|---|---|---|
| `<C-return>` | `rectangle-mark-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:160` |
| `<f12>` | `agent-shell` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:124` |
| `<f13>` | `agent-shell` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:125` |
| `<f2>` | `open-dashboard` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:46` |
| `<f5>` | `dape` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dap.el:38` |
| `<f5>` | `revert-current-buffer` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:169` |
| `<f6>` | `toggles-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-hydra.el:68` |
| `<f7>` | `olivetti-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:188` |
| `[(super a)]` | `mark-whole-buffer` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:151` |
| `[(super c)]` | `kill-ring-save` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:153` |
| `[(super l)]` | `goto-line` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:155` |
| `[(super s)]` | `save-buffer` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:154` |
| `[(super v)]` | `yank` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:152` |
| `[(super w)]` | `delete-frame` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:156` |
| `[(super z)]` | `undo` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:157` |
| `[remap describe-bindings]` | `embark-bindings` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:261` |
| `[remap describe-command]` | `helpful-command` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:220` |
| `[remap describe-function]` | `helpful-callable` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:219` |
| `[remap describe-key]` | `helpful-key` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:222` |
| `[remap describe-symbol]` | `helpful-symbol` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:223` |
| `[remap describe-variable]` | `helpful-variable` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:221` |
| `[remap Info-search]` | `consult-info` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:114` |
| `[remap isearch-forward]` | `consult-line` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:115` |
| `[remap kill-ring-save]` | `easy-kill` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-kill-ring.el:40` |
| `[remap mark-sexp]` | `easy-mark` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-kill-ring.el:41` |
| `[remap move-beginning-of-line]` | `mwim-beginning` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:328` |
| `[remap move-end-of-line]` | `mwim-end` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:329` |
| `[remap other-window]` | `ace-window` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:79` |
| `[remap query-replace-regexp]` | `anzu-query-replace-regexp` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:187` |
| `[remap query-replace]` | `anzu-query-replace` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:186` |
| `[remap recentf-open-files]` | `consult-recent-file` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:116` |
| `C-'` | `avy-goto-char-2` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:118` |
| `C-,` | `goto-last-change` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:338` |
| `C-.` | `consult-imenu` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:106` |
| `C-:` | `avy-goto-char` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:117` |
| `C-;` | `iedit-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:234` |
| `C-<` | `mc/mark-previous-like-this` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:269` |
| `C-<f12>` | `gptel` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:68` |
| `C-<f5>` | `quickrun` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:106` |
| `C-<f8>` | `bongo` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:39` |
| `C-=` | `er/expand-region` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:246` |
| `C->` | `mc/mark-next-like-this` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:268` |
| `C-c /` | `webjump` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:216` |
| `C-c 1` | `my-maximize-buffer` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/custom.el:144` |
| `C-c a` | `agent-shell` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:126` |
| `C-c A` | `agent-shell-new-shell` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:127` |
| `C-c a` | `org-agenda` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:78` |
| `C-c b` | `org-switchb` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:79` |
| `C-c c e` | `consult-colors-emacs` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:108` |
| `C-c c f` | `describe-face` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:110` |
| `C-c c g` | `git-link-dispatch` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:223` |
| `C-c c i` | `file-info-show` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:291` |
| `C-c c l` | `find-library` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:111` |
| `C-c c t` | `consult-theme` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:112` |
| `C-c c w` | `consult-colors-web` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:109` |
| `C-c C-<` | `mc/mark-all-like-this` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:270` |
| `C-c C-z .` | `browse-url-at-point` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:89` |
| `C-c C-z b` | `browse-url-of-buffer` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:90` |
| `C-c C-z e` | `browse-url-emacs` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:93` |
| `C-c C-z r` | `browse-url-of-region` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:91` |
| `C-c C-z u` | `browse-url` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:92` |
| `C-c C-z v` | `browse-url-of-file` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:94` |
| `C-c C-z w` | `xwidget-webkit-browse-url` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-web.el:47` |
| `C-c D` | `docker` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-docker.el:40` |
| `C-c d d` | `fanyi-dwim2` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:39` |
| `C-c d f` | `fanyi-dwim` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:38` |
| `C-c d g` | `gt-translate` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:46` |
| `C-c d G` | `gt-translate-prompt` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:47` |
| `C-c d h` | `fanyi-from-history` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:40` |
| `C-c d i` | `osx-dictionary-search-input` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:135` |
| `C-c d p` | `gt-speak` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:48` |
| `C-c d s` | `gt-setup` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:49` |
| `C-c d u` | `gt-use-text-utility` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:50` |
| `C-c d x` | `osx-dictionary-search-pointer` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:136` |
| `C-c f` | `flymake-show-buffer-diagnostics` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-check.el:36` |
| `C-c g` | `gt-translate` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:43` |
| `C-c G` | `gt-translate-prompt` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:44` |
| `C-c h` | `consult-history` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:101` |
| `C-c i` | `consult-info` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:103` |
| `C-c k` | `browse-kill-ring` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-kill-ring.el:45` |
| `C-c k` | `consult-kmacro` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:102` |
| `C-c l c` | `link-hint-copy-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:143` |
| `C-c l o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:142` |
| `C-c m` | `multiple-cursors-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:266` |
| `C-c M-x` | `consult-mode-command` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:100` |
| `C-c n c` | `org-roam-capture` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:299` |
| `C-c n f` | `org-roam-node-find` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:296` |
| `C-c n g` | `org-roam-graph` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:297` |
| `C-c n i` | `org-roam-node-insert` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:298` |
| `C-c n j` | `org-roam-dailies-capture-today` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:300` |
| `C-c n l` | `org-roam-buffer-toggle` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:295` |
| `C-c n u` | `org-roam-ui-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:314` |
| `C-c r` | `consult-ripgrep` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:104` |
| `C-c T` | `consult-theme` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:105` |
| `C-c u` | `gt-use-text-utility` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:45` |
| `C-c u` | `lsp-ui-imenu` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:223` |
| `C-c w` | `ace-window-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:80` |
| `C-c x` | `org-capture` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:80` |
| `C-c X` | `quickrun` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:107` |
| `C-h M-m` | `which-key-show-major-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:39` |
| `C-M-#` | `consult-register` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:128` |
| `C-M-7` | `transwin-toggle` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:244` |
| `C-M-8` | `transwin-dec` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:243` |
| `C-M-9` | `transwin-inc` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:242` |
| `C-M-<` | `mc/skip-to-previous-like-this` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:272` |
| `C-M-<f12>` | `gptel-menu` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:69` |
| `C-M->` | `mc/skip-to-next-like-this` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:271` |
| `C-s-.` | `embark-act` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:259` |
| `C-S-<mouse-1>` | `mc/add-cursor-on-click` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:274` |
| `C-S-c C-S-c` | `mc/edit-lines` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:267` |
| `C-s-f` | `toggle-frame-fullscreen` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:229` |
| `C-x 4 b` | `consult-buffer-other-window` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:121` |
| `C-x 5 b` | `consult-buffer-other-frame` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:122` |
| `C-x _` | `split-window-vertically-instead` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:82` |
| `C-x b` | `consult-buffer` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:120` |
| `C-x C-b` | `ibuffer` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ibuffer.el:38` |
| `C-x C-d` | `consult-dir` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:245` |
| `C-x C-r` | `fido-recentf-open` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:121` |
| `C-x C-r` | `ido-recentf-open` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:137` |
| `C-x C-r` | `recentf-open-files` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:129` |
| `C-x j` | `elfeed` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:123` |
| `C-x J` | `newsticker-show-news` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:205` |
| `C-x M-:` | `consult-complex-command` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:119` |
| `C-x p b` | `consult-project-buffer` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:124` |
| `C-x r b` | `consult-bookmark` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:123` |
| `C-x r RET` | `iedit-rectangle-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:235` |
| `C-x t 1` | `treemacs-delete-other-windows` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:46` |
| `C-x t b` | `treemacs-bookmark` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:48` |
| `C-x t C-t` | `treemacs-find-file` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:49` |
| `C-x t M-t` | `treemacs-find-tag` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:50` |
| `C-x t t` | `treemacs` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:47` |
| `C-x u` | `vundo` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:333` |
| `C-x |` | `split-window-horizontally-instead` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:81` |
| `M-#` | `consult-register-load` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:126` |
| `M-'` | `consult-register-store` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:127` |
| `M-.` | `embark-dwim` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:260` |
| `M-/` | `completion-at-point` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:347` |
| `M-0` | `treemacs-select-window` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:45` |
| `M-<f5>` | `dape-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dap.el:39` |
| `M-<f7>` | `my-read-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:71` |
| `M-<f8>` | `mingus` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:72` |
| `M-C` | `symbol-overlay-remove-all` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:125` |
| `M-g ,` | `xref-go-back` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:84` |
| `M-g .` | `xref-find-definitions` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:83` |
| `M-g e` | `avy-goto-word-0` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:121` |
| `M-g e` | `consult-compile-error` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:132` |
| `M-g f` | `consult-flymake` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:133` |
| `M-g g` | `consult-goto-line` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:134` |
| `M-g i` | `consult-imenu` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:139` |
| `M-g I` | `consult-imenu-multi` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:140` |
| `M-g k` | `consult-global-mark` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:138` |
| `M-g l` | `avy-goto-line` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:119` |
| `M-g m` | `consult-mark` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:137` |
| `M-g M-g` | `consult-goto-line` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:135` |
| `M-g o` | `consult-outline` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:136` |
| `M-g s` | `consult-flyspell` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:251` |
| `M-g w` | `avy-goto-word-1` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:120` |
| `M-g y` | `consult-yasnippet` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:254` |
| `M-i` | `symbol-overlay-put` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:120` |
| `M-n` | `symbol-overlay-jump-next` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:121` |
| `M-N` | `symbol-overlay-switch-forward` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:123` |
| `M-o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:141` |
| `M-p` | `symbol-overlay-jump-prev` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:122` |
| `M-P` | `symbol-overlay-switch-backward` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:124` |
| `M-s d` | `consult-find` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:142` |
| `M-s D` | `consult-locate` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:143` |
| `M-s e` | `consult-isearch-history` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:152` |
| `M-s G` | `consult-git-grep` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:145` |
| `M-s g` | `consult-grep` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:144` |
| `M-s k` | `consult-keep-lines` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:149` |
| `M-s l` | `consult-line` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:147` |
| `M-s L` | `consult-line-multi` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:148` |
| `M-s r` | `consult-ripgrep` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:146` |
| `M-s s` | `symbol-overlay-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:129` |
| `M-s u` | `consult-focus-lines` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:150` |
| `M-y` | `consult-yank-pop` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:130` |
| `M-z` | `avy-zap-to-char-dwim` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:130` |
| `M-Z` | `avy-zap-up-to-char-dwim` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:131` |
| `s-.` | `embark-act` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:258` |
| `s-<f12>` | `pomidor` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:175` |
| `S-<f8>` | `mpc` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:63` |
| `s-<f8>` | `simple-mpc+` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:81` |
| `s-<mouse-1>` | `mc/add-cursor-on-click` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:273` |
| `S-s-<return>` | `toggle-frame-fullscreen` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:228` |

## 模式与插件专属快捷键

| 作用域(map/mode) | 快捷键 | 命令 | 来源 |
|---|---|---|---|
| `agent-shell-mode-map` | `C-<return>` | `agent-shell-help-menu` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:130` |
| `agent-shell-mode-map` | `C-h ?` | `agent-shell-help-menu` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:129` |
| `compilation-mode-map` | `o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:146` |
| `copilot-completion-map` | `<tab>` | `copilot-accept-completion` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:56` |
| `copilot-completion-map` | `C-<tab>` | `copilot-accept-completion-by-word` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:59` |
| `copilot-completion-map` | `C-TAB` | `copilot-accept-completion-by-word` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:58` |
| `copilot-completion-map` | `M-[` | `copilot-previous-completion` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:61` |
| `copilot-completion-map` | `M-]` | `copilot-next-completion` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:60` |
| `copilot-completion-map` | `TAB` | `copilot-accept-completion` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:57` |
| `corfu-map` | `M-m` | `corfu-move-to-minibuffer` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:364` |
| `custom-mode-map` | `o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:148` |
| `dashboard-mode-map` | `H` | `browse-homepage` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:48` |
| `dashboard-mode-map` | `q` | `quit-dashboard` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:52` |
| `dashboard-mode-map` | `R` | `restore-session` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:49` |
| `dashboard-mode-map` | `S` | `find-custom-file` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:50` |
| `dashboard-mode-map` | `U` | `update-config-and-packages` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:51` |
| `default-text-scale-mode-map` | `C-s--` | `default-text-scale-decrease` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:309` |
| `default-text-scale-mode-map` | `C-s-0` | `default-text-scale-reset` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:310` |
| `default-text-scale-mode-map` | `C-s-=` | `default-text-scale-increase` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:308` |
| `default-text-scale-mode-map` | `s--` | `default-text-scale-decrease` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:306` |
| `default-text-scale-mode-map` | `s-0` | `default-text-scale-reset` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:307` |
| `default-text-scale-mode-map` | `s-=` | `default-text-scale-increase` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:305` |
| `devdocs-mode-map` | `o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:150` |
| `diff-hl-command-map` | `SPC` | `diff-hl-mark-hunk` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:246` |
| `dired-mode-map` | `)` | `dired-git-info-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dired.el:72` |
| `dired-mode-map` | `b` | `bongo-add-dired-files` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:55` |
| `dired-mode-map` | `C-c C-p` | `wdired-change-to-wdired-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dired.el:40` |
| `dired-mode-map` | `C-c C-r` | `dired-rsync` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dired.el:77` |
| `dired-mode-map` | `C-c C-z f` | `browse-url-of-file` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:97` |
| `dired-mode-map` | `S` | `hydra-dired-quick-sort/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dired.el:67` |
| `doom-modeline-mode-map` | `C-<f6>` | `doom-modeline-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:115` |
| `eglot-mode-map` | `C-M-.` | `consult-eglot-symbols` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:54` |
| `elfeed-search-mode-map` | `?` | `elfeed-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:126` |
| `elfeed-search-mode-map` | `h` | `elfeed-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:125` |
| `elfeed-show-mode-map` | `%` | `elfeed-webkit-toggle` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:194` |
| `elfeed-show-mode-map` | `o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:152` |
| `emacs-lisp-mode-map` | `C-c C-d` | `helpful-at-point` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:225` |
| `emacs-lisp-mode-map` | `C-c e` | `macrostep-expand` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:127` |
| `esc-map` | `C-;` | `iedit-execute-last-modification` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:239` |
| `eshell-mode-map` | `[remap recenter-top-bottom]` | `eshell/clear` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-eshell.el:38` |
| `eww-mode-map` | `o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:154` |
| `flyspell-mode-map` | `C-,` | `nil` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:309` |
| `flyspell-mode-map` | `C-.` | `nil` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:310` |
| `flyspell-mode-map` | `C-;` | `nil` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:308` |
| `git-messenger-map` | `m` | `git-messenger:copy-message` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:91` |
| `go-keymap` | `C-c t b` | `go-test-current-benchmark` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:94` |
| `go-keymap` | `C-c t c` | `go-test-current-coverage` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:95` |
| `go-keymap` | `C-c t f` | `go-test-current-file` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:91` |
| `go-keymap` | `C-c t g` | `go-gen-test-dwim` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:87` |
| `go-keymap` | `C-c t j` | `go-test-current-project` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:93` |
| `go-keymap` | `C-c t t` | `go-test-current-test` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:92` |
| `go-keymap` | `C-c t x` | `go-run` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:96` |
| `go-mode-map` | `<f1>` | `godoc` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:114` |
| `go-mode-map` | `C-c t a` | `go-tag-add` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:125` |
| `go-mode-map` | `C-c t r` | `go-tag-remove` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:126` |
| `help-map` | `C-;` | `iedit-mode-toggle-on-function` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:241` |
| `help-mode-map` | `o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:156` |
| `help-mode-map` | `r` | `remove-hook-at-point` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:135` |
| `helpful-mode-map` | `C-x K` | `helpful-kill-buffers` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:229` |
| `helpful-mode-map` | `o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:158` |
| `helpful-mode-map` | `r` | `remove-hook-at-point` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:230` |
| `hl-todo-mode-map` | `C-c t i` | `hl-todo-insert` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:195` |
| `hl-todo-mode-map` | `C-c t n` | `hl-todo-next` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:194` |
| `hl-todo-mode-map` | `C-c t o` | `hl-todo-occur` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:192` |
| `hl-todo-mode-map` | `C-c t p` | `hl-todo-previous` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:193` |
| `hl-todo-mode-map` | `C-c t R` | `hl-todo-rg` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:197` |
| `hl-todo-mode-map` | `C-c t r` | `hl-todo-rg-project` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:196` |
| `hs-minor-mode-map` | `C-S-<escape>` | `hideshow-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:375` |
| `hs-minor-mode-map` | `C-~` | `hideshow-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:374` |
| `Info-mode-map` | `o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:160` |
| `isearch-mode-map` | `[remap isearch-query-replace-regexp]` | `anzu-isearch-query-replace-regexp` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:190` |
| `isearch-mode-map` | `[remap isearch-query-replace]` | `anzu-isearch-query-replace` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:189` |
| `isearch-mode-map` | `C-;` | `iedit-mode-from-isearch` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:237` |
| `isearch-mode-map` | `M-e` | `consult-isearch-history` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:154` |
| `isearch-mode-map` | `M-s e` | `consult-isearch-history` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:155` |
| `isearch-mode-map` | `M-s l` | `consult-line` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:156` |
| `isearch-mode-map` | `M-s L` | `consult-line-multi` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:157` |
| `lisp-interaction-mode-map` | `C-c C-d` | `helpful-at-point` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:227` |
| `lisp-interaction-mode-map` | `C-c e` | `macrostep-expand` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:129` |
| `local` | `C-c C-b` | `eval-buffer` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:175` |
| `local` | `C-c C-c` | `eval-defun` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:174` |
| `local` | `C-c C-x` | `ielm` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:173` |
| `lsp-mode-map` | `[remap xref-find-definitions]` | `lsp-find-definition` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:81` |
| `lsp-mode-map` | `[remap xref-find-references]` | `lsp-find-references` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:82` |
| `lsp-mode-map` | `C-<f8>` | `lsp-treemacs-errors-list` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:308` |
| `lsp-mode-map` | `C-c C-d` | `lsp-describe-thing-at-point` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:80` |
| `lsp-mode-map` | `C-M-.` | `consult-lsp-symbols` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:112` |
| `lsp-mode-map` | `M-<f8>` | `lsp-treemacs-symbols` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:309` |
| `lsp-mode-map` | `s-<f8>` | `lsp-treemacs-java-deps-list` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:310` |
| `lsp-ui-mode-map` | `[remap xref-find-definitions]` | `lsp-ui-peek-find-definitions` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:227` |
| `lsp-ui-mode-map` | `[remap xref-find-references]` | `lsp-ui-peek-find-references` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:228` |
| `lsp-ui-mode-map` | `M-<f6>` | `lsp-ui-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:225` |
| `lsp-ui-mode-map` | `s-<return>` | `lsp-ui-sideline-apply-code-actions` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:226` |
| `magit-mode-map` | `C-c C-g` | `my/agent-shell-magit-generate-commit` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:132` |
| `magit-mode-map` | `C-c C-r` | `my/agent-shell-review-magit-commit` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:133` |
| `markdown-mode-command-map` | `g` | `grip-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-markdown.el:132` |
| `markdown-mode-command-map` | `r` | `markdown-toc-generate-or-refresh-toc` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-markdown.el:103` |
| `mc/keymap` | `C-|` | `mc/vertical-align-with-space` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:276` |
| `minibuffer-local-completion-map` | `C-x C-d` | `consult-dir` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:247` |
| `minibuffer-local-completion-map` | `C-x C-j` | `consult-dir-jump-file` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:248` |
| `minibuffer-local-map` | `M-.` | `my/embark-preview` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:263` |
| `minibuffer-local-map` | `M-r` | `consult-history` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:162` |
| `minibuffer-local-map` | `M-s` | `consult-history` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:161` |
| `minibuffer-mode-map` | `C-c C-o` | `embark-export` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:325` |
| `nov-mode-map` | `o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:162` |
| `org-mode-map` | `<` | `(lambda` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:82` |
| `org-mode-map` | `<s-return>` | `rect-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:50` |
| `org-mode-map` | `C-c C-g` | `grip-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-markdown.el:135` |
| `org-mode-map` | `C-c C-h` | `org-preview-html-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:250` |
| `org-mode-map` | `C-c C-x m` | `org-pomodoro` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:283` |
| `org-mode-map` | `C-M-y` | `org-rich-yank` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:224` |
| `org-mode-map` | `s-<f7>` | `dslide-deck-start` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:260` |
| `org-mode-map` | `s-<f7>` | `org-tree-slide-mode` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:266` |
| `org-tree-slide-mode-map` | `<left>` | `org-tree-slide-move-previous-tree` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:268` |
| `org-tree-slide-mode-map` | `<right>` | `org-tree-slide-move-next-tree` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:269` |
| `org-tree-slide-mode-map` | `S-SPC` | `org-tree-slide-move-previous-tree` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:270` |
| `org-tree-slide-mode-map` | `SPC` | `org-tree-slide-move-next-tree` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:271` |
| `pdf-view-mode-map` | `C-s` | `isearch-forward` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:50` |
| `persistent-scratch-mode-map` | `[remap kill-buffer]` | `(lambda` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:132` |
| `persistent-scratch-mode-map` | `[remap revert-buffer-quick]` | `persistent-scratch-restore` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:136` |
| `persistent-scratch-mode-map` | `[remap revert-buffer]` | `persistent-scratch-restore` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:135` |
| `popper-mode-map` | `C-<tab>` | `popper-cycle` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:120` |
| `popper-mode-map` | `C-h z` | `popper-toggle` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:119` |
| `popper-mode-map` | `C-M-<tab>` | `popper-toggle-type` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:121` |
| `prog-mode-map` | `<C-return>` | `rect-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:47` |
| `prog-mode-map` | `C-h D` | `devdocs-dwim` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:115` |
| `prog-mode-map` | `M-<f1>` | `devdocs-dwim` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:114` |
| `region-occurrences-highlighter-nav-mode-map` | `M-n` | `region-occurrences-highlighter-next` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:156` |
| `region-occurrences-highlighter-nav-mode-map` | `M-p` | `region-occurrences-highlighter-prev` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:157` |
| `rg-global-map` | `c` | `rg-dwim-current-dir` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:167` |
| `rg-global-map` | `f` | `rg-dwim-current-file` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:168` |
| `rg-global-map` | `m` | `rg-menu` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:169` |
| `simple-mpc-mode-map` | `O` | `simple-mpc-stop` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:84` |
| `simple-mpc-mode-map` | `P` | `simple-mpc-play` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:83` |
| `simple-mpc-mode-map` | `u` | `simple-mpc-update` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:85` |
| `smerge-mode-map` | `C-c m` | `smerge-mode-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:206` |
| `tabspaces-command-map` | `C-r` | `tabspaces-restore-session` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-workspace.el:38` |
| `tabspaces-command-map` | `C-s` | `tabspaces-save-session` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-workspace.el:40` |
| `tabspaces-command-map` | `C-S-r` | `tabspaces-restore-session-alt` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-workspace.el:39` |
| `tabspaces-command-map` | `C-w` | `tabspaces-save-current-project-session` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-workspace.el:41` |
| `text-mode-map` | `<C-return>` | `rect-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:45` |
| `vc-prefix-map` | `B` | `browse-at-remote` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:219` |
| `vc-prefix-map` | `p` | `git-messenger:popup-message` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:89` |
| `vc-prefix-map` | `t` | `git-timemachine` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:65` |
| `vertico-map` | `DEL` | `vertico-directory-delete-char` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:61` |
| `vertico-map` | `M-DEL` | `vertico-directory-delete-word` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:62` |
| `vertico-map` | `RET` | `vertico-directory-enter` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:60` |
| `wdired-mode-map` | `<C-return>` | `rect-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:54` |
| `wgrep-mode-map` | `<C-return>` | `rect-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:52` |
| `woman-mode-map` | `o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:164` |
| `xref--xref-buffer-mode-map` | `o` | `link-hint-open-link` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:166` |
| `xwidget-webkit-mode-map` | `h` | `xwidget-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-web.el:49` |
| `ztreediff-mode-map` | `C-<f5>` | `ztree-hydra/body` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:285` |

## Hydra 入口与内部键

### Hydra 入口（触发键）

| 快捷键 | Hydra | 作用域 | 来源 |
|---|---|---|---|
| `<C-return>` | `rect-hydra/body` | `prog-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:47` |
| `<C-return>` | `rect-hydra/body` | `text-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:45` |
| `<C-return>` | `rect-hydra/body` | `wdired-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:54` |
| `<C-return>` | `rect-hydra/body` | `wgrep-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:52` |
| `<f6>` | `toggles-hydra/body` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-hydra.el:68` |
| `<s-return>` | `rect-hydra/body` | `org-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:50` |
| `?` | `elfeed-hydra/body` | `elfeed-search-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:126` |
| `C-<f5>` | `ztree-hydra/body` | `ztreediff-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:285` |
| `C-<f6>` | `doom-modeline-hydra/body` | `doom-modeline-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:115` |
| `C-S-<escape>` | `hideshow-hydra/body` | `hs-minor-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:375` |
| `C-c m` | `multiple-cursors-hydra/body` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:266` |
| `C-c m` | `smerge-mode-hydra/body` | `smerge-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:206` |
| `C-c w` | `ace-window-hydra/body` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:80` |
| `C-~` | `hideshow-hydra/body` | `hs-minor-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:374` |
| `M-<f5>` | `dape-hydra/body` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dap.el:39` |
| `M-<f6>` | `lsp-ui-hydra/body` | `lsp-ui-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:225` |
| `h` | `elfeed-hydra/body` | `elfeed-search-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:125` |
| `h` | `xwidget-hydra/body` | `xwidget-webkit-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-web.el:49` |

### Hydra 内部键（请以对应 mode/hydra 打开后使用）
- Window: `TAB/x/X/s/a/m/u/h/j/k/l/n/r/R/v/V/t/+/-/0/o/f/d/<left>/<right>` (`init-window.el`)
- Rectangle: `h/j/k/l/w/y/t/d/c/o/N/e/u/r` (`init-edit.el`)
- LSP UI: `d e/s/t/b/p/h/f/w`, `s e/h/d/s/c/i`, `h/j/k/l/c` (`init-lsp.el`)
- DAP: `n/s/o/c/p/k/r/D/m/t/w/S/i/R/b/l/e/B/d/Q` (`init-dap.el`)
- Org Template: `a/c/C/x/E/h/l/n/o/v/i/A/I/H/L/s/e/y/p/w/r/S/g/m/u/Y/P/<` (`init-org.el`)
- Smerge: `n/p/b/u/l/a/RET/C-m/</=/>/R/E/C/r/k/ZZ` (`init-vcs.el`)
- Elfeed: `c/g/G/y/+/-/</>/l/s/*/a/t/b/n/p/u/r/RET` (`init-reader.el`)
- Ztree: `C/h/H/D/v/d/r/R/RET/SPC/TAB/g/x/<backspace>` (`init-utils.el`)
- Toggles: `n/a/d/e/c/s/l/b/i/m/h */f/O/u/W/E/Q/v/V/M/D/t * /p *` (`init-hydra.el`)

## 常用 Emacs 默认快捷键

| 快捷键 | 默认命令 | 说明 |
|---|---|---|
| `C-x C-f` | `find-file` | 打开文件 |
| `C-x C-s` | `save-buffer` | 保存 |
| `C-x C-w` | `write-file` | 另存为 |
| `C-x k` | `kill-buffer` | 关闭当前 buffer |
| `C-x C-c` | `save-buffers-kill-terminal` | 退出 Emacs |
| `C-g` | `keyboard-quit` | 取消当前操作 |
| `C-/` | `undo` | 撤销 |
| `C-SPC` | `set-mark-command` | 设置标记 |
| `C-w` | `kill-region` | 剪切区域 |
| `M-w` | `kill-ring-save` | 复制区域 |
| `C-y` | `yank` | 粘贴 |
| `M-y` | `yank-pop` | 轮换粘贴历史 |
| `C-a` | `move-beginning-of-line` | 行首 |
| `C-e` | `move-end-of-line` | 行尾 |
| `M-f` | `forward-word` | 前进一个词 |
| `M-b` | `backward-word` | 后退一个词 |
| `M-<` | `beginning-of-buffer` | 文件开头 |
| `M->` | `end-of-buffer` | 文件结尾 |
| `C-v` | `scroll-up-command` | 下翻页 |
| `M-v` | `scroll-down-command` | 上翻页 |
| `C-s` | `isearch-forward` | 向前搜索 |
| `C-r` | `isearch-backward` | 向后搜索 |
| `M-%` | `query-replace` | 查询替换 |
| `C-M-%` | `query-replace-regexp` | 正则替换 |
| `M-g g` | `goto-line` | 跳到行 |
| `C-x 0` | `delete-window` | 关闭当前窗口 |
| `C-x 1` | `delete-other-windows` | 仅保留当前窗口 |
| `C-x 2` | `split-window-below` | 上下分屏 |
| `C-x 3` | `split-window-right` | 左右分屏 |
| `C-x o` | `other-window` | 切换窗口 |
| `C-x b` | `switch-to-buffer` | 切换 buffer |
| `C-x C-b` | `list-buffers` | buffer 列表 |
| `C-h k` | `describe-key` | 查看按键绑定 |
| `C-h f` | `describe-function` | 查看函数文档 |
| `C-h v` | `describe-variable` | 查看变量文档 |

## 冲突与覆盖说明

| 快捷键 | 说明 | 证据(source) |
|---|---|---|
| `C-x C-r` | init-mini 中条件绑定 fido/ido recentf，init-base 绑定 recentf-open-files；且 consult remap recentf -> consult-recent-file | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:121,137; /Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:129; /Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:116` |
| `C-c a` | org-agenda 与 agent-shell 冲突（后加载的 init-ai 覆盖全局） | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:78; /Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:126` |
| `C-c k` | consult-kmacro 与 browse-kill-ring 冲突（后者覆盖） | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:102; /Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-kill-ring.el:45` |
| `C-c u` | gt-use-text-utility 与 lsp-ui-imenu 冲突（后加载 init-lsp 覆盖） | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:45; /Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:223` |
| `<f5>` | init-mini 绑定 revert-current-buffer；init-dap 绑定 dape（后者覆盖） | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:169; /Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dap.el:38` |
| `M-g e` | consult-compile-error 与 avy-goto-word-0 冲突（后加载 init-prog 仍可能被 map/remap 影响） | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:132; /Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:121` |
| `C-M-.` | eglot/lsp-mode 下分别绑定 consult-eglot-symbols / consult-lsp-symbols（按客户端条件生效） | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:54,112` |
| `s-<f7>` | dslide 与 org-tree-slide 二选一（由 Emacs 版本条件决定） | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:260,266` |

## 源码权威索引（全部自定义键位）

> 下表是基于源码抽取的完整清单（含 `remap`、map 专属、条件加载项）。

| 快捷键 | 命令 | 作用域 | source |
|---|---|---|---|
| `o` | `link-hint-open-link` | `Info-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:160` |
| `C-<return>` | `agent-shell-help-menu` | `agent-shell-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:130` |
| `C-h ?` | `agent-shell-help-menu` | `agent-shell-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:129` |
| `o` | `link-hint-open-link` | `compilation-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:146` |
| `<tab>` | `copilot-accept-completion` | `copilot-completion-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:56` |
| `C-<tab>` | `copilot-accept-completion-by-word` | `copilot-completion-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:59` |
| `C-TAB` | `copilot-accept-completion-by-word` | `copilot-completion-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:58` |
| `M-[` | `copilot-previous-completion` | `copilot-completion-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:61` |
| `M-]` | `copilot-next-completion` | `copilot-completion-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:60` |
| `TAB` | `copilot-accept-completion` | `copilot-completion-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:57` |
| `M-m` | `corfu-move-to-minibuffer` | `corfu-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:364` |
| `o` | `link-hint-open-link` | `custom-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:148` |
| `H` | `browse-homepage` | `dashboard-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:48` |
| `R` | `restore-session` | `dashboard-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:49` |
| `S` | `find-custom-file` | `dashboard-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:50` |
| `U` | `update-config-and-packages` | `dashboard-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:51` |
| `q` | `quit-dashboard` | `dashboard-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:52` |
| `C-s--` | `default-text-scale-decrease` | `default-text-scale-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:309` |
| `C-s-0` | `default-text-scale-reset` | `default-text-scale-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:310` |
| `C-s-=` | `default-text-scale-increase` | `default-text-scale-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:308` |
| `s--` | `default-text-scale-decrease` | `default-text-scale-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:306` |
| `s-0` | `default-text-scale-reset` | `default-text-scale-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:307` |
| `s-=` | `default-text-scale-increase` | `default-text-scale-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:305` |
| `o` | `link-hint-open-link` | `devdocs-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:150` |
| `SPC` | `diff-hl-mark-hunk` | `diff-hl-command-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:246` |
| `)` | `dired-git-info-mode` | `dired-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dired.el:72` |
| `C-c C-p` | `wdired-change-to-wdired-mode` | `dired-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dired.el:40` |
| `C-c C-r` | `dired-rsync` | `dired-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dired.el:77` |
| `C-c C-z f` | `browse-url-of-file` | `dired-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:97` |
| `S` | `hydra-dired-quick-sort/body` | `dired-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dired.el:67` |
| `b` | `bongo-add-dired-files` | `dired-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:55` |
| `C-<f6>` | `doom-modeline-hydra/body` | `doom-modeline-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ui.el:115` |
| `C-M-.` | `consult-eglot-symbols` | `eglot-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:54` |
| `?` | `elfeed-hydra/body` | `elfeed-search-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:126` |
| `h` | `elfeed-hydra/body` | `elfeed-search-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:125` |
| `%` | `elfeed-webkit-toggle` | `elfeed-show-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:194` |
| `o` | `link-hint-open-link` | `elfeed-show-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:152` |
| `C-c C-d` | `helpful-at-point` | `emacs-lisp-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:225` |
| `C-c e` | `macrostep-expand` | `emacs-lisp-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:127` |
| `C-;` | `iedit-execute-last-modification` | `esc-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:239` |
| `[remap recenter-top-bottom]` | `eshell/clear` | `eshell-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-eshell.el:38` |
| `o` | `link-hint-open-link` | `eww-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:154` |
| `C-,` | `nil` | `flyspell-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:309` |
| `C-.` | `nil` | `flyspell-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:310` |
| `C-;` | `nil` | `flyspell-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:308` |
| `m` | `git-messenger:copy-message` | `git-messenger-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:91` |
| `<C-return>` | `rectangle-mark-mode` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:160` |
| `<f12>` | `agent-shell` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:124` |
| `<f13>` | `agent-shell` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:125` |
| `<f2>` | `open-dashboard` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dashboard.el:46` |
| `<f5>` | `dape` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dap.el:38` |
| `<f5>` | `revert-current-buffer` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:169` |
| `<f6>` | `toggles-hydra/body` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-hydra.el:68` |
| `<f7>` | `olivetti-mode` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:188` |
| `C-'` | `avy-goto-char-2` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:118` |
| `C-,` | `goto-last-change` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:338` |
| `C-.` | `consult-imenu` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:106` |
| `C-:` | `avy-goto-char` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:117` |
| `C-<` | `mc/mark-previous-like-this` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:269` |
| `C-<f12>` | `gptel` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:68` |
| `C-<f5>` | `quickrun` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:106` |
| `C-<f8>` | `bongo` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:39` |
| `C-=` | `er/expand-region` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:246` |
| `C->` | `mc/mark-next-like-this` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:268` |
| `C-M-#` | `consult-register` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:128` |
| `C-M-7` | `transwin-toggle` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:244` |
| `C-M-8` | `transwin-dec` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:243` |
| `C-M-9` | `transwin-inc` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:242` |
| `C-M-<` | `mc/skip-to-previous-like-this` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:272` |
| `C-M-<f12>` | `gptel-menu` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:69` |
| `C-M->` | `mc/skip-to-next-like-this` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:271` |
| `C-S-<mouse-1>` | `mc/add-cursor-on-click` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:274` |
| `C-S-c C-S-c` | `mc/edit-lines` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:267` |
| `C-c /` | `webjump` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:216` |
| `C-c 1` | `my-maximize-buffer` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/custom.el:144` |
| `C-c A` | `agent-shell-new-shell` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:127` |
| `C-c C-<` | `mc/mark-all-like-this` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:270` |
| `C-c C-z .` | `browse-url-at-point` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:89` |
| `C-c C-z b` | `browse-url-of-buffer` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:90` |
| `C-c C-z e` | `browse-url-emacs` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:93` |
| `C-c C-z r` | `browse-url-of-region` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:91` |
| `C-c C-z u` | `browse-url` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:92` |
| `C-c C-z v` | `browse-url-of-file` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:94` |
| `C-c C-z w` | `xwidget-webkit-browse-url` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-web.el:47` |
| `C-c D` | `docker` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-docker.el:40` |
| `C-c G` | `gt-translate-prompt` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:44` |
| `C-c M-x` | `consult-mode-command` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:100` |
| `C-c T` | `consult-theme` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:105` |
| `C-c X` | `quickrun` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:107` |
| `C-c a` | `agent-shell` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:126` |
| `C-c a` | `org-agenda` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:78` |
| `C-c b` | `org-switchb` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:79` |
| `C-c c e` | `consult-colors-emacs` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:108` |
| `C-c c f` | `describe-face` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:110` |
| `C-c c g` | `git-link-dispatch` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:223` |
| `C-c c i` | `file-info-show` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:291` |
| `C-c c l` | `find-library` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:111` |
| `C-c c t` | `consult-theme` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:112` |
| `C-c c w` | `consult-colors-web` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:109` |
| `C-c d G` | `gt-translate-prompt` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:47` |
| `C-c d d` | `fanyi-dwim2` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:39` |
| `C-c d f` | `fanyi-dwim` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:38` |
| `C-c d g` | `gt-translate` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:46` |
| `C-c d h` | `fanyi-from-history` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:40` |
| `C-c d i` | `osx-dictionary-search-input` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:135` |
| `C-c d p` | `gt-speak` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:48` |
| `C-c d s` | `gt-setup` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:49` |
| `C-c d u` | `gt-use-text-utility` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:50` |
| `C-c d x` | `osx-dictionary-search-pointer` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:136` |
| `C-c f` | `flymake-show-buffer-diagnostics` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-check.el:36` |
| `C-c g` | `gt-translate` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:43` |
| `C-c h` | `consult-history` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:101` |
| `C-c i` | `consult-info` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:103` |
| `C-c k` | `browse-kill-ring` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-kill-ring.el:45` |
| `C-c k` | `consult-kmacro` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:102` |
| `C-c l c` | `link-hint-copy-link` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:143` |
| `C-c l o` | `link-hint-open-link` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:142` |
| `C-c m` | `multiple-cursors-hydra/body` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:266` |
| `C-c n c` | `org-roam-capture` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:299` |
| `C-c n f` | `org-roam-node-find` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:296` |
| `C-c n g` | `org-roam-graph` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:297` |
| `C-c n i` | `org-roam-node-insert` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:298` |
| `C-c n j` | `org-roam-dailies-capture-today` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:300` |
| `C-c n l` | `org-roam-buffer-toggle` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:295` |
| `C-c n u` | `org-roam-ui-mode` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:314` |
| `C-c r` | `consult-ripgrep` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:104` |
| `C-c u` | `gt-use-text-utility` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dict.el:45` |
| `C-c u` | `lsp-ui-imenu` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:223` |
| `C-c w` | `ace-window-hydra/body` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:80` |
| `C-c x` | `org-capture` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:80` |
| `C-h M-m` | `which-key-show-major-mode` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:39` |
| `C-s-.` | `embark-act` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:259` |
| `C-s-f` | `toggle-frame-fullscreen` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:229` |
| `C-x 4 b` | `consult-buffer-other-window` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:121` |
| `C-x 5 b` | `consult-buffer-other-frame` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:122` |
| `C-x C-b` | `ibuffer` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ibuffer.el:38` |
| `C-x C-d` | `consult-dir` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:245` |
| `C-x C-r` | `fido-recentf-open` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:121` |
| `C-x C-r` | `ido-recentf-open` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:137` |
| `C-x C-r` | `recentf-open-files` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:129` |
| `C-x J` | `newsticker-show-news` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:205` |
| `C-x M-:` | `consult-complex-command` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:119` |
| `C-x _` | `split-window-vertically-instead` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:82` |
| `C-x b` | `consult-buffer` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:120` |
| `C-x j` | `elfeed` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:123` |
| `C-x p b` | `consult-project-buffer` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:124` |
| `C-x r b` | `consult-bookmark` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:123` |
| `C-x t 1` | `treemacs-delete-other-windows` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:46` |
| `C-x t C-t` | `treemacs-find-file` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:49` |
| `C-x t M-t` | `treemacs-find-tag` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:50` |
| `C-x t b` | `treemacs-bookmark` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:48` |
| `C-x t t` | `treemacs` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:47` |
| `C-x u` | `vundo` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:333` |
| `C-x |` | `split-window-horizontally-instead` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:81` |
| `M-#` | `consult-register-load` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:126` |
| `M-'` | `consult-register-store` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:127` |
| `M-.` | `embark-dwim` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:260` |
| `M-/` | `completion-at-point` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:347` |
| `M-0` | `treemacs-select-window` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-treemacs.el:45` |
| `M-<f5>` | `dape-hydra/body` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-dap.el:39` |
| `M-<f7>` | `my-read-mode` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:71` |
| `M-<f8>` | `mingus` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:72` |
| `M-C` | `symbol-overlay-remove-all` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:125` |
| `M-N` | `symbol-overlay-switch-forward` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:123` |
| `M-P` | `symbol-overlay-switch-backward` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:124` |
| `M-Z` | `avy-zap-up-to-char-dwim` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:131` |
| `M-g ,` | `xref-go-back` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:84` |
| `M-g .` | `xref-find-definitions` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:83` |
| `M-g I` | `consult-imenu-multi` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:140` |
| `M-g M-g` | `consult-goto-line` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:135` |
| `M-g e` | `avy-goto-word-0` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:121` |
| `M-g e` | `consult-compile-error` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:132` |
| `M-g f` | `consult-flymake` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:133` |
| `M-g g` | `consult-goto-line` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:134` |
| `M-g i` | `consult-imenu` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:139` |
| `M-g k` | `consult-global-mark` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:138` |
| `M-g l` | `avy-goto-line` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:119` |
| `M-g m` | `consult-mark` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:137` |
| `M-g o` | `consult-outline` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:136` |
| `M-g s` | `consult-flyspell` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:251` |
| `M-g w` | `avy-goto-word-1` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:120` |
| `M-g y` | `consult-yasnippet` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:254` |
| `M-i` | `symbol-overlay-put` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:120` |
| `M-n` | `symbol-overlay-jump-next` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:121` |
| `M-o` | `link-hint-open-link` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:141` |
| `M-p` | `symbol-overlay-jump-prev` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:122` |
| `M-s D` | `consult-locate` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:143` |
| `M-s G` | `consult-git-grep` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:145` |
| `M-s L` | `consult-line-multi` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:148` |
| `M-s d` | `consult-find` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:142` |
| `M-s e` | `consult-isearch-history` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:152` |
| `M-s g` | `consult-grep` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:144` |
| `M-s k` | `consult-keep-lines` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:149` |
| `M-s l` | `consult-line` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:147` |
| `M-s r` | `consult-ripgrep` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:146` |
| `M-s s` | `symbol-overlay-map` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:129` |
| `M-s u` | `consult-focus-lines` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:150` |
| `M-y` | `consult-yank-pop` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:130` |
| `M-z` | `avy-zap-to-char-dwim` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:130` |
| `S-<f8>` | `mpc` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:63` |
| `S-s-<return>` | `toggle-frame-fullscreen` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-base.el:228` |
| `[(super a)]` | `mark-whole-buffer` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:151` |
| `[(super c)]` | `kill-ring-save` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:153` |
| `[(super l)]` | `goto-line` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:155` |
| `[(super s)]` | `save-buffer` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:154` |
| `[(super v)]` | `yank` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:152` |
| `[(super w)]` | `delete-frame` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:156` |
| `[(super z)]` | `undo` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:157` |
| `[remap Info-search]` | `consult-info` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:114` |
| `[remap describe-bindings]` | `embark-bindings` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:261` |
| `[remap describe-command]` | `helpful-command` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:220` |
| `[remap describe-function]` | `helpful-callable` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:219` |
| `[remap describe-key]` | `helpful-key` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:222` |
| `[remap describe-symbol]` | `helpful-symbol` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:223` |
| `[remap describe-variable]` | `helpful-variable` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:221` |
| `[remap isearch-forward]` | `consult-line` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:115` |
| `[remap kill-ring-save]` | `easy-kill` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-kill-ring.el:40` |
| `[remap mark-sexp]` | `easy-mark` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-kill-ring.el:41` |
| `[remap move-beginning-of-line]` | `mwim-beginning` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:328` |
| `[remap move-end-of-line]` | `mwim-end` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:329` |
| `[remap other-window]` | `ace-window` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:79` |
| `[remap query-replace-regexp]` | `anzu-query-replace-regexp` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:187` |
| `[remap query-replace]` | `anzu-query-replace` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:186` |
| `[remap recentf-open-files]` | `consult-recent-file` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:116` |
| `s-.` | `embark-act` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:258` |
| `s-<f12>` | `pomidor` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:175` |
| `s-<f8>` | `simple-mpc+` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:81` |
| `s-<mouse-1>` | `mc/add-cursor-on-click` | `global` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:273` |
| `C-;` | `iedit-mode` | `global-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:234` |
| `C-x r RET` | `iedit-rectangle-mode` | `global-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:235` |
| `C-c t b` | `go-test-current-benchmark` | `go-keymap` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:94` |
| `C-c t c` | `go-test-current-coverage` | `go-keymap` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:95` |
| `C-c t f` | `go-test-current-file` | `go-keymap` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:91` |
| `C-c t g` | `go-gen-test-dwim` | `go-keymap` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:87` |
| `C-c t j` | `go-test-current-project` | `go-keymap` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:93` |
| `C-c t t` | `go-test-current-test` | `go-keymap` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:92` |
| `C-c t x` | `go-run` | `go-keymap` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:96` |
| `<f1>` | `godoc` | `go-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:114` |
| `C-c t a` | `go-tag-add` | `go-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:125` |
| `C-c t r` | `go-tag-remove` | `go-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-go.el:126` |
| `C-;` | `iedit-mode-toggle-on-function` | `help-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:241` |
| `o` | `link-hint-open-link` | `help-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:156` |
| `r` | `remove-hook-at-point` | `help-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:135` |
| `C-x K` | `helpful-kill-buffers` | `helpful-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:229` |
| `o` | `link-hint-open-link` | `helpful-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:158` |
| `r` | `remove-hook-at-point` | `helpful-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:230` |
| `C-c t R` | `hl-todo-rg` | `hl-todo-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:197` |
| `C-c t i` | `hl-todo-insert` | `hl-todo-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:195` |
| `C-c t n` | `hl-todo-next` | `hl-todo-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:194` |
| `C-c t o` | `hl-todo-occur` | `hl-todo-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:192` |
| `C-c t p` | `hl-todo-previous` | `hl-todo-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:193` |
| `C-c t r` | `hl-todo-rg-project` | `hl-todo-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:196` |
| `C-S-<escape>` | `hideshow-hydra/body` | `hs-minor-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:375` |
| `C-~` | `hideshow-hydra/body` | `hs-minor-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:374` |
| `C-;` | `iedit-mode-from-isearch` | `isearch-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:237` |
| `M-e` | `consult-isearch-history` | `isearch-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:154` |
| `M-s L` | `consult-line-multi` | `isearch-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:157` |
| `M-s e` | `consult-isearch-history` | `isearch-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:155` |
| `M-s l` | `consult-line` | `isearch-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:156` |
| `[remap isearch-query-replace-regexp]` | `anzu-isearch-query-replace-regexp` | `isearch-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:190` |
| `[remap isearch-query-replace]` | `anzu-isearch-query-replace` | `isearch-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:189` |
| `C-c C-d` | `helpful-at-point` | `lisp-interaction-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:227` |
| `C-c e` | `macrostep-expand` | `lisp-interaction-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-elisp.el:129` |
| `C-c C-b` | `eval-buffer` | `local` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:175` |
| `C-c C-c` | `eval-defun` | `local` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:174` |
| `C-c C-x` | `ielm` | `local` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/init-mini.el:173` |
| `C-<f8>` | `lsp-treemacs-errors-list` | `lsp-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:308` |
| `C-M-.` | `consult-lsp-symbols` | `lsp-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:112` |
| `C-c C-d` | `lsp-describe-thing-at-point` | `lsp-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:80` |
| `M-<f8>` | `lsp-treemacs-symbols` | `lsp-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:309` |
| `[remap xref-find-definitions]` | `lsp-find-definition` | `lsp-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:81` |
| `[remap xref-find-references]` | `lsp-find-references` | `lsp-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:82` |
| `s-<f8>` | `lsp-treemacs-java-deps-list` | `lsp-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:310` |
| `M-<f6>` | `lsp-ui-hydra/body` | `lsp-ui-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:225` |
| `[remap xref-find-definitions]` | `lsp-ui-peek-find-definitions` | `lsp-ui-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:227` |
| `[remap xref-find-references]` | `lsp-ui-peek-find-references` | `lsp-ui-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:228` |
| `s-<return>` | `lsp-ui-sideline-apply-code-actions` | `lsp-ui-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-lsp.el:226` |
| `C-c C-g` | `my/agent-shell-magit-generate-commit` | `magit-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:132` |
| `C-c C-r` | `my/agent-shell-review-magit-commit` | `magit-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-ai.el:133` |
| `g` | `grip-mode` | `markdown-mode-command-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-markdown.el:132` |
| `r` | `markdown-toc-generate-or-refresh-toc` | `markdown-mode-command-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-markdown.el:103` |
| `C-|` | `mc/vertical-align-with-space` | `mc/keymap` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:276` |
| `C-x C-d` | `consult-dir` | `minibuffer-local-completion-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:247` |
| `C-x C-j` | `consult-dir-jump-file` | `minibuffer-local-completion-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:248` |
| `M-.` | `my/embark-preview` | `minibuffer-local-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:263` |
| `M-r` | `consult-history` | `minibuffer-local-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:162` |
| `M-s` | `consult-history` | `minibuffer-local-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:161` |
| `C-c C-o` | `embark-export` | `minibuffer-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:325` |
| `o` | `link-hint-open-link` | `nov-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:162` |
| `<` | `(lambda` | `org-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:82` |
| `<s-return>` | `rect-hydra/body` | `org-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:50` |
| `C-M-y` | `org-rich-yank` | `org-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:224` |
| `C-c C-g` | `grip-mode` | `org-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-markdown.el:135` |
| `C-c C-h` | `org-preview-html-mode` | `org-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:250` |
| `C-c C-x m` | `org-pomodoro` | `org-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:283` |
| `s-<f7>` | `dslide-deck-start` | `org-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:260` |
| `s-<f7>` | `org-tree-slide-mode` | `org-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:266` |
| `<left>` | `org-tree-slide-move-previous-tree` | `org-tree-slide-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:268` |
| `<right>` | `org-tree-slide-move-next-tree` | `org-tree-slide-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:269` |
| `S-SPC` | `org-tree-slide-move-previous-tree` | `org-tree-slide-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:270` |
| `SPC` | `org-tree-slide-move-next-tree` | `org-tree-slide-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-org.el:271` |
| `C-s` | `isearch-forward` | `pdf-view-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-reader.el:50` |
| `[remap kill-buffer]` | `(lambda` | `persistent-scratch-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:132` |
| `[remap revert-buffer-quick]` | `persistent-scratch-restore` | `persistent-scratch-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:136` |
| `[remap revert-buffer]` | `persistent-scratch-restore` | `persistent-scratch-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:135` |
| `C-<tab>` | `popper-cycle` | `popper-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:120` |
| `C-M-<tab>` | `popper-toggle-type` | `popper-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:121` |
| `C-h z` | `popper-toggle` | `popper-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-window.el:119` |
| `<C-return>` | `rect-hydra/body` | `prog-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:47` |
| `C-h D` | `devdocs-dwim` | `prog-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:115` |
| `M-<f1>` | `devdocs-dwim` | `prog-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-prog.el:114` |
| `M-n` | `region-occurrences-highlighter-next` | `region-occurrences-highlighter-nav-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:156` |
| `M-p` | `region-occurrences-highlighter-prev` | `region-occurrences-highlighter-nav-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-highlight.el:157` |
| `c` | `rg-dwim-current-dir` | `rg-global-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:167` |
| `f` | `rg-dwim-current-file` | `rg-global-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:168` |
| `m` | `rg-menu` | `rg-global-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:169` |
| `O` | `simple-mpc-stop` | `simple-mpc-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:84` |
| `P` | `simple-mpc-play` | `simple-mpc-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:83` |
| `u` | `simple-mpc-update` | `simple-mpc-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-player.el:85` |
| `C-c m` | `smerge-mode-hydra/body` | `smerge-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:206` |
| `C-S-r` | `tabspaces-restore-session-alt` | `tabspaces-command-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-workspace.el:39` |
| `C-r` | `tabspaces-restore-session` | `tabspaces-command-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-workspace.el:38` |
| `C-s` | `tabspaces-save-session` | `tabspaces-command-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-workspace.el:40` |
| `C-w` | `tabspaces-save-current-project-session` | `tabspaces-command-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-workspace.el:41` |
| `<C-return>` | `rect-hydra/body` | `text-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:45` |
| `B` | `browse-at-remote` | `vc-prefix-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:219` |
| `p` | `git-messenger:popup-message` | `vc-prefix-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:89` |
| `t` | `git-timemachine` | `vc-prefix-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-vcs.el:65` |
| `DEL` | `vertico-directory-delete-char` | `vertico-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:61` |
| `M-DEL` | `vertico-directory-delete-word` | `vertico-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:62` |
| `RET` | `vertico-directory-enter` | `vertico-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-completion.el:60` |
| `<C-return>` | `rect-hydra/body` | `wdired-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:54` |
| `<C-return>` | `rect-hydra/body` | `wgrep-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:52` |
| `o` | `link-hint-open-link` | `woman-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:164` |
| `o` | `link-hint-open-link` | `xref--xref-buffer-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-edit.el:166` |
| `h` | `xwidget-hydra/body` | `xwidget-webkit-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-web.el:49` |
| `C-<f5>` | `ztree-hydra/body` | `ztreediff-mode-map` | `/Users/bytedance/Desktop/dotfiles/.emacs.d/lisp/init-utils.el:285` |

---
*最后更新: 2026-03-19*

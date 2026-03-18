# My Emacs 配置手册

## 目录
- [全局快捷键](#全局快捷键)
- [文件操作](#文件操作)
- [编辑操作](#编辑操作)
- [搜索与导航](#搜索与导航)
- [窗口管理](#窗口管理)
- [编程开发](#编程开发)
- [Org 模式](#org-模式)
- [Git 版本控制](#git-版本控制)
- [Hydra 快捷键](#hydra-快捷键)
- [重要命令 (M-x)](#重要命令-m-x)
- [自定义配置](#自定义配置)
- [添加新功能](#添加新功能)
- [故障排查](#故障排查)

---

## 全局快捷键

### 基础操作

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-x C-r` | `recentf-open-files` / `consult-recent-file` | 打开最近文件 |
| `C-x K` | `delete-this-file` | 删除当前文件 |
| `C-c C-l` | `reload-init-file` | 重新加载配置 |
| `s-r` | `revert-buffer-quick` | 快速刷新缓冲区 |
| `<f5>` | `revert-current-buffer` | 刷新当前缓冲区（mini 配置） |
| `S-s-<return>` | `toggle-frame-fullscreen` | 切换全屏 |
| `C-s-f` | `toggle-frame-fullscreen` | 切换全屏（macOS） |

### 框架控制

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-M-<return>` | `my-frame-maximize` | 最大化窗口 |
| `C-M-<backspace>` | `my-frame-restore` | 恢复窗口大小 |
| `C-M-<left>` | `my-frame-left-half` | 窗口左半屏 |
| `C-M-<right>` | `my-frame-right-half` | 窗口右半屏 |
| `C-M-<up>` | `my-frame-top-half` | 窗口上半屏 |
| `C-M-<down>` | `my-frame-bottom-half` | 窗口下半屏 |
| `C-M-9` | `transwin-inc` | 增加透明度 |
| `C-M-8` | `transwin-dec` | 减少透明度 |
| `C-M-7` | `transwin-toggle` | 切换透明度 |

### 字体缩放

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `s-=` / `C-s-=` | `default-text-scale-increase` | 增大字体 |
| `s--` / `C-s--` | `default-text-scale-decrease` | 减小字体 |
| `s-0` / `C-s-0` | `default-text-scale-reset` | 重置字体 |

### macOS 专用

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `Super-a` | `mark-whole-buffer` | 全选 |
| `Super-c` | `kill-ring-save` | 复制 |
| `Super-v` | `yank` | 粘贴 |
| `Super-s` | `save-buffer` | 保存 |
| `Super-l` | `goto-line` | 跳转行 |
| `Super-w` | `delete-frame` | 关闭窗口 |
| `Super-z` | `undo` | 撤销 |

---

## 文件操作

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-x C-d` | `consult-dir` | 目录切换 |
| `C-x C-j` | `consult-dir-jump-file` | 跳转到文件 |

---

## 编辑操作

### 矩形选择
| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-<return>` | `rectangle-mark-mode` | 矩形选择模式 |
| `S-<return>` | `rect-hydra/body` | Org 模式矩形操作 |

### Emacs Lisp 模式
| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-c C-x` | `ielm` | 打开 ELISP REPL |
| `C-c C-c` | `eval-defun` | 评估当前函数 |
| `C-c C-b` | `eval-buffer` | 评估整个缓冲区 |

---

## 搜索与导航

### Consult 搜索

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-c r` | `consult-ripgrep` | ripgrep 搜索 |
| `C-.` | `consult-imenu` | 跳转到符号 |
| `C-x b` | `consult-buffer` | 缓冲区切换 |
| `C-x 4 b` | `consult-buffer-other-window` | 在其他窗口打开 |
| `C-x 5 b` | `consult-buffer-other-frame` | 在其他框架打开 |
| `M-y` | `consult-yank-pop` | 剪贴板历史 |
| `M-#` | `consult-register-load` | 加载寄存器 |
| `M-'` | `consult-register-store` | 存储寄存器 |
| `C-M-#` | `consult-register` | 查看寄存器 |

### 行内搜索

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `M-s l` | `consult-line` | 当前缓冲区行搜索 |
| `M-s L` | `consult-line-multi` | 多缓冲区行搜索 |
| `M-s g` | `consult-grep` | grep 搜索 |
| `M-s G` | `consult-git-grep` | git grep 搜索 |
| `M-s r` | `consult-ripgrep` | ripgrep 搜索 |
| `M-s d` | `consult-find` | 文件查找 |
| `M-s D` | `consult-locate` | locate 查找 |

### 跳转命令

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `M-g g` / `M-g M-g` | `consult-goto-line` | 跳转到行 |
| `M-g o` | `consult-outline` | 大纲跳转 |
| `M-g m` | `consult-mark` | 标记跳转 |
| `M-g k` | `consult-global-mark` | 全局标记跳转 |
| `M-g i` | `consult-imenu` | imenu 跳转 |
| `M-g I` | `consult-imenu-multi` | 多缓冲区 imenu |
| `M-g e` | `consult-compile-error` | 编译错误跳转 |
| `M-g f` | `consult-flymake` | Flymake 诊断 |
| `M-g s` | `consult-flyspell` | 拼写检查 |
| `M-g y` | `consult-yasnippet` | 代码片段 |

### 历史记录

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-c h` | `consult-history` | 历史记录 |
| `C-c M-x` | `consult-mode-command` | 模式命令历史 |
| `C-c k` | `consult-kmacro` | 键盘宏历史 |

### 颜色选择

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-c c e` | `consult-colors-emacs` | Emacs 颜色 |
| `C-c c w` | `consult-colors-web` | Web 颜色 |
| `C-c c f` | `describe-face` | 描述 face |
| `C-c c t` | `consult-theme` | 切换主题 |
| `C-c c l` | `find-library` | 查找库 |

---

## 窗口管理

### 基础操作
| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-c w` / `C-x o w` | `window-hydra/body` | 窗口管理 Hydra |

### Window Hydra 内部快捷键

| 快捷键 | 说明 |
|--------|------|
| `h` / `j` / `k` / `l` | 窗口导航（左/下/上/右） |
| `H` / `J` / `K` / `L` | 移动窗口 |
| `s` / `v` | 水平/垂直分割 |
| `d` / `D` | 删除窗口/其他窗口 |
| `b` | 交换缓冲区 |
| `o` | 交换窗口 |
| `r` | 旋转窗口 |
| `=` / `-` | 均衡窗口/垂直均衡 |
| `f` | 切换窗口全屏 |
| `m` | 最大化窗口 |
| `q` / `C-g` | 退出 |

---

## 编程开发

### LSP 相关

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `M-<f6>` | `lsp-ui-hydra/body` | LSP UI Hydra |
| `C-c u` | `lsp-ui-imenu` | LSP 符号列表 |
| `s-<return>` | `lsp-ui-sideline-apply-code-actions` | 应用代码操作 |
| `C-M-.` | `consult-eglot-symbols` / `consult-lsp-symbols` | LSP 符号搜索 |

### LSP UI Hydra

| 分类 | 快捷键 | 说明 |
|------|--------|------|
| **Doc** | `d e` | 切换文档显示 |
| | `d s` | 切换签名显示 |
| | `d t/b/p` | 文档位置：顶部/底部/光标处 |
| | `d h` | 切换文档头部 |
| | `d f/w` | 文档对齐：框架/窗口 |
| **Sideline** | `s e` | 切换 sideline |
| | `s h` | 切换 hover 显示 |
| | `s d` | 切换诊断显示 |
| | `s s` | 切换符号显示 |
| | `s c` | 切换代码操作 |
| | `s i` | 切换忽略重复 |
| **Action** | `h/j/k/l` | 导航 |
| | `c` | 应用代码操作 |

### LSP Treemacs

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-<f8>` | `lsp-treemacs-errors-list` | 错误列表 |
| `M-<f8>` | `lsp-treemacs-symbols` | 符号列表 |
| `s-<f8>` | `lsp-treemacs-java-deps-list` | Java 依赖列表 |

### 调试 (DAP)

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `M-<f5>` | `dape-hydra/body` | DAP Hydra |

---

## Org 模式

### 基础快捷键

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-c a` | `org-agenda` | 打开日程 |
| `C-c b` | `org-switchb` | 切换 Org 缓冲区 |
| `C-c x` | `org-capture` | 快速记录 |
| `<` | `org-hydra/body` | Org 模板 Hydra |
| `C-M-y` | `org-rich-yank` | 富文本粘贴 |
| `C-c C-x m` | `org-pomodoro` | 番茄钟 |
| `s-<f7>` | `dslide-deck-start` / `org-tree-slide-mode` | 演示模式 |

### Org Hydra 模板

| 快捷键 | 模板 |
|--------|------|
| `a` | ascii |
| `c` | center |
| `C` | comment |
| `x` / `e` | example / emacs-lisp |
| `E` | export |
| `h` / `H` | html / HTML |
| `l` / `L` | latex / LaTeX |
| `n` / `i` | note / index |
| `o` / `q` | quote |
| `v` | verse |
| `s` | src |
| `y` | python |
| `p` | perl |
| `w` | powershell |
| `r` | ruby |
| `S` | sh |
| `g` | go |
| `m` | mermaid |
| `u` | plantuml |
| `<` | 插入 < 字符 |

### Org Roam

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-c n l` | `org-roam-buffer-toggle` | 切换 Roam 缓冲区 |
| `C-c n f` | `org-roam-node-find` | 查找节点 |
| `C-c n g` | `org-roam-graph` | 查看图谱 |
| `C-c n i` | `org-roam-node-insert` | 插入节点 |
| `C-c n c` | `org-roam-capture` | 捕获 |
| `C-c n j` | `org-roam-dailies-capture-today` | 每日记录 |
| `C-c n u` | `org-roam-ui-mode` | 打开 UI |

---

## Git 版本控制

### Magit

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-x g` | `magit-status` | Magit 状态（默认） |
| `C-c C-g` | `my/agent-shell-magit-generate-commit` | AI 生成提交信息 |
| `C-c C-r` | `my/agent-shell-review-magit-commit` | AI 审查提交 |

### Git 其他

| 快捷键 | 命令 | 说明 |
|--------|------|------|
| `C-x v p` | `git-messenger:popup-message` | 查看行提交信息 |
| `C-x v t` | `git-timemachine` | 文件历史浏览 |
| `C-x v B` | `browse-at-remote` | 在远程仓库打开 |
| `C-c c g` | `git-link-dispatch` | 获取 Git 链接 |
| `C-c m` | `smerge-mode-hydra/body` | 合并冲突解决 |

---

## Hydra 快捷键

| Hydra 名称 | 触发键 | 说明 |
|------------|--------|------|
| `dashboard-hydra` | `h` / `?` (Dashboard 模式) | 仪表盘操作 |
| `doom-modeline-hydra` | `C-<f6>` | 模式栏自定义 |
| `toggles-hydra` | `<f6>` | 全局选项切换 |
| `window-hydra` | `C-c w` / `C-x o w` | 窗口管理 |
| `org-hydra` | `<` (Org 模式) | Org 模板 |
| `rect-hydra` | `S-<return>` (Org) / `C-<return>` | 矩形操作 |
| `smerge-mode-hydra` | `C-c m` | 合并冲突 |
| `git-messenger-hydra` | `C-x v p` | 提交信息查看 |
| `lsp-ui-hydra` | `M-<f6>` | LSP UI 控制 |
| `dape-hydra` | `M-<f5>` | 调试操作 |
| `hideshow-hydra` | `C-~` | 代码折叠 |
| `ztree-diff-hydra` | `C-<f5>` | 目录比较 |

---

## 重要命令 (M-x)

### 更新命令

| 命令 | 说明 |
|------|------|
| `my-update` | 更新配置和包 |
| `my-update-config` | 仅更新配置 (git pull) |
| `my-update-packages` | 仅更新包 |
| `my-update-dotfiles` | 更新 dotfiles |
| `my-update-org` | 更新 Org 文件 |
| `my-update-all` | 更新所有内容 |

### 主题命令

| 命令 | 说明 |
|------|------|
| `my-load-theme` | 加载主题（交互式选择） |
| `consult-theme` | Consult 主题切换 |
| `my-load-random-theme` | 随机加载主题 |

### 包管理

| 命令 | 说明 |
|------|------|
| `set-package-archives` | 设置包源 |
| `my-test-package-archives` | 测试包源速度 |
| `my-install-fonts` | 安装必要字体 |

### 代理设置

| 命令 | 说明 |
|------|------|
| `enable-http-proxy` | 启用 HTTP 代理 |
| `disable-http-proxy` | 禁用 HTTP 代理 |
| `toggle-http-proxy` | 切换 HTTP 代理 |
| `enable-socks-proxy` | 启用 SOCKS 代理 |
| `disable-socks-proxy` | 禁用 SOCKS 代理 |
| `toggle-socks-proxy` | 切换 SOCKS 代理 |
| `show-http-proxy` | 显示 HTTP 代理状态 |
| `show-socks-proxy` | 显示 SOCKS 代理状态 |

### 框架控制

| 命令 | 说明 |
|------|------|
| `my-frame-maximize` | 最大化框架 |
| `my-frame-restore` | 恢复框架 |
| `my-frame-left-half` | 左半屏 |
| `my-frame-right-half` | 右半屏 |
| `my-frame-top-half` | 上半屏 |
| `my-frame-bottom-half` | 下半屏 |
| `toggle-frame-fullscreen` | 切换全屏 |

### 文件操作

| 命令 | 说明 |
|------|------|
| `delete-this-file` | 删除当前文件 |
| `rename-this-file` | 重命名当前文件 |
| `browse-this-file` | 用浏览器打开当前文件 |
| `create-scratch-buffer` | 创建 scratch 缓冲区 |
| `reload-init-file` | 重新加载配置 |

### 其他实用命令

| 命令 | 说明 |
|------|------|
| `find-custom-file` | 打开自定义配置文件 |
| `my-reload-init-file` | 重新加载 init 文件 |
| `browse-homepage` | 浏览配置主页 |
| `byte-compile-elpa` | 编译 Elpa 包 |
| `byte-compile-site-lisp` | 编译 site-lisp |
| `native-compile-elpa` | 原生编译 Elpa |
| `native-compile-site-lisp` | 原生编译 site-lisp |
| `my-read-mode` | 阅读模式 |
| `dos2unix` | 转换为 UNIX 格式 |
| `unix2dos` | 转换为 DOS 格式 |
| `delete-dos-eol` | 删除 DOS 换行符 |
| `save-buffer-as-utf8` | 以 UTF-8 保存 |
| `save-buffer-gbk-as-utf8` | GBK 转 UTF-8 |

### AI 相关

| 命令 | 说明 |
|------|------|
| `agent-shell-toggle` | 切换 AI Shell (`<f12>`) |
| `my/agent-shell-magit-generate-commit` | AI 生成提交信息 |
| `my/agent-shell-review-magit-commit` | AI 审查提交 |

---

## 自定义配置

### 配置文件位置

| 文件 | 用途 |
|------|------|
| `~/.emacs.d/custom.el` | 主自定义文件 |
| `~/.emacs.d/custom-post.el` | 启动后加载的自定义 |
| `~/.emacs.d/custom-post.org` | Org 格式的自定义配置 |
| `~/.emacs.d/env.el` | 环境变量配置 |

### 常用自定义变量

编辑 `custom.el` 文件：

```elisp
;; 用户信息
(setq my-full-name "Your Name")
(setq my-mail-address "your@email.com")

;; 代理设置
(setq my-proxy "127.0.0.1:7897")
(setq my-socks-proxy "127.0.0.1:7897")

;; 包源设置
(setq my-package-archives 'melpa)  ; melpa, bfsu, tuna, ustc, sjtu, netease, iscas

;; 主题设置
(setq my-theme 'light)  ; auto, random, system, default, pro, dark, light, warm, cold, day, night

;; 完成样式
(setq my-completion-style 'childframe)  ; minibuffer 或 childframe

;; 启动时最大化
(setq my-frame-maximized-on-startup t)

;; 禁用启动页
(setq my-dashboard nil)

;; LSP 设置
(setq my-lsp 'eglot)  ; eglot, lsp-mode, nil
(setq my-lsp-format-on-save t)
(setq my-lsp-format-on-save-ignore-modes '(c-mode c++-mode python-mode))

;; Tree-sitter
(setq my-tree-sitter t)

;; 图标显示
(setq my-icon t)

;; 中文字体（取消注释以启用）
;; (setq my-prettify-symbols-alist nil)
```

### 使用 Customize 界面

```
M-x customize-group RET my RET
```

---

## 添加新功能

### 1. 添加单个包配置

在 `~/.emacs.d/custom-post.el` 中添加：

```elisp
(use-package package-name
  :ensure t
  :hook (some-mode . some-function)
  :bind ("C-c p" . some-command)
  :config
  (setq package-option t))
```

### 2. 创建新的模块文件

1. 创建 `~/.emacs.d/lisp/init-mymodule.el`：

```elisp
;;; init-mymodule.el --- My module. -*- lexical-binding: t -*-

;; Copyright (C) 2026 Your Name

;; Author: Your Name <your.email@example.com>

;;; Commentary:

;; My custom module.

;;; Code:

(eval-when-compile
  (require 'init-const)
  (require 'init-custom))

(use-package my-package
  :ensure t
  :config
  ;; 配置代码
  )

(provide 'init-mymodule)

;;; init-mymodule.el ends here
```

2. 在 `init.el` 中添加：

```elisp
(require 'init-mymodule)
```

### 3. 添加编程语言支持

在对应的 `init-<lang>.el` 中添加配置，例如添加 Julia 支持到 `init-python.el` 或创建 `init-julia.el`：

```elisp
(use-package julia-mode
  :mode "\\.jl\\'")

(use-package julia-repl
  :hook (julia-mode . julia-repl-mode))
```

### 4. 添加自定义快捷键

在 `custom-post.el` 中：

```elisp
;; 全局快捷键
(global-set-key (kbd "C-c a") 'my-function)

;; 模式专用快捷键
(with-eval-after-load 'python-mode
  (define-key python-mode-map (kbd "C-c C-t") 'my-python-function))
```

### 5. 添加自定义 Hydra

```elisp
(use-package pretty-hydra
  :config
  (pretty-hydra-define my-hydra
    (:title (pretty-hydra-title "My Hydra" 'sucicon "nf-custom-emacs")
     :color blue :quit-key ("q" "C-g"))
    ("Category"
     (("a" command-a "description-a")
      ("b" command-b "description-b"))
     "Another"
     (("c" command-c "description-c")))))
```

---

## 更换主题

### 方法 1：通过命令切换

```
M-x my-load-theme
```

然后选择：
- `auto` - 根据时间自动切换
- `system` - 跟随系统外观
- `random` - 随机主题
- `default`, `pro`, `dark`, `light`, `warm`, `cold`, `day`, `night` - 预设主题

### 方法 2：修改 custom.el

```elisp
(setq my-theme 'dark)  ; 或其他主题名
```

然后重启 Emacs。

### 方法 3：Consult 快速切换

```
M-x consult-theme
```

### 可用主题映射

| 关键字 | 实际主题 |
|--------|----------|
| `default` | `doom-one` |
| `pro` | `doom-monokai-pro` |
| `dark` | `doom-vibrant` |
| `light` | `doom-one-light` |
| `warm` | `doom-solarized-light` |
| `cold` | `doom-palenight` |
| `day` | `doom-tomorrow-day` |
| `night` | `doom-tomorrow-night` |

### 添加自定义主题

1. 在 `custom.el` 中修改主题列表：

```elisp
(setq my-theme-alist
      '((default . doom-one)
        (mytheme . my-custom-theme)))
```

2. 安装主题包并在 `custom-post.el` 中加载：

```elisp
(use-package my-theme-package
  :ensure t
  :config
  (load-theme 'my-custom-theme t))
```

### 自动主题切换

设置时间自动切换主题（自动模式）：

```elisp
(setq my-auto-themes '(("8:00"  . doom-one-light)
                       ("19:00" . doom-one)))
(setq my-theme 'auto)
```

跟随系统外观（仅 macOS）：

```elisp
(setq my-theme 'system)
(setq my-system-themes '((dark  . doom-one)
                         (light . doom-one-light)))
```

---

## 故障排查

### 启动问题

```bash
# 使用最小配置启动
emacs -Q -l ~/.emacs.d/init-mini.el

# 调试模式启动
emacs --debug-init
```

### 常见问题

| 问题 | 解决方案 |
|------|----------|
| 启动缓慢 | 检查网络连接，首次启动需要下载包 |
| 字体显示异常 | `M-x my-install-fonts` |
| LSP 不工作 | 检查语言服务器是否安装 |
| 主题不生效 | 确保 `doom-themes` 已安装 |
| 代理问题 | `M-x enable-http-proxy` 或检查代理设置 |

### 重置配置

```bash
# 备份并重新克隆
mv ~/.emacs.d ~/.emacs.d.bak
git clone --depth 1 <repo-url> ~/.emacs.d
```

### 获取帮助

- `C-h k` - 查看快捷键绑定的命令
- `C-h f` - 查看函数文档
- `C-h v` - 查看变量文档
- `C-h m` - 查看当前模式信息
- `C-c h` - 查看命令历史

---

## 快速参考卡片

### 最常用快捷键

```
文件:     C-x C-r (最近文件)    C-x K (删文件)        C-x C-s (保存)
编辑:     C-c C-c (评估)        C-<return> (矩形)     M-y (剪贴板)
搜索:     C-c r (ripgrep)       C-s (搜索)            M-s l (行内)
导航:     M-g g (跳转行)        C-. (imenu)           C-x b (缓冲区)
窗口:     C-c w (窗口管理)      C-M-<方向> (半屏)     s-=/s-- (缩放)
Org:      C-c a (日程)          C-c x (捕获)          < (模板)
Git:      C-x g (magit)         C-x v p (提交信息)    C-c m (合并)
其他:     <f6> (切换)           C-<f6> (模式栏)       M-<f6> (LSP)
```

---

*最后更新: 2026-03-18*

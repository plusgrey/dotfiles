" Insert 模式 -> 闪烁竖线 (5)
let &t_SI = "\<Esc>[5 q"

" Normal 模式 -> 闪烁方块 (1)
let &t_EI = "\<Esc>[1 q"

" 启动 Vim 时 -> 闪烁方块 (1)
let &t_ti .= "\<Esc>[1 q"

" 退出 Vim 时 -> 闪烁竖线 (5)
let &t_te .= "\<Esc>[5 q"

" 如果检测到在 Wayland 环境下
if executable('wl-copy') && $WAYLAND_DISPLAY != ''
    " 使用可视模式选中文本后，按 "+y 复制到系统剪切板
    xnoremap "+y :w !wl-copy<CR><CR>
    
    " 在普通模式按 "+p 从系统剪切板粘贴
    nnoremap "+p :let @+ = system('wl-paste --no-newline')<CR>"+p
endif

" 可选：如果你希望 y 和 p 直接同步系统剪切板（慎用，可能会影响速度）
" set clipboard=unnamedplus

set number
syntax on
set expandtab      " 将 tab 转换为空格
set tabstop=4      " tab 显示为 4 个空格宽度
set shiftwidth=4   " 自动缩进使用 4 个空格
set softtabstop=4  " 编辑时 tab 键插入 4 个空格
	

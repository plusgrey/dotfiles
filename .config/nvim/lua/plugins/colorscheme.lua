return {
  -- VSCode Dark+ 主题
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    config = function()
      -- 获取 vscode 颜色
      local c = require("vscode.colors").get_colors()

      require("vscode").setup({
        -- 深色主题
        style = "dark",

        -- 透明背景
        transparent = true,

        -- 斜体注释
        italic_comments = true,

        -- 斜体 inlay hints
        italic_inlayhints = true,

        -- 下划线链接
        underline_links = true,

        -- 禁用 nvim-tree 背景色
        disable_nvimtree_bg = true,

        -- 终端颜色
        terminal_colors = true,

        -- 颜色覆盖
        color_overrides = {},

        -- 高亮组覆盖
        group_overrides = {
          -- 确保变量是 VSCode 蓝色
          ["@variable"] = { fg = c.vscLightBlue },
          ["@variable.builtin"] = { fg = c.vscLightBlue },
          ["@variable.parameter"] = { fg = c.vscLightBlue },
          ["@variable.member"] = { fg = c.vscLightBlue },
          ["@lsp.type.variable"] = { fg = c.vscLightBlue },
          ["@lsp.type.parameter"] = { fg = c.vscLightBlue },
        },
      })

      -- 加载主题
      vim.cmd.colorscheme("vscode")
    end,
  },

  -- 保留 Catppuccin 作为备选（可以用 :colorscheme catppuccin 切换）
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,  -- 懒加载，不自动启用
    opts = {
      transparent_background = true,
      float = {
        transparent = true, -- enable transparent floating windows
      },

      custom_highlights = function(colors)
        -- stylua: ignore
        return {
          LineNr     = { fg = colors.surface2 },
          Visual     = { bg = colors.overlay0 },
          Search     = { bg = colors.surface2 },
          IncSearch  = { bg = colors.mauve },
          CurSearch  = { bg = colors.mauve },
          MatchParen = { bg = colors.mauve, fg = colors.base, bold = true },
        }
      end,
      integrations = {
        barbar = true,
        blink_cmp = true,
        gitsigns = true,
        mason = true,
        noice = true,
        nvimtree = true,
        rainbow_delimiters = true,
        snacks = {
          enabled = true,
          indent_scope_color = "flamingo", -- catppuccin color (eg. `lavender`) Default: text
        },
        which_key = true,
        flash = true,
        lsp_trouble = true,
        dap = true,
        dap_ui = true,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)

      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

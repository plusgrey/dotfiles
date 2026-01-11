return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSUpdate", "TSUpdateSync" },
    opts = {
      auto_install = true,
      ensure_installed = {
        "c",
        "cpp",
        "python",
        "lua",
        "rust",
        "vim",
        "vimdoc",
        "query",
        "javascript",
        "typescript",
        "html",
        "css",
        "json",
        "yaml",
        "toml",
        "bash",
        "markdown",
        "markdown_inline",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    },
    opts_extend = { "ensure_installed" },
    config = function(_, opts)
      require("nvim-treesitter").setup(opts)

      -- 手动为所有支持的文件类型启用 treesitter 高亮
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local bufnr = args.buf
          local ft = vim.bo[bufnr].filetype
          -- 尝试启用 treesitter 高亮
          pcall(function()
            if vim.treesitter.language.get_lang(ft) then
              vim.treesitter.start(bufnr)
            end
          end)
        end,
      })
    end,
  },
}

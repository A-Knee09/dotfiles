return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },

  opts = {
    ensure_installed = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline",
      "python",
    },

    sync_install = false, 
    auto_install = true,

    highlight = {
      enable = true,

      disable = function(_, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(
          vim.loop.fs_stat,
          vim.api.nvim_buf_get_name(buf)
        )
        return ok and stats and stats.size > max_filesize
      end,

      additional_vim_regex_highlighting = false,
    },
  },

  config = function(_, opts)
    require("nvim-treesitter").setup(opts)
  end,
}

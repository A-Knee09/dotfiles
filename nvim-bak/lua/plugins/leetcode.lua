-- LeetCode
return{
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    -- Use Python3 for all problems
    lang = "python3",

    -- Disable LeetCode China
    cn = {
      enabled = false,
      translator = false,
      translate_problems = false,
    },

    -- File storage and caching
    storage = {
      home = vim.fn.stdpath("data") .. "/leetcode",
      cache = vim.fn.stdpath("cache") .. "/leetcode",
    },

    -- Enable debug logging
    logging = true,

    -- Make it open the console on run
    console = {
      open_on_runcode = true,
      dir = "row",
      size = {
        width = "85%",
        height = "75%",
      },
      result = {
        size = "60%",
      },
      testcase = {
        virt_text = true,
        size = "40%",
      },
    },

    -- Description panel styling
    description = {
      position = "left",
      width = "40%",
      show_stats = true,
    },

    -- UI keybinds for smoother workflow
    keys = {
      toggle = { "q" },
      confirm = { "<CR>" },
      reset_testcases = "r",
      use_testcase = "U",
      focus_testcases = "H",
      focus_result = "L",
    },

    -- Set update interval for question cache
    cache = {
      update_interval = 60 * 60 * 24 * 7, -- 7 days
    },

    -- Optional picker (like telescope)
    picker = {
      provider = "telescope",
    },

    -- Disable auto-injection unless needed
    injector = {},

    -- If you don't want a full UI popup for problems
    plugins = {
      non_standalone = false,
    },

    -- Highlight customization (you can tweak later)
    theme = {},

    -- Disable image rendering support unless needed
    image_support = false,

    -- Optional hooks (you can add analytics or auto-comment templates here)
    hooks = {
      enter = {},
      question_enter = {},
      leave = {},
    },
  },
}


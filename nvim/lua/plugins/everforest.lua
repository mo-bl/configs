return {
  {
    "neanias/everforest",
    priority = 1000, -- Load before other plugins to apply the colorscheme
    config = function()
      -- Set the Everforest background style (soft, medium, or hard)
      vim.g.everforest_background = "medium"

      -- Adjust other Everforest-specific settings if needed
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_disable_italic_comment = 0
      vim.g.everforest_transparent_background = 1

      -- Apply the colorscheme
      vim.cmd.colorscheme("everforest")
    end,
  },
}

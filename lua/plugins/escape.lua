return {
  "max397574/better-escape.nvim",
  config = function()
    require("better_escape").setup({
      -- Set the timeout to the same as your Neovim timeoutlen option
      timeout = vim.o.timeoutlen,
      -- Define your escape mappings (default is 'jk')
      mappings = {
        i = { -- i for Insert mode
          j = {
            j = "<Esc>", -- pressing j then k quickly will trigger Escape
          },
          -- you can add more mappings or customize existing ones
        },
        -- You can define mappings for other modes too, like terminal mode
        t = {
          j = {
            j = "<C-\\><C-n>", -- escape terminal mode
          },
        },
      },
    })
  end,
  -- Ensure it loads immediately to work correctly from startup
  lazy = false,
}

return {
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty", -- Supports kitty, sixel, ueberzug, or tmux
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown", "vimwiki" },
        },
      },
      max_height_window_percentage = 50,
    },
  },
  {
    "3rd/diagram.nvim",
    dependencies = {
      "3rd/image.nvim",
    },
    opts = {
      renderer_options = {
        mermaid = {
          background = "transparent",
          theme = "dark",
          scale = 1,
          cli_args = {
            "-p",
            vim.fn.expand("~/.puppeteerrc.json"),
          },
        },
        plantuml = {
          charset = "utf-8",
        },
        d2 = {
          theme_id = 200,
        },
      },
    },
  },
}

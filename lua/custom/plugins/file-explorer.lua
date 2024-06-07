-- OIL - buggy
-- return {
--   'stevearc/oil.nvim',
--   -- Optional dependencies
--   dependencies = { "nvim-tree/nvim-web-devicons" },
--   config = function ()
--     require("oil").setup()
--     vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
--   end
-- }
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
     view = {
        width = 60
      },
      filters = {
        dotfiles = false,
      }
    }

    vim.keymap.set("n", "<leader>ft", "<CMD>NvimTreeToggle<CR>", { desc = "Toggle file tree" })

    vim.keymap.set("n", "<leader>ff", "<CMD>NvimTreeFocus<CR>", { desc = "Focus file tree" })
    vim.keymap.set("n", "<leader>fg", "<CMD>NvimTreeFindFile<CR>", { desc = "Focus current file in the file tree" })
    vim.keymap.set("n", "<leader>fc", "<CMD>NvimTreeCollapse<CR>", { desc = "Collapse file tree" })
  end,
}

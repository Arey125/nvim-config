require("obsidian").setup({
  workspaces = {
    {
      name = "Zettelkasten",
      path = "~/Zettelkasten",
    }
  },

  disable_frontmatter = true,

  mappings = {
    ["gd"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
  },
  completion = {
    nvim_cmp = true,
    min_chars = 2,
    use_path_only = false,
  },
  finder = "telescope.nvim",

  follow_url_func = function(url)
    vim.fn.jobstart({"xdg-open", url})
  end,
})

vim.opt.conceallevel = 1

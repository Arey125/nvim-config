require("obsidian").setup({
  disable_frontmatter = true,
  -- Optional, key mappings.
  mappings = {
    ["gf"] = {
      action = function()
        print("obsidian")
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
  },
})

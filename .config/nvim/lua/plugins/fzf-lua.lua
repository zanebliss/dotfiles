return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
  end,
  enabled = false
}

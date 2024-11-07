return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      winopts = {
	width = 1,
	height = 0.70,
	row = 1,
	border = 'none',
	preview = {
	  title = false,
	  scrollbar = false,
	  horizontal = 'right:70%'
	}
      },
      defaults = {
	git_icons = false,
	file_icons = false,
	color_icons = false
      },
      previewers = {
        grep = {
	  git_icons = false,
  	  file_icons = false,
  	  color_icons = false
        },
        builtin = {
	  treesitter = { enable = false }
        }
      }
    })
  end
}

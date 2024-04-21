return {
  {
    'rose-pine/neovim',
    otps = {
      variant = 'auto',
      dark_variant = 'dawn',
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      enable = {
        terminal = true,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
      },

      styles = {
        bold = true,
        italic = true,
        transparency = false,
      }
    }
  }
}

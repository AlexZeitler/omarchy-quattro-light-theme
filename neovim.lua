local c = {
  bg         = "#E9ECEC",
  dark_bg    = "#D6DBDC",
  darker_bg  = "#C4CDCE",
  lighter_bg = "#DFE3E4",

  fg         = "#1E1F24",
  dark_fg    = "#121317",
  light_fg   = "#3C3C42",
  bright_fg  = "#52535A",
  muted      = "#6E6F74",

  red        = "#9E1B1F",
  yellow     = "#7A5F14",
  orange     = "#9C4526",
  green      = "#2F6248",
  cyan       = "#3F6E7A",
  blue       = "#C81017",
  purple     = "#8E3A46",
  brown      = "#54504A",

  bright_red    = "#E5262C",
  bright_yellow = "#9A7A2A",
  bright_green  = "#427E60",
  bright_cyan   = "#52889A",
  bright_blue   = "#DE3A3F",
  bright_purple = "#B04A57",

  accent               = "#C81017",
  cursor               = "#1E1F24",
  foreground           = "#1E1F24",
  background           = "#E9ECEC",
  selection            = "#D3D9DA",
  selection_foreground = "#1E1F24",
  selection_background = "#D3D9DA",
}

-- Lualine bekommt ein eigenes Theme. Aether nimmt sonst yellow fuer den
-- Normal-Modus. Das Gelb wird aber gleichzeitig fuer Warnungen und
-- ungetrackte Dateien gebraucht und darf deshalb nicht zur Modusfarbe
-- umgewidmet werden. Hier traegt der Modus die Leitfarbe des Themes: Rot.
local mode = function(color)
  return {
    a = { bg = color, fg = c.bg, gui = "bold" },
    b = { bg = c.dark_bg, fg = c.fg },
    c = { bg = c.bg, fg = c.light_fg },
    x = { bg = c.bg, fg = c.light_fg },
  }
end

local lualine_theme = {
  normal   = mode(c.accent),
  insert   = mode(c.green),
  visual   = mode(c.orange),
  replace  = mode(c.bright_red),
  command  = mode(c.cyan),
  inactive = {
    a = { bg = c.lighter_bg, fg = c.muted },
    b = { bg = c.bg, fg = c.muted },
    c = { bg = c.bg, fg = c.muted },
  },
}

return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = c,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.theme = lualine_theme
    end,
  },
}

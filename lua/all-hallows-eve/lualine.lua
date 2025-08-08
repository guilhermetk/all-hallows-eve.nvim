local colors = require("all-hallows-eve.colors").palette

local all_hallows_eve = {}

all_hallows_eve.normal = {
  a = { fg = colors.bg1, bg = colors.orange, gui = "bold" },
  b = { fg = colors.fg1, bg = colors.bg3 },
  c = { fg = colors.fg3, bg = colors.bg1 },
}

all_hallows_eve.insert = {
  a = { fg = colors.bg1, bg = colors.red, gui = "bold" },
}

all_hallows_eve.visual = {
  a = { fg = colors.bg1, bg = colors.purple, gui = "bold" },
}

all_hallows_eve.replace = {
  a = { fg = colors.bg1, bg = colors.blue, gui = "bold" },
}

all_hallows_eve.command = {
  a = { fg = colors.bg1, bg = colors.yellow, gui = "bold" },
}

all_hallows_eve.inactive = {
  a = { fg = colors.fg3, bg = colors.bg1 },
  b = { fg = colors.fg3, bg = colors.bg1 },
  c = { fg = colors.fg3, bg = colors.bg1 },
}

return all_hallows_eve 
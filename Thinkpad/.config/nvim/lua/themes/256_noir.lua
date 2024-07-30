local M = {}

M.base_30 = {
  white = "#EEEEEE",
  darker_black = "#303030",
  black = "#000000", --  nvim bg
  black2 = "#121212",
  one_bg = "#121212",
  one_bg2 = "#121212",
  one_bg3 = "#383838",
  grey = "#a8a8a8",
  grey_fg = "#585858",
  grey_fg2 = "#585858",
  light_grey = "#585858",
  red = "#af0000",
  baby_pink = "#870000",
  pink = "#570000",
  line = "#2e2e2e", -- for lines like vertsplit
  green = "#af0000",
  vibrant_green = "#870000",
  blue = "#af0000",
  nord_blue = "#870000",
  yellow = "#af0000",
  sun = "#870000",
  purple = "#af0000",
  dark_purple = "#870000",
  teal = "#870000",
  orange = "#af0000",
  cyan = "#870000",
  statusline_bg = "#121212",
  lightbg = "#303030",
  pmenu_bg = "#570000",
  folder_bg = "#af0000",
}

M.base_16 = {
  base00 = "#000000",
  base01 = "#121212",
  base02 = "#303030",
  base03 = "#585858",
  base04 = "#a8a8a8",
  base05 = "#EEEEEE",
  base06 = "#af0000",
  base07 = "#af0000",
  base08 = "#EEEEEE",
  base09 = "#EEEEEE",
  base0A = "#570000",
  base0B = "#af0000",
  base0C = "#EEEEEE",
  base0D = "#EEEEEE",
  base0E = "#EEEEEE",
  base0F = "#af0000",
}

M.polish_hl = {
  ["@punctuation.bracket"] = { fg = M.base_30.red },
}

M.type = "dark"

M = require("base46").override_theme(M, "256_noir")

return M

local colors = require("base46").get_theme_tb "base_30"

local M = {
  NyxVimHeading = {
    fg = colors.black,
    bg = colors.blue,
    bold = true,
  },

  NyxVimSection = {
    bg = colors.black2,
  },

  NyxVimAsciiHeader = {
    fg = colors.blue,
    bg = colors.black2,
  },
}

local cheatsheet_theme = require("nyxconfig").cheatsheet.theme

if cheatsheet_theme == "grid" then
  M.NyxVimAsciiHeader = {
    fg = colors.blue,
  }

  local bgcols =
    { "blue", "red", "green", "yellow", "orange", "baby_pink", "purple", "white", "cyan", "vibrant_green", "teal" }

  for _, value in ipairs(bgcols) do
    M["NyxVimHead" .. value] = {
      fg = colors.black,
      bg = colors[value],
    }
  end
end

return M

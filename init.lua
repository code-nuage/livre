_G.curses = require("curses")

_G.livre = {}

local base = string.sub(..., 1, -6)
os.setlocale('UTF-8')

livre.modules = {
    "run",
    "graphics",
    "keyboard"
}

for _, module in ipairs(livre.modules) do
    livre[module] = require(base .. "." .. module)
end
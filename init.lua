_G.curses = require("curses")

_G.livre = {}

os.setlocale('C.UTF-8')

local base = string.sub(..., 1, -6)

livre.modules = {
    "run",
    "graphics",
    "keyboard"
}

for _, module in ipairs(livre.modules) do
    livre[module] = require(base .. "." .. module)
end
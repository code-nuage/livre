local graphics = {}

graphics.draw = function(string, x, y)
    livre.screen:mvaddstr(x, y, string)
end

graphics.get_dimensions = function()
    local width, height = livre.screen:getmaxyx()
    return width, height
end

graphics.get_width = function()
    local width, _ = graphics.get_dimensions()
    return width
end

graphics.get_height = function()
    local _, height = graphics.get_dimensions()
    return height
end

return graphics
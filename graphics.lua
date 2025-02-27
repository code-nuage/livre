local graphics = {}

graphics.draw = function(string, x, y)
    livre.screen:mvaddstr(y, x, string)
end

graphics.rectangle = function(mode, x, y, w, h)
    if mode == "fill" then
        for screen_y = y, y + h do
            for screen_x = x, x + w do
                livre.screen:mvaddstr(screen_y, screen_x, "█")
            end
        end
    elseif mode == "line" then
        for screen_y = y, y + h do
            livre.screen:mvaddstr(screen_y, x, "│")
            livre.screen:mvaddstr(screen_y, x + w, "│")
        end
        for screen_x = x, x + w do
            livre.screen:mvaddstr(y, screen_x, "─")
            livre.screen:mvaddstr(y + h, screen_x, "─")
        end
        livre.screen:mvaddstr(y, x, "┌")
        livre.screen:mvaddstr(y + h, x, "└")
        livre.screen:mvaddstr(y + h, x + w,"┘")
        livre.screen:mvaddstr(y, x + w, "┐")
    end
end

graphics.get_dimensions = function()
    local height, width = livre.screen:getmaxyx()
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
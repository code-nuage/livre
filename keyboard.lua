local keyboard = {}

keyboard.is_keycode_down = function(keycode)
    if livre.input ~= nil then                                                 -- Check for any input
        if livre.input == keycode then                                         -- Compare it to the argument
            return true
        end
    end
end

keyboard.is_down = function(char)
    if livre.input ~= nil then                                                 -- Check for any input
        if livre.input >= 0 and livre.input <= 255 then                        -- Assert the input keycode is ASCII compatible
            if string.char(livre.input) == char then                           -- Convert keycode into string and compare it to the argument
                return true
            end
        end
    end
end

keyboard.get_keycode_input = function()
    if livre.input ~= nil then                                                 -- Check for any input
        return livre.input                                                     -- Return directly the input
    end
end

keyboard.get_input = function()
    if livre.input ~= nil then                                                 -- Check for any input
        if livre.input >= 0 and livre.input <= 255 then                        -- Assert the input keycode is ASCII compatible
            return string.char(livre.input)                                    -- Return the converted input
        end
    end
end

return keyboard
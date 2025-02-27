local err = function(e)
    curses.curs_set(1)
    curses.endwin()
    print(debug.traceback(e, 2))
    os.exit(2)
end

local init = function()
    livre.screen = curses.initscr()

    curses.echo(false)
    curses.nl(false)
    curses.curs_set(0)
    curses.keypad(true)

    livre.screen:nodelay(true)

    if type(livre.load) == "function" then
        livre.load()
    end

    while true do
        if type(livre.update) == "function" then
            livre.update()
        end

        livre.screen:refresh()

        livre.input = livre.screen:getch()

        livre.screen:erase()
    end
end

local run = function()
    xpcall(init, err)
end

return run
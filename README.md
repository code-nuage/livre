# Livre

A **Lua** curses framework that helps you to create TUI (Terminal User Interface) applications 

## Installation

### Prerequisites
- Lua (5.1 or higher)
- `ncurses` library
- `lcurses` ncurses binding for Lua

### Installing ncurses
On Debian/Ubuntu:
```sh
sudo apt install libncurses5-dev libncursesw5-dev
```
On macOS with Homebrew:
```sh
brew install ncurses
```

### Installing lcurses with luarocks
```sh
sudo luarocks install lcurses
```

### Installing the framework
Clone this repository and integrate it into your project:
```sh
git clone https://github.com/code-nuage/livre.git
```

Then, add **Livre** to your project by loading its `init.lua` file:
```lua
_G.livre = require("path.to.livre.init")
```

## Project Structure

Livre is structured around several modules:
- `run.lua`: Manages the main loop and initializes ncurses.
- `graphics.lua`: Handles drawing text and shapes.
- `keyboard.lua`: Captures keyboard input.

## Usage

### Initialization and Execution
In your main script, add:
```lua
function livre.load()
    -- Pre-update code
end

function livre.update()
    livre.graphics.draw("Hello, Livre!", 10, 5)
end

livre.run()
```

## Features

### Graphics
- **Draw text on the screen**:
  ```lua
  livre.graphics.draw("Hello, World!", 5, 3)
  ```
- **Draw rectangles**:
  ```lua
  livre.graphics.rectangle("line", 2, 2, 20, 10)
  ```
- **Set colors**:
  ```lua
  livre.graphics.set_color(curses.COLOR_RED, curses.COLOR_BLACK)
  ```
- **Enable or disable color mode**:
  ```lua
  livre.graphics.set_color_mode(true)
  ```
- **Get screen dimensions**:
  ```lua
  local width, height = livre.graphics.get_dimensions()
  ```

### Keyboard
- **Check if a specific key is pressed**:
  ```lua
  if livre.keyboard.is_down("q") then
      print("Key Q pressed!")
  end
  ```
- **Check if a keycode is pressed**:
  ```lua
  if livre.keyboard.is_keycode_down(27) then  -- 27 is ESC
      print("ESC key pressed!")
  end
  ```
- **Get the latest key input**:
  ```lua
  local input = livre.keyboard.get_input()
  ```
- **Get the latest keycode input**:
  ```lua
  local keycode = livre.keyboard.get_keycode_input()
  ```

## License
Livre is distributed under the MIT License.

## Contributions
Contributions are welcome! Feel free to suggest improvements via Pull Requests.


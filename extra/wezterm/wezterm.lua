local config = require("wezterm").config_builder()

-- Vibr Theme
config.colors = {
    -- The default text color
    foreground = "#abb2bf",

    -- The default background color
    background = "#1e1e1e",

    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = "#ffffff",

    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = "#000000",

    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- or the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    cursor_border = "#ffffff",

    -- the foreground color of selected text
    selection_fg = "#ffffff",

    -- the background color of selected text
    selection_bg = "#283457",

    -- The color of the scrollbar "thumb"; the portion that represents the current viewport
    scrollbar_thumb = "#282c34",

    -- The color of the split lines between panes
    split = "#282c34",

    ansi = {
        "#283457", -- Gray
        "#f44747", -- Red
        "#fffff0", -- Green
        "#fff200", -- Yellow
        "#73b8f1", -- Blue
        "#ff66cc", -- Pink
        "#29d4f2", -- Cyan
        "#abb2bf"  -- White
    },

    brights = {
        "#abb2bf", -- Gray
        "#f44747", -- Red
        "#ffff5f", -- Green
        "#fff200", -- Yellow
        "#73b8f1", -- Blue
        "#ff66cc", -- Pink
        "#29d4f2", -- Cyan
        "#ffffff"  -- White
    },
}

return config

local pallete = {}

pallete.get_pallete = function()
    return {
        vbrNone         = "NONE",

        vbrFg           = "#abb2bf",
        vbrFg1          = "#b0b0b0",
        vbrFg2          = "#4C5B6E",
        vbrBg           = "#282c34",
        vbrBg1          = "#1e1e1e",

        vbrCursorBg     = "#ffffff",
        vbrCursorFg     = "#000000",
        vbrCursorBorder = "#ffffff",

        vbrSelectionBg  = "#283457",
        vbrSelectionFg  = "#ffffff",

        -- Normals
        vbrGray         = "#878787",
        vbrOrange       = "#ff6600",
        vbrOrange1      = "#ff9e64",
        vbrGreen        = "#00ff99",
        vbrGreen1       = "#6A9955",
        vbrYellow       = "#fff200",
        vbrYellow1      = "#ffff5f",
        vbrBlue         = "#73B8F1",
        vbrBlue1        = "#569CD6",
        vbrBlue2        = "#85C1F1",

        vbrRed          = "#f44747",
        vbrPink         = "#ff66cc",
        vbrCyan         = "#29d4f2",
        vbrPurple       = "#9933cc",
        vbrPurple1      = "#ffafff",
        vbrWhite        = "#f5f5f5",

        -- Brights
        vbrBrightGray   = "#555555",
        vbrBrightRed    = "#ff0000",
        vbrBrightGreen  = "#00ff00",
        vbrBrightYellow = "#ffff00",
        vbrBrightBlue   = "#003fff",
        vbrBrightPink   = "#ff00ff",
        vbrBrightCyan   = "#00ffff",
        vbrBrightWhite  = "#e5e5e5",
    }
end

return pallete

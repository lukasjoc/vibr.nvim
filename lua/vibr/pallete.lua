---@class Pallete
---@field vbrNone                string
---@field vbrFg                  string
---@field vbrFg1                 string
---@field vbrFg2                 string
---@field vbrBg                  string
---@field vbrBg1                 string
---@field vbrCursorBg            string
---@field vbrCursorFg            string
---@field vbrCursorBorder        string
---@field vbrSelectionBg         string
---@field vbrSelectionBgBlue     string
---@field vbrSelectionBgRed      string
---@field vbrSelectionBgYellow   string
---@field vbrSelectionFg         string
---@field vbrGray                string
---@field vbrOrange              string
---@field vbrOrange1             string
---@field vbrGreen               string
---@field vbrGreen1              string
---@field vbrGreen2              string
---@field vbrYellow              string
---@field vbrYellow1             string
---@field vbrBlue                string
---@field vbrBlue1               string
---@field vbrBlue2               string
---@field vbrRed                 string
---@field vbrPink                string
---@field vbrCyan                string
---@field vbrPurple              string
---@field vbrPurple1             string
---@field vbrWhite               string
---@field vbrBrightGray          string
---@field vbrBrightRed           string
---@field vbrBrightGreen         string
---@field vbrBrightYellow        string
---@field vbrBrightBlue          string
---@field vbrBrightPink          string
---@field vbrBrightCyan          string
---@field vbrBrightWhite         string
local pallete = {}

---@return Pallete
pallete.get_pallete = function()
    return {
        vbrNone              = "NONE",

        vbrFg                = "#abb2bf",
        vbrFg1               = "#b0b0b0",
        vbrFg2               = "#4c5b6e",
        vbrBg                = "#282c34",
        vbrBg1               = "#1e1e1e",

        vbrCursorBg          = "#ffffff",
        vbrCursorFg          = "#000000",
        vbrCursorBorder      = "#ffffff",

        -- Selection and Overlays
        vbrSelectionBg       = "#283457",
        vbrSelectionBgBlue   = "#3a4f7a",
        vbrSelectionBgRed    = "#5a2e40",
        vbrSelectionBgYellow = "#5a523a",
        vbrSelectionFg       = "#ffffff",

        -- Normals
        vbrGray              = "#878787",
        vbrOrange            = "#ff6600",
        vbrOrange1           = "#ff9e64",
        vbrGreen             = "#00ff99",
        vbrGreen1            = "#6a9955",
        vbrGreen2            = "#afff5e",
        vbrYellow            = "#fff200",
        vbrYellow1           = "#ffff5f",
        vbrBlue              = "#73b8f1",
        vbrBlue1             = "#569cd6",
        vbrBlue2             = "#85c1f1",
        vbrRed               = "#f44747",
        vbrPink              = "#ff66cc",
        vbrCyan              = "#29d4f2",
        vbrPurple            = "#9933cc",
        vbrPurple1           = "#ffafff",
        vbrWhite             = "#f5f5f5",

        -- Brights
        vbrBrightGray        = "#555555",
        vbrBrightRed         = "#ff0000",
        vbrBrightGreen       = "#00ff00",
        vbrBrightYellow      = "#ffff00",
        vbrBrightBlue        = "#003fff",
        vbrBrightPink        = "#ff00ff",
        vbrBrightCyan        = "#00ffff",
        vbrBrightWhite       = "#e5e5e5",
    }
end

return pallete

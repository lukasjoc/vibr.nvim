--- @class Pallete
--- @field vbrNone string
--- @field vbrFg string
--- @field vbrFgDim string
--- @field vbrBg string
--- @field vbrBgAlt string
--- @field vbrGray string
--- @field vbrRed string
--- @field vbrOrange string
--- @field vbrYellow string
--- @field vbrGreen string
--- @field vbrBlue string
--- @field vbrPurple string
--- @field vbrCyan string
--- @field vbrPink string
--- @field vbrWhite string
--- @field vbrError string
--- @field vbrHint string
--- @field vbrWarning string
--- @field vbrInfo string
--- @field vbrSelectionBg string
--- @field vbrSelectionFg string
local pallete = {}

--- @return Pallete
pallete.get_pallete = function()
    local isDark    = vim.o.background == "dark"

    local vbrNone   = "NONE"

    local vbrGray   = isDark and "#8f9bb3" or "#3e4b59"
    local vbrRed    = "#ff5c57"
    local vbrOrange = "#ff8c00"
    local vbrYellow = "#cc9900"
    local vbrGreen  = "#1f7766"
    local vbrBlue   = isDark and "#007acc" or "#005fa3"
    local vbrPurple = "#7e57c2"
    local vbrCyan   = isDark and "#18b2cd" or "#00b0b9"
    local vbrPink   = "#ff4081"
    local vbrWhite  = "#ffffff"
    local vbrBlack  = "#000000"

    local vbrFgDim  = "#abb2bf"
    local vbrBgAlt  = "#111111"

    return {
        ---@type string
        vbrNone        = vbrNone,

        vbrFg          = isDark and "#b0b0b0" or "#2e3440",
        vbrFgDim       = isDark and vbrFgDim or "#6c7a94",
        vbrBg          = isDark and vbrBlack or "#FFFFF0",
        vbrBgAlt       = isDark and vbrBgAlt or "#e6e1d6",

        vbrGray        = vbrGray,
        vbrRed         = vbrRed,
        vbrOrange      = vbrOrange,
        vbrYellow      = vbrYellow,
        vbrGreen       = vbrGreen,
        vbrBlue        = vbrBlue,
        vbrPurple      = vbrPurple,
        vbrCyan        = vbrCyan,
        vbrPink        = vbrPink,
        vbrWhite       = vbrWhite,

        vbrError       = vbrRed,
        vbrHint        = vbrOrange,
        vbrWarning     = vbrYellow,
        vbrInfo        = vbrGreen,
        vbrSelectionBg = isDark and vbrBgAlt or "#cceeff",
        vbrSelectionFg = vbrNone,
    }
end

return pallete

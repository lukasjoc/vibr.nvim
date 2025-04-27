local theme = require("vibr.theme")

local vibr = {}

vibr.setup = function() end

vibr.load = function()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "vibr"

    theme.set_highlights()
    theme.link_highlight()
end

return vibr

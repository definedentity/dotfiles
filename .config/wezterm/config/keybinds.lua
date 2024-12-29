local wezterm = require("wezterm")

local act = wezterm.action

local config = {}

config.keys = {
    {
        mods = "CTRL",
        key = "c",
        action = act.CopyTo "Clipboard"
    },
    {
        mods = "CTRL",
        key = "v",
        action = act.PasteFrom "Clipboard"
    },
    {
        mods = "WIN|SHIFT",
        key = "p",
        action = act.ActivateCommandPalette
    },
    {
        mods = "ALT",
        key = "r",
        action = act.CloseCurrentTab { confirm = true }
    },
    {
        mods = "ALT",
        key = "a",
        action = act.SpawnTab "CurrentPaneDomain"
    },
    {
        mods = "ALT",
        key = "q",
        action = act.ActivateTabRelative(-1)
    },
    {
        mods = "ALT",
        key = "w",
        action = act.ActivateTabRelative(1)
    },
    {
        mods = "ALT",
        key = "UpArrow",
        action = act.ScrollToTop
    },
    {
        mods = "ALT",
        key = "DownArrow",
        action = act.ScrollToBottom
    }
}

for i = 1, 9 do
    table.insert(config.keys, {
        key = tostring(i),
        mods = "ALT",
        action = wezterm.action.ActivateTab(i - 1),
    })
end

return config

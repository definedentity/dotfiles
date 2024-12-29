local macchiato_palette = require("config.colors.theme")
local config = {}

local background = macchiato_palette.crust

config.color_scheme = "Catppuccin Macchiato"
config.colors = {
	background = background,
	tab_bar = {
		background = background,
		active_tab = {
			bg_color = macchiato_palette.blue,
			fg_color = background,
			intensity = "Bold",
		},
		inactive_tab = {
			fg_color = macchiato_palette.overlay0,
			bg_color = background,
			italic = true,
		},
	},
}

config.window_background_opacity = 0.9

return config

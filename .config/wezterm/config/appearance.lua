local wezterm = require("wezterm")

local config = {}

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14.0

config.window_decorations = "NONE"
config.adjust_window_size_when_changing_font_size = false
config.window_padding = {
    top = 8,
    bottom = 8,
    left = 8,
    right = 8
}

config.default_cursor_style = "BlinkingBar"

config.enable_kitty_keyboard = false

config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false

config.enable_wayland = true
config.webgpu_preferred_adapter = {
    backend = "Vulkan",
    device = 8093,
    device_type = "DiscreteGpu",
    driver = "NVIDIA",
    driver_info = "565.77",
    name = "NVIDIA GeForce GTX 1650",
    vendor = 4138
}
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

return config

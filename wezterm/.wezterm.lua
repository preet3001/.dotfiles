-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
config.color_scheme = "Catppuccin Mocha"
-- config.window_background_image = '/path/to/wallpaper.jpg'
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.8
config.macos_window_background_blur = 8

-- and finally, return the configuration to wezterm
return config

local wezterm = require("wezterm")

local selected_scheme = "Tokyo Night"
local scheme = wezterm.get_builtin_color_schemes()[selected_scheme]

scheme.tab_bar.inactive_tab_hover.italic = true
scheme.tab_bar.active_tab.bg_color = scheme.selection_bg

local config = wezterm.config_builder()
config:set_strict_mode(true)

config.audible_bell = "Disabled"

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 12.0
config.color_scheme = selected_scheme

config.window_background_opacity = 0.8
config.macos_window_background_blur = 30
config.text_background_opacity = 0.75

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

config.tab_max_width = 23

config.window_frame = {
	font = wezterm.font({ family = "MesloLGS Nerd Font Mono", weight = "Bold" }),
}

config.color_schemes = {
	[selected_scheme] = scheme,
}

return config

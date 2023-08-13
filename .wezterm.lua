-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.front_end = "OpenGL"
-- config.color_scheme = 'Gruvbox Light'
-- config.color_scheme = 'nordfox'
-- config.font = wezterm.font 'Cartograph CF'
-- config.font = wezterm.font 'Iosevka'
config.enable_tab_bar = false
-- config.scrollback_lines = 5000

config.leader = { key="a", mods="ALT" }
config.adjust_window_size_when_changing_font_size = false

config.keys = {
	{ key = "Tab", mods = "CTRL", action = wezterm.action.DisableDefaultAssignment },
	{ key = "+", mods = "ALT", action=wezterm.action.IncreaseFontSize },
	{ key = "-", mods = "ALT", action=wezterm.action.DecreaseFontSize },
	{ key = "r", mods = "LEADER", action=wezterm.action.RotatePanes 'Clockwise' },

	{ key = "s", mods = "ALT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
	{ key = "S", mods = "ALT|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
	{ key = "t", mods = "ALT", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},

        { key = "c", mods = "LEADER",       action=wezterm.action{SpawnTab="CurrentPaneDomain"}},

        { key = "h", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Left"}},
        { key = "j", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Down"}},
        { key = "k", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Up"}},
        { key = "l", mods = "ALT",       action=wezterm.action{ActivatePaneDirection="Right"}},

        { key = "n", mods = "ALT",       action=wezterm.action.ActivateTabRelative(1)},
        { key = "p", mods = "ALT",       action=wezterm.action.ActivateTabRelative(-1)},

	{ key = "H", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Left", 5}}},
        { key = "J", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Down", 5}}},
        { key = "K", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Up", 5}}},
        { key = "L", mods = "ALT", action=wezterm.action{AdjustPaneSize={"Right", 5}}},

}

config.default_prog = { '/home/exaryss/.cargo/bin/nu' }

return config

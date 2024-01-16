local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- font
config.font_size = 18.0
config.font = wezterm.font("PlemolJP Console NF")

-- colors
config.color_scheme = "Ayu Mirage"
-- config.color_scheme = 'iceberg-dark'
-- 透明度
-- config.window_background_opacity = 0.93

config.window_frame = {
    font_size = 12.0
}

-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    -- We are running on Windows; maybe we emit different
    -- key assignments here?
    config.default_prog = { 'powershell.exe' }
    config.font_size = 14.0
elseif wezterm.target_triple == 'x86_64-apple-darwin' then
    -- We are running on Windows; maybe we emit different
    -- key assignments here?
end


-- and finally, return the configuration to wezterm
return config
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Colorscheme
config.color_scheme = "Catppuccin Mocha"

-- Font
config.font = wezterm.font("JetBrains Mono")
config.font_size = 12

-- Tab bar
config.enable_tab_bar = false
config.window_frame = {
	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 11,
}
-- Tab bar title
wezterm.on("format-tab-title", function(tab)
	-- Get the process name.
	local process = string.gsub(tab.active_pane.foreground_process_name, "(.*[/\\])(.*)", "%2")
	-- Current working directory.
	local cwd = tab.active_pane.current_working_dir
	cwd = cwd and string.format("%s ", cwd.file_path:gsub(os.getenv("HOME"), "~")) or ""
	-- Format and return the title.
	return string.format("(%d %s) %s", tab.tab_index + 1, process, cwd)
end)

-- Status bar
-- Name of the current workspace | Hostname
wezterm.on("update-status", function(window)
	-- utf8 character for the powerline left solid arrow
	local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
	--Add what will be displayed on the status bar here
	local sections = {
		window:active_workspace(),
		wezterm.hostname(),
	}
	-- Get the palette of the current color theme
	local color_scheme = window:effective_config().resolved_palette
	-- parse returns a Color object that has functions for lightening and darkening
	local bg = wezterm.color.parse(color_scheme.background)
	local fg = color_scheme.foreground
	-- Create gradients for the background color of each section
	local gradient_to = bg
	local gradient_from = gradient_to:lighten(0.2)
	local gradients = wezterm.color.gradient({
		orientation = "Horizontal",
		colors = { gradient_from, gradient_to },
	}, #sections)
	-- Render
	local elements = {}
	for i, sec in ipairs(sections) do
		if i == 1 then
			table.insert(elements, { Background = { Color = "none" } })
		end
		table.insert(elements, { Foreground = { Color = gradients[i] } })
		table.insert(elements, { Text = SOLID_LEFT_ARROW })
		table.insert(elements, { Foreground = { Color = fg } })
		table.insert(elements, { Background = { Color = gradients[i] } })
		table.insert(elements, { Text = " " .. sec .. " " })
	end
	window:set_right_status(wezterm.format(elements))
end)

-- and finally, return the configuration to wezterm
return config

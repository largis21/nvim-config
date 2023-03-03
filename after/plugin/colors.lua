function SetColors(color)
	color = color or "darcula"
	vim.cmd.colorscheme(color)
end
SetColors()

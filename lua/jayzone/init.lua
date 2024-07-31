local theme = require("jayzone.theme")

local M = {}

function M.setup(opts)
	opts = opts or { name = "jayzone" }

	theme.colorScheme(opts)
	theme.highlights()
end

return M

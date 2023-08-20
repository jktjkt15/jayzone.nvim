for k in pairs(package.loaded) do
	if k:match(".*jayzone.*") then
		package.loaded[k] = nil
	end
end

local jayzone = require("jayzone")
jayzone.setup()

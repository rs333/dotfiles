-- Home keyboard: the common input.lua swaps Left Alt/Win (work laptop and
-- Surface keyboards). The home desktop keyboard doesn't need it.
local util = require("util")

if not util.is_surface_device() then
    hl.config({ input = { kb_options = "" } })
end

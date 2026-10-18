-- Small helpers shared by the common and profile files.
-- Usage: local util = require("util")

local M = {}

-- True on Microsoft Surface hardware (DMI product name contains "surface").
function M.is_surface_device()
    local file = io.open("/sys/class/dmi/id/product_name", "r")
    if not file then return false end

    local product_name = file:read("*all")
    file:close()

    return string.match(product_name:lower(), "surface") ~= nil
end

return M

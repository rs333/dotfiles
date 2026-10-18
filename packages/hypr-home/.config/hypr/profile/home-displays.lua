-- Home displays: one generic rule for whatever is connected. Profile file for hypr-home.
local util = require("util")

local scaling_factor = util.is_surface_device() and "1" or "auto"

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "highres",
    position = "auto",
    scale    = scaling_factor,
})

-- Persistent workspaces 1-10 (no monitor binding at home).
for i = 1, 10 do
    hl.workspace_rule({ workspace = tostring(i), persistent = true })
end

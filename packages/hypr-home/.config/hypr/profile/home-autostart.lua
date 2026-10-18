-- Home apps started with Hyprland (in addition to autostart.lua's waybar & hyprpaper).
local util = require("util")

local apps = util.is_surface_device() and "discord" or "discord & steam"

hl.on("hyprland.start", function ()
  hl.exec_cmd(apps)
end)

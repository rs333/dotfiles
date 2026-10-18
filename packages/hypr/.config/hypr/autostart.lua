-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Processes every machine starts. Profile files add their own apps with
-- another hl.on("hyprland.start", ...) handler; Hyprland runs all of them.
hl.on("hyprland.start", function ()
  hl.exec_cmd("waybar & hyprpaper")
end)

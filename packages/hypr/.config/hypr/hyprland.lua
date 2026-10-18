-- Hyprland config entry point. Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/
--
-- This file only loads the others. Settings shared by every machine are in the
-- files below (stow package public/hypr). Machine-specific settings are in
-- profile/*.lua, supplied by the hypr-home / hypr-work stow packages.
--
-- Each require() runs in its own scope, so an error in one file is reported
-- without stopping the rest.

require("env")
require("look")
require("input")
require("autostart")
require("rules")
require("keybinds")

-- Machine profile: loaded last so it can override anything above. The wildcard
-- loads matching files in sorted order and Hyprland watches the directory for
-- new files. pcall: an empty or missing profile/ is not an error.
if not pcall(require, "./profile/*.lua") then
    -- No profile: light up every display with a generic rule.
    hl.monitor({
        output   = "",
        mode     = "highres",
        position = "auto",
        scale    = "auto",
    })
end

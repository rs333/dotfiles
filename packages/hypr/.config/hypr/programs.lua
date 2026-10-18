-- Programs launched from binds and profile files, plus the main modifier.
-- Usage: local p = require("programs")

---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal    = "kitty"
-- The version of kitty installed on ubuntu is bugged so check if there
-- is a local install of it
local local_kitty_path = os.getenv("HOME") .. "/.local/kitty.app/bin/kitty"
local local_kitty_file = io.open(local_kitty_path, "r")
if local_kitty_file then
    local_kitty_file:close() 
    terminal    = local_kitty_path
end
local fileManager = "dolphin"
--local menu        = "hyprlauncher"
local menu        = "wofi --show drun"
local browser     = "firefox"
local websearch   = os.getenv("HOME") .. "/.config/hypr/scripts/web-search.sh"


local mainMod = "SUPER" -- Sets "Windows" key as main modifier

return {
    mainMod     = mainMod,
    terminal    = terminal,
    fileManager = fileManager,
    menu        = menu,
    browser     = browser,
    websearch   = websearch,
}

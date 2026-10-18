-- Home-only keybinds.
local mainMod = require("programs").mainMod
local drawing = "/usr/bin/krita"

hl.bind(mainMod .. " + SHIFT + K", hl.dsp.exec_cmd(drawing))

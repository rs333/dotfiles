-- Home-only keybinds.
local mainMod = require("programs").mainMod
local drawing = "/usr/bin/krita"

hl.bind(mainMod .. " + CTRL + K", hl.dsp.exec_cmd(drawing))

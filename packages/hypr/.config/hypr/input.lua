-- Keyboard, touchpad, gestures and per-device settings. Loaded from hyprland.lua.
-- Profile files may override kb_options (e.g. profile/home-input.lua).

---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "altwin:swap_lalt_lwin",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            disable_while_typing = true,
            natural_scroll = false,
            middle_button_emulation = false,
        },
    },
})

--- ???KEEP - Was previously commented out
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})
hl.device({
    name        = "microsoft-surface-type-cover-touchpad",
    sensitivity = -0.1,
    disable_while_typing = true
})
hl.device({
    name        = "microsoft-surface-type-cover-mouse",
    sensitivity = -0.1,
    disable_while_typing = true
})
hl.device({
    name        = "microsoft-microsoft-3-button-mouse-with-intellieye(tm)",
    sensitivity = 1.0,
})

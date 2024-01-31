-- auto config reload
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
        hs.notify.new({title="Hammerspoon", informativeText="Config Loaded!"}):send()
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()

-- HotSwitch-HS
local hotswitchHs = require("hotswitch-hs/hotswitch-hs")
hotswitchHs.enableAutoUpdate() -- If you don't want to update automatically, remove this line.
hs.hotkey.bind({"cmd"}, ".", hotswitchHs.openOrClose) -- Set a keybind you like to open HotSwitch-HS panel.

-- Spoon
hypher={"cmd", "alt", "ctrl"}

-- WindowHalfsAndThirds
hs.loadSpoon("WindowHalfsAndThirds")
spoon.WindowHalfsAndThirds:bindHotkeys(
{
   left_half    = { {"ctrl",        "cmd"}, "Left" },
   right_half   = { {"ctrl",        "cmd"}, "Right" },
   top_half     = { {"ctrl",        "cmd"}, "Up" },
   bottom_half  = { {"ctrl",        "cmd"}, "Down" },
   third_left   = { {"ctrl", "alt"       }, "Left" },
   third_right  = { {"ctrl", "alt"       }, "Right" },
   third_up     = { {"ctrl", "alt"       }, "Up" },
   third_down   = { {"ctrl", "alt"       }, "Down" },
   top_left     = { {"ctrl",        "cmd"}, "1" },
   top_right    = { {"ctrl",        "cmd"}, "2" },
   bottom_left  = { {"ctrl",        "cmd"}, "3" },
   bottom_right = { {"ctrl",        "cmd"}, "4" },
   max_toggle   = { {"ctrl", "alt", "cmd"}, "t" },
   max          = { {"ctrl", "alt", "cmd"}, "Up" },
   undo         = { {        "alt", "cmd"}, "z" },
   center       = { {        "alt", "cmd"}, "c" },
   larger       = { {        "alt", "cmd", "shift"}, "Right" },
   smaller      = { {        "alt", "cmd", "shift"}, "Left" },
})

-- KSheet
hs.loadSpoon("KSheet")
spoon.KSheet:bindHotkeys({
  toggle = { hypher, "/" },
  show = { hypher, "W" },
  hide = { hypher, "Q" }
})

-- ClipboardTool
hs.loadSpoon("ClipboardTool")
spoon.ClipboardTool:start()
spoon.ClipboardTool:bindHotkeys({
  show_clipboard = { {"cmd", "alt", "ctrl"}, "p" },
  toggle_clipboard = { {"cmd", "alt", "ctrl"}, "c" }
})

-- AppLaucher
hs.loadSpoon("AppLauncher")
spoon.AppLauncher:bindHotkeys({
  t = "Terminal",
  d = "Discord",
  c = "Calendar",
  s = "Safari",
  n = "Notion"
})


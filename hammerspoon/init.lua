hs.console.clearConsole()

-- Variables
hs.window.animationDuration = 0

-- Macros
-- Auto Comment
hs.hotkey.bind({"alt"}, "C", function() hs.eventtap.keyStrokes("console.log('==>', )") end)

-- Window Control
-- Left Half Screen
hs.hotkey.bind({"alt", "ctrl"}, "left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- Right Half Screen
hs.hotkey.bind({"alt", "ctrl"}, "right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- Top Half Screen
hs.hotkey.bind({"alt", "ctrl"}, "up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Bottom Half Screen
hs.hotkey.bind({"alt", "ctrl"}, "down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Full Screen
hs.hotkey.bind({"alt", "ctrl"}, "space", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

-- Fuller Screen
hs.hotkey.bind({"alt", "ctrl"}, "return", function()
  local win = hs.window.focusedWindow()
  win:toggleFullScreen()
end)

-- Jump Right Screen
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "right", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenEast()
end)

-- Jump Left Screen
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "left", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenWest()
end)

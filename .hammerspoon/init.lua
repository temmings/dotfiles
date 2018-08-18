local function keyCode(key, modifiers)
   modifiers = modifiers or {}
   return function()
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
      hs.timer.usleep(1000)
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
   end
end

local function remapKey(modifiers, key, keyCode)
   return hs.hotkey.bind(modifiers, key, keyCode, nil, keyCode)
end

local function disableHotkeys(hotkeys)
   for k, v in pairs(hotkeys) do
      v['_hk']:disable()
   end
end

local function enableHotkeys(hotkeys)
   for k, v in pairs(hotkeys) do
      v['_hk']:enable()
   end
end

local function Set(list)
  local set = {}
  for _, l in ipairs(list) do set[l] = true end
  return set
end

local basicRemapKeys = {
    remapKey({'ctrl'}, 'd', keyCode('forwarddelete')),
    remapKey({'ctrl'}, 'h', keyCode('delete'))
    remapKey({'ctrl'}, 'm', keyCode('return')),
    remapKey({'ctrl'}, '[', keyCode('esc')),
}

local function keyEmacsCtrlK()
    keyCode('e', {'shift', 'ctrl'})()
    keyCode('x', {'cmd'})()
end

-- Emacs Keymaps
local emacsRemapKeys = {
    -- カーソル移動
    remapKey({'ctrl'}, 'f', keyCode('right')),
    remapKey({'ctrl'}, 'b', keyCode('left')),
    remapKey({'ctrl'}, 'n', keyCode('down')),
    remapKey({'ctrl'}, 'p', keyCode('up')),
    remapKey({'ctrl'}, 'a', keyCode('left', {'cmd'})),
    remapKey({'ctrl'}, 'e', keyCode('right', {'cmd'})),
    remapKey({'alt'}, 'f', keyCode('right', {'alt'})),
    remapKey({'alt'}, 'b', keyCode('left', {'alt'})),

    -- テキスト編集
    remapKey({'alt'}, 'w', keyCode('c', {'cmd'})),
    remapKey({'ctrl'}, 'w', keyCode('x', {'cmd'})),
    remapKey({'ctrl'}, 'y', keyCode('v', {'cmd'})),
    hs.hotkey.bind({'ctrl'}, 'k', keyEmacsCtrlK, nil, keyEmacsCtrlK),

    -- コマンド
    remapKey({'ctrl'}, 's', keyCode('f', {'cmd'})),
    remapKey({'ctrl'}, '/', keyCode('z', {'cmd'})),
    -- remapKey({'ctrl'}, 'g', keyCode('escape')),

    -- ページスクロール
    remapKey({'ctrl'}, 'v', keyCode('pagedown')),
    remapKey({'alt'}, 'v', keyCode('pageup'))
}

local disableApps = Set { "iTerm2" }
local disableEmacsApps = Set { "MacVim", "Code", "IntelliJ IDEA", "PhpStorm" }

local function handleGlobalAppEvent(name, event, app)
    if event == hs.application.watcher.activated then
        -- hs.alert.show(name)
        if disableApps[name] then
            disableHotkeys(hs.hotkey.getHotkeys())
        elseif disableEmacsApps[name] then
            disableHotkeys(emacsRemapKeys)
        else
            enableHotkeys(hs.hotkey.getHotkeys())
        end
    end
end

appsWatcher = hs.application.watcher.new(handleGlobalAppEvent)
appsWatcher:start()

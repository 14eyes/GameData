local Reload = require("Reload/Reload")

Reload.postfix = "_update"
local Hotfix = require("Hotfix/Hotfix")

reload_hotfix = {}

function reload_hotfix.Reload()
    Reload.reload({"Hotfix/Hotfix"})
end

function reload_hotfix.GetHotfixFuncs()
    return Hotfix
end

return reload_hotfix

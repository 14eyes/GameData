local NpcModeType = {MODE_HIDE = 1, MODE_BANDAILY = 2, MODE_NOACTION = 3}
local modeScript = {}
local str = "Actor/Npc/NpcMode/NpcMode_BanDaily"
modeScript[1] = "Actor/Npc/NpcMode/NpcMode_MengdeHide"
modeScript[2] = str
NpcModeType.ModeScript = modeScript

function NpcModeType:GetMode(arg1)
    local v = self.ModeScript[arg1]
    if v ~= nil then
        local require2 = require(v)
        return require2
    end

    return nil
end

return NpcModeType

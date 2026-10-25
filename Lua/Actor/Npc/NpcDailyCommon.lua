local NpcDailyCommon = {}
local NPCEventType = require("Actor/Npc/NPCEventType")
local NpcModeType = require("Actor/Npc/NpcMode/NpcModeType")

local dailyNpcEventType = NPCEventType.DailyNpcEventType

function NpcDailyCommon:Register()
    self:RegisterMode(NpcModeType.MODE_HIDE)
    self:RegisterMode(NpcModeType.MODE_BANDAILY)
end

function NpcDailyCommon:InvokeOnResetFreeStyle(arg1)
    if arg1 == 361 or arg1 == 141 then
        self:RecoverFromFreeStyle()
    end
end

function NpcDailyCommon:OnEvent(arg1)
    if self.evtType == dailyNpcEventType.STARTDAILY then
        arg1:StartDaily()
    else
        if self.evtType == dailyNpcEventType.HIDESELF then
            arg1:SwitchMode(NpcModeType.MODE_HIDE)
        else
            if self.evtType == dailyNpcEventType.BANDAILY then
                arg1:SwitchMode(NpcModeType.MODE_BANDAILY)
            end
        end
    end
end

function NpcDailyCommon:OnCollisionEnter(arg1)
    if arg1.OnAction == 1 then
        return
    end

    if not self.isSprint then
        if not self.isRun then
            goto lbl_74
        end
    end

    if self.isFromBack then
        arg1.OnAction = 1
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = pos.x - avatarPos.x, y = pos.y}
        local n = -avatarPos.y
        tbl.z = pos.z - avatarPos.z
        tbl[1] = n
        arg1:Standby()
        arg1:TurnTo(tbl)
        arg1:DoFreeStyleTask(9010, true, arg1.RecoverFromCollisionEnter)
    else
        arg1.OnAction = 1
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        arg1:Standby()
        arg1:TurnTo(tbl)
        arg1:DoFreeStyleTask(9020, true, arg1.RecoverFromCollisionEnter)
    end

    ::lbl_74::
end

return NpcDailyCommon

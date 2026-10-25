require("Actor/ActorCommon")
local BaseDailyNpc = require("Actor/Npc/BaseDailyNpc")

local TempDailyNPC = class("TempDailyNPC", BaseDailyNpc)
TempDailyNPC.defaultAlias = "TempDailyNPC"

function TempDailyNPC:OnPreStart()
    if self.OnEvent ~= nil then
        self:RegisterActorEvent(self.OnEvent)
    end
end

function TempDailyNPC:StartDay()
    self:PerformDither(true, 2)
end

function TempDailyNPC:StartDaily()
    if self.OnEvent ~= nil then
        self:RegisterActorEvent(self.OnEvent)
    end

    self:ShowSelf()
    self:PerformDither(true, 2)
end

function TempDailyNPC:Register()
    self:RegisterMode(npcMode.MODE_HIDE)
    self:RegisterMode(npcMode.MODE_BANDAILY)
end

function TempDailyNPC:OnEvent(arg1)
    if arg1.evtType == NpcUtil.NpcEventType.STARTDAILY then
        self:StartDaily()
    else
        if arg1.evtType == NpcUtil.NpcEventType.HIDESELF then
            self:SwitchMode(npcMode.MODE_HIDE)
        else
            if arg1.evtType == NpcUtil.NpcEventType.BANDAILY then
                self:SwitchMode(npcMode.MODE_BANDAILY)
            end
        end
    end
end

return TempDailyNPC

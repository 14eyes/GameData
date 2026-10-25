local BaseActorMode = require("Actor/BaseActorMode")
local NPCEventType = require("Actor/Npc/NPCEventType")

local NpcMode_MengdeHide = class("NpcMode_MengdeHide", BaseActorMode)

function NpcMode_MengdeHide:DefaultAction()
    self:RegisterActorEvent(self.OnEvent)
    self:StartDay()
end

function NpcMode_MengdeHide:OnEvent(arg1)
    if arg1.evtType == NPCEventType.STARTDAILY then
        print("NpcMode_Hide STARTDAILY")
        self:StartDaily()
    end
end

function NpcMode_MengdeHide:MengdeDayPatrol_1()
    self:RegisterActorEvent(self.OnEvent)
end

return NpcMode_MengdeHide

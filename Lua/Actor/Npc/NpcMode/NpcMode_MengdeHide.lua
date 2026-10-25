local BaseActorMode = require("Actor/BaseActorMode")
local NPCEventType = require("Actor/Npc/NPCEventType")

local NpcMode_MengdeHide = class("NpcMode_MengdeHide", BaseActorMode)

function NpcMode_MengdeHide:DefaultAction()
    self:PerformDither(false, 2, self.HideSelf)
    self:RegisterActorEvent(self.OnEvent)
end

function NpcMode_MengdeHide:StoreKeeper01()
    local pos = sceneData:GetDummyPoint(3, "NPCScaredPoint05").pos
    self:DoAppear()
    self:SetPos(pos)
    self:DoFreeStyle(362)
end

function NpcMode_MengdeHide:OnEvent(arg1)
    if arg1.evtType == NPCEventType.STARTDAILY then
        print("NpcMode_Hide STARTDAILY")
        self:StartDaily()
    end
end

return NpcMode_MengdeHide

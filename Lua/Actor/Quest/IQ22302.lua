require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22302 = class("Quest22302", QuestActorProxy)
Quest22302.defaultAlias = "Quest22302"
local clientData
local npcData01

function Quest22302:OnDataLoaded()
    clientData = self.clientData
    npcData01 = clientData.NPCData01
end

function Quest22302:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2230201"] = self.OnSubStart2230201
    self.subStartHandlers["2230202"] = self.OnSubStart2230202
    self.subStartHandlers["2230203"] = self.OnSubStart2230203
    self.subStartHandlers["2230204"] = self.OnSubStart2230204
end

function Quest22302:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2230201"] = self.OnSubFinish2230201
    self.subFinishHandlers["2230202"] = self.OnSubFinish2230202
    self.subFinishHandlers["2230203"] = self.OnSubFinish2230203
    self.subFinishHandlers["2230204"] = self.OnSubFinish2230204
end

function Quest22302:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2230201"] = self.OnSubFailed2230201
    self.subFailedHandlers["2230202"] = self.OnSubFailed2230202
    self.subFailedHandlers["2230203"] = self.OnSubFailed2230203
    self.subFailedHandlers["2230204"] = self.OnSubFailed2230204
end

function Quest22302:OnSubStart2230201(arg1)
    self:NotifyTo("Npc1624", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1627", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22302:OnSubFinish2230201(arg1) end
function Quest22302:OnSubFailed2230201(arg1) end

function Quest22302:OnSubStart2230202(arg1)
    self:NotifyTo("Npc1624", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1627", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22302:OnSubFinish2230202(arg1)
    self:CreateQuestNpc(arg1, npcData01.NpcID)
end

function Quest22302:OnSubFailed2230202(arg1) end

function Quest22302:OnSubStart2230203(arg1)
    self:NotifyTo("Npc1624", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1627", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22302:OnSubFinish2230203(arg1) end
function Quest22302:OnSubFailed2230203(arg1) end

function Quest22302:OnSubStart2230204(arg1)
    self:RequestInteraction(self.clientData.NPCData01.Npc)
    self:NotifyTo("Npc1624", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1627", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22302:OnSubFinish2230204(arg1)
    self:GetQuestNpcActor(self.clientData.NPCData01.Npc):DestroyWithDisappear(false)
end

function Quest22302:OnSubFailed2230204(arg1)
    self:GetQuestNpcActor(self.clientData.NPCData01.Npc):DestroyWithDisappear(false)
end

function Quest22302:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:ShowReadingDialog(100387)
    end
end

function Quest22302:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
    self:NotifyTo("Npc1624", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1627", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest22302:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
    self:NotifyTo("Npc1624", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1627", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest22302:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:NotifyTo("Npc1624", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1627", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest22302:Start() end
function Quest22302:OnDestroy() end
return Quest22302

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20042 = class("Quest20042", QuestActorProxy)
Quest20042.defaultAlias = "Quest20042"
local clientData
local nunData
local albertData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest20042:OnDataLoaded()
    clientData = self.clientData
    nunData = clientData.NunData
    albertData = clientData.AlbertData
end

function Quest20042:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2004201"] = self.OnSubStart2004201
    self.subStartHandlers["2004202"] = self.OnSubStart2004202
    self.subStartHandlers["2004203"] = self.OnSubStart2004203
    self.subStartHandlers["2004204"] = self.OnSubStart2004204
    self.subStartHandlers["2004205"] = self.OnSubStart2004205
end

function Quest20042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2004201"] = self.OnSubFinish2004201
    self.subFinishHandlers["2004202"] = self.OnSubFinish2004202
    self.subFinishHandlers["2004203"] = self.OnSubFinish2004203
    self.subFinishHandlers["2004204"] = self.OnSubFinish2004204
    self.subFinishHandlers["2004205"] = self.OnSubFinish2004205
end

function Quest20042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2004201"] = self.OnSubFailed2004201
    self.subFailedHandlers["2004202"] = self.OnSubFailed2004202
    self.subFailedHandlers["2004203"] = self.OnSubFailed2004203
    self.subFailedHandlers["2004204"] = self.OnSubFailed2004204
    self.subFailedHandlers["2004205"] = self.OnSubFailed2004205
end

function Quest20042:OnSubStart2004201(arg1)
    self:CreateQuestNpc(arg1, albertData.NpcID, 1)
    self:CreateQuestNpc(arg1, nunData.NpcID, 2)
    self:NotifyTo("Npc1602", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1471", DailyNPCManager.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(nunData.Npc)
    local v = self:GetQuestNpcActor(albertData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    v:Standby()
    v:DoFreeStateTrigger()
end

function Quest20042:OnSubFinish2004201(arg1)
    local questNpcActor = self.GetQuestNpcActor(self, nunData.Npc)
    self.ShowBlackScreen(self, 0.5, 1.5, 0.5, function()
        self:GetQuestNpcActor(nunData.Npc):Destroy(false)
    end)

    self.NotifyTo(self, "Npc1471", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest20042:OnSubFailed2004201(arg1) end

function Quest20042:OnSubStart2004202(arg1)
    self:NotifyTo("Npc1602", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest20042:OnSubFinish2004202(arg1) end
function Quest20042:OnSubFailed2004202(arg1) end

function Quest20042:OnSubStart2004203(arg1)
    self:NotifyTo("Npc1602", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest20042:OnSubFinish2004203(arg1) end
function Quest20042:OnSubFailed2004203(arg1) end

function Quest20042:OnSubStart2004204(arg1)
    self:NotifyTo("Npc1602", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest20042:OnSubFinish2004204(arg1)
    local questNpcActor = self:GetQuestNpcActor(albertData.Npc)
    questNpcActor.WalkToTask(questNpcActor, albertData.NPCLeavePos, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
    end, function(arg1, arg2)
        questNpcActor:Standby(true)
    end)
end

function Quest20042:OnSubFailed2004204(arg1) end

function Quest20042:OnSubStart2004205(arg1)
    self:NotifyTo("Npc1602", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest20042:OnSubFinish2004205(arg1)
    self:GetQuestNpcActor(albertData.Npc):DestroyWithDither(false, 1)
    self:NotifyTo("Npc1602", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest20042:OnSubFailed2004205(arg1) end

function Quest20042:OnMainCanceled(arg1)
    self:GetQuestNpcActor(albertData.Npc):Destroy(false)
    self:GetQuestNpcActor(nunData.Npc):Destroy(false)
    self:NotifyTo("Npc1471", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1602", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest20042:OnDestroy() end
return Quest20042

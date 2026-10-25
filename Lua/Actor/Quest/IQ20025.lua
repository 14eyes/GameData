require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20025 = class("Quest20025", QuestActorProxy)
Quest20025.defaultAlias = "Quest20025"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local npcData

function Quest20025:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    npcData = clientData.NPCData
end

function Quest20025:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2002501"] = self.OnSubStart2002501
    self.subStartHandlers["2002502"] = self.OnSubStart2002502
    self.subStartHandlers["2002503"] = self.OnSubStart2002503
    self.subStartHandlers["2002504"] = self.OnSubStart2002504
end

function Quest20025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2002501"] = self.OnSubFinish2002501
    self.subFinishHandlers["2002502"] = self.OnSubFinish2002502
    self.subFinishHandlers["2002503"] = self.OnSubFinish2002503
    self.subFinishHandlers["2002504"] = self.OnSubFinish2002504
end

function Quest20025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2002501"] = self.OnSubFailed2002501
    self.subFailedHandlers["2002502"] = self.OnSubFailed2002502
    self.subFailedHandlers["2002503"] = self.OnSubFailed2002503
    self.subFailedHandlers["2002504"] = self.OnSubFailed2002504
end

function Quest20025:OnSubStart2002501(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    self:GetQuestNpcActor(npcData.Npc):Standby()
    self:CallDelay(2, self.DoFreeStyle)
    print("01 start")
end

function Quest20025:DestroySelf(arg1)
    print("delay destroyself")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcData.Npc)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
            arg1:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
        end
    end)
end

function Quest20025:DoFreeStyle(arg1)
    print("delay start dofreestyle")
    self:GetQuestNpcActor(npcData.Npc):DoFreeStyle(1240)
end

function Quest20025:OnSubFinish2002501(arg1)
    print("01 finish")
end

function Quest20025:OnSubFailed2002501(arg1)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20025:OnSubStart2002502(arg1)
    print("02 start")
end

function Quest20025:OnSubFinish2002502(arg1)
    print("02 finish")
end

function Quest20025:OnSubFailed2002502(arg1) end

function Quest20025:OnSubStart2002503(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    self:CallDelay(1, function(arg1)
        globalActor:StartGuide("RandomTaskElementViewGuideIOS")
        print("elementview")
    end)

    print("03 start")
end

function Quest20025:OnSubFinish2002503(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1300)
    print("03 finish")
end

function Quest20025:OnSubFailed2002503(arg1) end

function Quest20025:OnSubStart2002504(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story3)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    print("04 start")
end

function Quest20025:OnSubFinish2002504(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1300)
    print("04 finish")
    self:CallDelay(2, self.DestroySelf)
end

function Quest20025:OnSubFailed2002504(arg1) end

function Quest20025:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest20025:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest20025:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(npcData.Npc, 3)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20025:Start() end
function Quest20025:OnDestroy() end
return Quest20025

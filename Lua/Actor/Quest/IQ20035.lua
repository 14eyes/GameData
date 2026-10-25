require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20035 = class("Quest20035", QuestActorProxy)
Quest20035.defaultAlias = "Quest20035"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local npcData

function Quest20035:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    npcData = clientData.NPCData
end

function Quest20035:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2003501"] = self.OnSubStart2003501
    self.subStartHandlers["2003502"] = self.OnSubStart2003502
    self.subStartHandlers["2003503"] = self.OnSubStart2003503
    self.subStartHandlers["2003504"] = self.OnSubStart2003504
end

function Quest20035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2003501"] = self.OnSubFinish2003501
    self.subFinishHandlers["2003502"] = self.OnSubFinish2003502
    self.subFinishHandlers["2003503"] = self.OnSubFinish2003503
    self.subFinishHandlers["2003504"] = self.OnSubFinish2003504
end

function Quest20035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2003501"] = self.OnSubFailed2003501
    self.subFailedHandlers["2003502"] = self.OnSubFailed2003502
    self.subFailedHandlers["2003503"] = self.OnSubFailed2003503
    self.subFailedHandlers["2003504"] = self.OnSubFailed2003504
end

function Quest20035:OnSubStart2003501(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    self:GetQuestNpcActor(npcData.Npc):Standby()
    self:CallDelay(2, self.DoFreeStyle)
    print("01 start")
end

function Quest20035:DestroySelf(arg1)
    print("delay destroyself")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcData.Npc)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
            arg1:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
        end
    end)
end

function Quest20035:DoFreeStyle(arg1)
    print("delay start dofreestyle")
    self:GetQuestNpcActor(npcData.Npc):DoFreeStyle(1240)
end

function Quest20035:OnSubFinish2003501(arg1)
    print("01 finish")
end

function Quest20035:OnSubFailed2003501(arg1)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20035:OnSubStart2003502(arg1)
    print("02 start")
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    self:CallDelay(1, function(arg1)
        globalActor:StartGuide("RandomTaskElementViewGuideIOS")
        print("elementview")
    end)
end

function Quest20035:OnSubFinish2003502(arg1)
    if ison == 0 then
        self:NarratorOnlyTask(clientData.NarratorData.Story2)
        ison = 1
    end

    print("02 finish")
end

function Quest20035:OnSubFailed2003502(arg1) end

function Quest20035:OnSubStart2003503(arg1)
    print("03 start")
end

function Quest20035:OnSubFinish2003503(arg1)
    print("03 finish")
end

function Quest20035:OnSubFailed2003503(arg1) end

function Quest20035:OnSubStart2003504(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story3)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    print("04 start")
end

function Quest20035:OnSubFinish2003504(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1300)
    print("04 finish")
    self:CallDelay(2, self.DestroySelf)
end

function Quest20035:OnSubFailed2003504(arg1) end

function Quest20035:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest20035:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest20035:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(npcData.Npc, 3)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20035:Start() end
function Quest20035:OnDestroy() end
return Quest20035

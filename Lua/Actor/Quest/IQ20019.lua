require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20019 = class("Quest20019", QuestActorProxy)
Quest20019.defaultAlias = "Quest20019"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local npcData

function Quest20019:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    npcData = clientData.NPCData
end

function Quest20019:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2001901"] = self.OnSubStart2001901
    self.subStartHandlers["2001902"] = self.OnSubStart2001902
    self.subStartHandlers["2001903"] = self.OnSubStart2001903
    self.subStartHandlers["2001904"] = self.OnSubStart2001904
end

function Quest20019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2001901"] = self.OnSubFinish2001901
    self.subFinishHandlers["2001902"] = self.OnSubFinish2001902
    self.subFinishHandlers["2001903"] = self.OnSubFinish2001903
    self.subFinishHandlers["2001904"] = self.OnSubFinish2001904
end

function Quest20019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2001901"] = self.OnSubFailed2001901
    self.subFailedHandlers["2001902"] = self.OnSubFailed2001902
    self.subFailedHandlers["2001903"] = self.OnSubFailed2001903
    self.subFailedHandlers["2001904"] = self.OnSubFailed2001904
end

function Quest20019:OnSubStart2001901(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    self:GetQuestNpcActor(npcData.Npc):Standby()
    self:CallDelay(2, self.DoFreeStyle)
    print("01 start")
end

function Quest20019:DestroySelf(arg1)
    print("delay destroyself")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcData.Npc)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
            arg1:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
        end
    end)
end

function Quest20019:DoFreeStyle(arg1)
    print("delay start dofreestyle")
    self:GetQuestNpcActor(npcData.Npc):DoFreeStyle(1240)
end

function Quest20019:OnSubFinish2001901(arg1)
    print("01 finish")
end

function Quest20019:OnSubFailed2001901(arg1) end

function Quest20019:OnSubStart2001902(arg1)
    print("02 start")
end

function Quest20019:OnSubFinish2001902(arg1) end
function Quest20019:OnSubFailed2001902(arg1) end

function Quest20019:OnSubStart2001903(arg1)
    print("03 start")
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    self:CallDelay(1, function(arg1)
        globalActor:StartGuide("RandomTaskElementViewGuideIOS")
        print("elementview")
    end)
end

function Quest20019:OnSubFinish2001903(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:DoFreeStateTrigger()
    print("03 finish")
end

function Quest20019:OnSubFailed2001903(arg1) end

function Quest20019:OnSubStart2001904(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story3)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    print("04 start")
end

function Quest20019:OnSubFinish2001904(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1300)
    print("04 finish")
    self:CallDelay(2, self.DestroySelf)
end

function Quest20019:OnSubFailed2001904(arg1) end

function Quest20019:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest20019:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest20019:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(npcData.Npc, 3)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20019:Start() end
function Quest20019:OnDestroy() end
return Quest20019

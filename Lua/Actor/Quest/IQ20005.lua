require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20005 = class("Quest20005", QuestActorProxy)
Quest20005.defaultAlias = "Quest20005"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local npcData

function Quest20005:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    npcData = clientData.NPCData
end

function Quest20005:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2000501"] = self.OnSubStart2000501
    self.subStartHandlers["2000502"] = self.OnSubStart2000502
    self.subStartHandlers["2000503"] = self.OnSubStart2000503
    self.subStartHandlers["2000504"] = self.OnSubStart2000504
end

function Quest20005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2000501"] = self.OnSubFinish2000501
    self.subFinishHandlers["2000502"] = self.OnSubFinish2000502
    self.subFinishHandlers["2000503"] = self.OnSubFinish2000503
    self.subFinishHandlers["2000504"] = self.OnSubFinish2000504
end

function Quest20005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2000501"] = self.OnSubFailed2000501
    self.subFailedHandlers["2000502"] = self.OnSubFailed2000502
    self.subFailedHandlers["2000503"] = self.OnSubFailed2000503
    self.subFailedHandlers["2000504"] = self.OnSubFailed2000504
end

function Quest20005:OnSubStart2000501(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    self:GetQuestNpcActor(npcData.Npc):Standby()
    self:CallDelay(2, self.DoFreeStyle)
    print("01 start")
end

function Quest20005:DestroySelf(arg1)
    print("delay destroyself")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcData.Npc)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
            arg1:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
        end
    end)
end

function Quest20005:DoFreeStyle(arg1)
    print("delay start dofreestyle")
    self:GetQuestNpcActor(npcData.Npc):DoFreeStyle(1240)
end

function Quest20005:OnSubFinish2000501(arg1)
    print("01 finish")
end

function Quest20005:OnSubFailed2000501(arg1) end

function Quest20005:OnSubStart2000502(arg1)
    print("02 start")
    self:NarratorOnlyTask(clientData.NarratorData.Story1)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    self:CallDelay(1, function(arg1)
        globalActor:StartGuide("RandomTaskElementViewGuideIOS")
        print("elementview")
    end)
end

function Quest20005:OnSubFinish2000502(arg1)
    print("02 finish")
end

function Quest20005:OnSubFailed2000502(arg1) end

function Quest20005:OnSubStart2000503(arg1)
    print("03 start")
end

function Quest20005:OnSubFinish2000503(arg1) end
function Quest20005:OnSubFailed2000503(arg1) end

function Quest20005:OnSubStart2000504(arg1)
    self:NarratorOnlyTask(clientData.NarratorData.Story3)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
    print("04 start")
end

function Quest20005:OnSubFinish2000504(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby(true)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1300)
    print("04 finish")
    self:CallDelay(2, self.DestroySelf)
end

function Quest20005:OnSubFailed2000504(arg1) end

function Quest20005:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest20005:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest20005:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(npcData.Npc, 3)
    self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20005:Start() end
function Quest20005:OnDestroy() end
return Quest20005

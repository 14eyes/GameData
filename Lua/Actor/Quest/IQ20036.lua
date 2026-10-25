require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20036 = class("Quest20036", QuestActorProxy)
Quest20036.defaultAlias = "Quest20036"
local clientData
local npcData
local n

function Quest20036:OnDataLoaded()
    clientData = self.clientData
    n = 20036
    npcData = clientData.NPCData
end

function Quest20036:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2003601"] = self.OnSubStart2003601
    self.subStartHandlers["2003602"] = self.OnSubStart2003602
    self.subStartHandlers["2003603"] = self.OnSubStart2003603
    self.subStartHandlers["2003604"] = self.OnSubStart2003604
    self.subStartHandlers["2003605"] = self.OnSubStart2003605
    self.subStartHandlers["2003606"] = self.OnSubStart2003606
end

function Quest20036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2003601"] = self.OnSubFinish2003601
    self.subFinishHandlers["2003602"] = self.OnSubFinish2003602
    self.subFinishHandlers["2003603"] = self.OnSubFinish2003603
    self.subFinishHandlers["2003604"] = self.OnSubFinish2003604
    self.subFinishHandlers["2003605"] = self.OnSubFinish2003605
    self.subFinishHandlers["2003606"] = self.OnSubFinish2003606
end

function Quest20036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2003601"] = self.OnSubFailed2003601
    self.subFailedHandlers["2003602"] = self.OnSubFailed2003602
    self.subFailedHandlers["2003603"] = self.OnSubFailed2003603
    self.subFailedHandlers["2003604"] = self.OnSubFailed2003604
    self.subFailedHandlers["2003605"] = self.OnSubFailed2003605
    self.subFinishHandlers["2003606"] = self.OnSubFinish2003606
end

function Quest20036:PaimonVanish() end

function Quest20036:OnSubStart2003601(arg1)
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
    print("01 start")
end

function Quest20036:DoFreeStyle(arg1)
    print("delay start dofreestyle")
end

function Quest20036:OnSubFinish2003601(arg1)
    print("01 finish")
end

function Quest20036:OnSubFailed2003601(arg1)
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20036:OnSubStart2003602(arg1)
    globalActor:UnSpawn("InteractionPoint")
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
    print("02 start")
end

function Quest20036:OnSubFinish2003602(arg1)
    print("02 finish")
end

function Quest20036:OnSubFailed2003602(arg1)
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20036:OnSubStart2003603(arg1)
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
    print("03 start")
end

function Quest20036:OnSubFinish2003603(arg1)
    print("03 finish")
end

function Quest20036:OnSubFailed2003603(arg1)
    print("03 fail")
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20036:OnSubStart2003604(arg1)
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2003603)
        print("finish 2003603")
    end

    print("04 start")
end

function Quest20036:OnSubFinish2003604(arg1)
    self:SpawnGadgetWithPos(arg1, 70710009, 1, npcData.InteractionPointPos, npcData.InteractionPointDir)
    print("04 finish")
end

function Quest20036:OnSubFailed2003604(arg1)
    print("04 fail")
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20036:OnSubStart2003605(arg1)
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
    print("05 start")
end

function Quest20036:OnSubFinish2003605(arg1)
    local interactionPointPos = npcData.InteractionPointPos
    interactionPointPos.z = npcData.InteractionPointPos.z + 0.4
    interactionPointPos.x = npcData.InteractionPointPos.x + 0.4
    local v = npcData.InteractionPointPos
    v.z = npcData.InteractionPointPos.z - 0.4
    v.x = npcData.InteractionPointPos.x - 0.4
    self:PlayEffect("Eff_Plant_Dandelion_Flora", npcData.InteractionPointPos)
    self:PlayEffect("Eff_Plant_Dandelion_Flora", interactionPointPos)
    self:PlayEffect("Eff_Plant_Dandelion_Flora", v)
    print("05 finish")
end

function Quest20036:OnSubFailed2003605(arg1)
    print("05 fail")
end

function Quest20036:OnSubStart2003606(arg1)
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
    globalActor:UnSpawn("InteractionPoint")
    print("06 start")
end

function Quest20036:OnSubFinish2003606(arg1)
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("06 finish")
end

function Quest20036:OnSubFailed2003606(arg1)
    print("06 fail")
end

function Quest20036:Start() end
function Quest20036:OnDestroy() end
function Quest20036:OnMainFinished(arg1) end
function Quest20036:OnMainFailed(arg1) end

function Quest20036:OnMainCanceled(arg1)
    print("MainQuest2036 Canceled")
    self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

return Quest20036

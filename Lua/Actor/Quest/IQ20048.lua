require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20048 = class("Quest20048", QuestActorProxy)
Quest20048.defaultAlias = "Quest20048"
local clientData
local npcData
local n

function Quest20048:OnDataLoaded()
    clientData = self.clientData
    n = 20048
    npcData = clientData.NPCData
end

function Quest20048:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2004801"] = self.OnSubStart2004801
    self.subStartHandlers["2004802"] = self.OnSubStart2004802
    self.subStartHandlers["2004803"] = self.OnSubStart2004803
    self.subStartHandlers["2004804"] = self.OnSubStart2004804
    self.subStartHandlers["2004805"] = self.OnSubStart2004805
    self.subStartHandlers["2004806"] = self.OnSubStart2004806
end

function Quest20048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2004801"] = self.OnSubFinish2004801
    self.subFinishHandlers["2004802"] = self.OnSubFinish2004802
    self.subFinishHandlers["2004803"] = self.OnSubFinish2004803
    self.subFinishHandlers["2004804"] = self.OnSubFinish2004804
    self.subFinishHandlers["2004805"] = self.OnSubFinish2004805
    self.subFinishHandlers["2004806"] = self.OnSubFinish2004806
end

function Quest20048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2004801"] = self.OnSubFailed2004801
    self.subFailedHandlers["2004802"] = self.OnSubFailed2004802
    self.subFailedHandlers["2004803"] = self.OnSubFailed2004803
    self.subFailedHandlers["2004804"] = self.OnSubFailed2004804
    self.subFailedHandlers["2004805"] = self.OnSubFailed2004805
    self.subFailedHandlers["2004806"] = self.OnSubFailed2004806
end

function Quest20048:CreateFoodRipples()
    self:SpawnGadgetByIdWithPos(2004804, 70300112, 2, npcData.InteractionPointPos02, npcData.InteractionPointDir02)
    self:PlayEffect("Eff_Quest_Food_Ripples", npcData.InteractionPointPos02)
    self:PlayEffect("Eff_Quest_Food_Ripples", npcData.InteractionPointPos02)
end

function Quest20048:OnSubStart2004801(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID, 0)
    globalActor:UnSpawn("InteractionPoint")
    globalActor:UnSpawn("InteractionPoint02")
    print("01 start")
end

function Quest20048:DoFreeStyle(arg1)
    print("delay start dofreestyle")
end

function Quest20048:OnSubFinish2004801(arg1)
    print("01 finish")
end

function Quest20048:OnSubFailed2004801(arg1) end

function Quest20048:OnSubStart2004802(arg1)
    globalActor:UnSpawn("InteractionPoint")
    globalActor:UnSpawn("InteractionPoint02")
    print("02 start")
end

function Quest20048:OnSubFinish2004802(arg1)
    print("02 finish")
end

function Quest20048:OnSubFailed2004802(arg1) end

function Quest20048:OnSubStart2004803(arg1)
    print("03 start")
    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 2004802)
    print("finish 2004803")
end

function Quest20048:OnSubFinish2004803(arg1)
    self:SpawnGadgetWithPos(arg1, 70710009, 1, npcData.InteractionPointPos, npcData.InteractionPointDir)
    print("03 finish")
end

function Quest20048:OnSubFailed2004803(arg1)
    print("03 fail")
end

function Quest20048:OnSubStart2004804(arg1)
    print("04 start")
end

function Quest20048:OnSubFinish2004804(arg1)
    self:PlayEffect("Eff_Quest_Feed", npcData.InteractionPointPos)
    self:PlayEffect("Eff_Quest_Feed", npcData.InteractionPointPos)
    self:CallDelay(0.7, self.CreateFoodRipples)
    print("04 finish")
end

function Quest20048:OnSubFailed2004804(arg1)
    print("04 fail")
end

function Quest20048:OnSubStart2004805(arg1)
    print("05 start")
    globalActor:UnSpawn("InteractionPoint")
end

function Quest20048:OnSubFinish2004805(arg1)
    print("05 finish")
    self.ShowBlackScreen(self, 0.2, 1, 0.5, function()
        self:DestroyQuestNpcActor(npcData.Npc, 0)
    end, nil, nil, "")
end

function Quest20048:OnSubFailed2004805(arg1)
    print("05 fail")
end

function Quest20048:OnSubStart2004806(arg1)
    print("06 start")
    globalActor:UnSpawn("InteractionPoint")
end

function Quest20048:OnSubFinish2004806(arg1)
    print("06 finish")
    self.ShowBlackScreen(self, 0.2, 1, 0.5, function()
        self:DestroyQuestNpcActor(npcData.Npc, 0)
    end, nil, nil, "")
end

function Quest20048:OnSubFailed2004806(arg1)
    print("06 fail")
end

function Quest20048:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest20048:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest20048:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(npcData.Npc, 0)
    globalActor:UnSpawn("InteractionPoint")
    globalActor:UnSpawn("InteractionPoint02")
end

function Quest20048:Start() end
function Quest20048:OnDestroy() end
return Quest20048

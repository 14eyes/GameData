require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest389 = class("Quest389", QuestActorProxy)
Quest389.defaultAlias = "Quest389"
local clientData
local wendyData
local qinData
local dilucData

function Quest389:OnDataLoaded()
    clientData = self.clientData
    wendyData = clientData.WendyData
    qinData = clientData.QinData
    dilucData = clientData.DilucData
end

function Quest389:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38901"] = self.OnSubStart38901
    self.subStartHandlers["38902"] = self.OnSubStart38902
    self.subStartHandlers["38903"] = self.OnSubStart38903
    self.subStartHandlers["38904"] = self.OnSubStart38904
    self.subStartHandlers["38905"] = self.OnSubStart38905
    self.subStartHandlers["38906"] = self.OnSubStart38906
end

function Quest389:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38901"] = self.OnSubFinish38901
    self.subFinishHandlers["38902"] = self.OnSubFinish38902
    self.subFinishHandlers["38903"] = self.OnSubFinish38903
    self.subFinishHandlers["38904"] = self.OnSubFinish38904
    self.subFinishHandlers["38905"] = self.OnSubFinish38905
    self.subFinishHandlers["38906"] = self.OnSubFinish38906
end

function Quest389:DestroyNPC()
    local questNpcActor = self:GetQuestNpcActor(wendyData.Wendy)
    local v = self:GetQuestNpcActor(dilucData.Diluc)
    local questNpcActor2 = self:GetQuestNpcActor(qinData.Qin)
    local questNpcActor3 = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    if v ~= nil then
        v:Destroy(false)
    end

    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    if questNpcActor3 ~= nil then
        questNpcActor3:DestroyWithDisappear(false)
    end
end

function Quest389:OnSubStart38901(arg1)
    print("38901 start:...")
end

function Quest389:OnSubStart38902(arg1)
    print("38902 start:...")
end

function Quest389:OnSubStart38903(arg1)
    print("38903 start:...")
end

function Quest389:OnSubStart38904(arg1)
    print("38904 start:...")
end

function Quest389:OnSubStart38905(arg1)
    print("38905 start:...")
end

function Quest389:OnSubStart38906(arg1)
    print("38906 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 38909)
        actor:FinishQuestID(false, 38907)
        actor:FinishQuestID(false, 38904)
        actor:FinishQuestID(false, 38908)
    end
end

function Quest389:OnSubFinish38901(arg1)
    print("38901 finish:...")
    self:NarratorOnlyTaskLegacy(clientData.NarratorData.Story1)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q389Target1").pos, 0, 3, true)
end

function Quest389:OnSubFinish38902(arg1)
    print("38902 Finish:...")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, wendyData.WendyID)
        arg1_2:CreateQuestNpc(arg1, dilucData.DilucID)
        arg1_2:CreateQuestNpc(arg1, qinData.QinID)
        arg1_2:RequestInteraction(wendyData.Wendy)
    end, nil, questNpcCreateTask)
end

function Quest389:OnSubFinish38903(arg1)
    print("38903 finish:...")
    self:ActionSafeCall(self.DestroyNPC)
    self:ActionSafeCall(function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q389Target3").pos, 0, 0.1, true)
        arg1:CallDelay(5, function(arg1)
            arg1:NarratorOnlyTaskLegacy(clientData.NarratorData.Story2)
        end)
    end)
end

function Quest389:OnSubFinish38904(arg1)
    print("38904 finish:...")
    self:NarratorOnlyTaskLegacy(clientData.NarratorData.Story3)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q389Target2").pos, 0, 2, true)
end

function Quest389:OnSubFinish38905(arg1)
    print("38905 finish:...")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, wendyData.WendyID)
        arg1_2:CreateQuestNpc(arg1, dilucData.DilucID)
        arg1_2:CreateQuestNpc(arg1, qinData.QinID)
        arg1_2:RequestInteraction(wendyData.Wendy)
    end, nil, questNpcCreateTask)
end

function Quest389:OnSubFinish38906(arg1)
    print("38906 finish:...")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest389:Start() end
function Quest389:OnDestroy() end
return Quest389

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21007 = class("Quest21007", QuestActorProxy)
Quest21007.defaultAlias = "Quest21007"
local clientData
local shareData
local subIDs
local npc
local v
local npc2
local npc3
local npc4
local npc5
local npc6
local npc7

function Quest21007:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    subIDs = clientData.SubIDs
    npc = shareData.QuestData["2100711"].npcs[1]
    v = shareData.QuestData["2100712"].npcs[1]
    npc2 = shareData.QuestData["2100713"].npcs[1]
    npc3 = shareData.QuestData["2100714"].npcs[1]
    npc4 = shareData.QuestData["2100710"].npcs[1]
    npc5 = shareData.QuestData["2100710"].npcs[2]
    npc6 = shareData.QuestData["2100710"].npcs[3]
    npc7 = shareData.QuestData["2100710"].npcs[4]
end

function Quest21007:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2100700"] = self.OnSubStart2100700
    self.subStartHandlers["2100701"] = self.OnSubStart2100701
    self.subStartHandlers["2100702"] = self.OnSubStart2100702
    self.subStartHandlers["2100703"] = self.OnSubStart2100703
    self.subStartHandlers["2100704"] = self.OnSubStart2100704
    self.subStartHandlers["2100705"] = self.OnSubStart2100705
    self.subStartHandlers["2100706"] = self.OnSubStart2100706
    self.subStartHandlers["2100707"] = self.OnSubStart2100707
    self.subStartHandlers["2100708"] = self.OnSubStart2100708
    self.subStartHandlers["2100709"] = self.OnSubStart2100709
    self.subStartHandlers["2100710"] = self.OnSubStart2100710
    self.subStartHandlers["2100711"] = self.OnSubStart2100711
    self.subStartHandlers["2100712"] = self.OnSubStart2100712
    self.subStartHandlers["2100713"] = self.OnSubStart2100713
    self.subStartHandlers["2100714"] = self.OnSubStart2100714
    self.subStartHandlers["2100715"] = self.OnSubStart2100715
end

function Quest21007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2100700"] = self.OnSubFinish2100700
    self.subFinishHandlers["2100701"] = self.OnSubFinish2100701
    self.subFinishHandlers["2100702"] = self.OnSubFinish2100702
    self.subFinishHandlers["2100703"] = self.OnSubFinish2100703
    self.subFinishHandlers["2100704"] = self.OnSubFinish2100704
    self.subFinishHandlers["2100705"] = self.OnSubFinish2100705
    self.subFinishHandlers["2100706"] = self.OnSubFinish2100706
    self.subFinishHandlers["2100707"] = self.OnSubFinish2100707
    self.subFinishHandlers["2100708"] = self.OnSubFinish2100708
    self.subFinishHandlers["2100709"] = self.OnSubFinish2100709
    self.subFinishHandlers["2100710"] = self.OnSubFinish2100710
    self.subFinishHandlers["2100711"] = self.OnSubFinish2100711
    self.subFinishHandlers["2100712"] = self.OnSubFinish2100712
    self.subFinishHandlers["2100713"] = self.OnSubFinish2100713
    self.subFinishHandlers["2100714"] = self.OnSubFinish2100714
    self.subFinishHandlers["2100715"] = self.OnSubFinish2100715
end

function Quest21007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2100700"] = self.OnSubFailed2100700
    self.subFailedHandlers["2100701"] = self.OnSubFailed2100701
    self.subFailedHandlers["2100702"] = self.OnSubFailed2100702
    self.subFailedHandlers["2100703"] = self.OnSubFailed2100703
    self.subFailedHandlers["2100704"] = self.OnSubFailed2100704
    self.subFailedHandlers["2100705"] = self.OnSubFailed2100705
    self.subFailedHandlers["2100706"] = self.OnSubFailed2100706
    self.subFailedHandlers["2100707"] = self.OnSubFailed2100707
    self.subFailedHandlers["2100708"] = self.OnSubFailed2100708
    self.subFailedHandlers["2100709"] = self.OnSubFailed2100709
    self.subFailedHandlers["2100710"] = self.OnSubFailed2100710
    self.subFailedHandlers["2100711"] = self.OnSubFailed2100711
    self.subFailedHandlers["2100712"] = self.OnSubFailed2100712
    self.subFailedHandlers["2100713"] = self.OnSubFailed2100713
    self.subFailedHandlers["2100714"] = self.OnSubFailed2100714
    self.subFailedHandlers["2100715"] = self.OnSubFailed2100715
end

function Quest21007:OnSubStart2100701(arg1) end

function Quest21007:OnSubFinish2100701(arg1)
    print("2100701 finish")
    self:NarratorOnlyTask(clientData.NarratorFlow1)
end

function Quest21007:OnSubFailed2100701(arg1) end
function Quest21007:OnSubStart2100702(arg1) end

function Quest21007:OnSubFinish2100702(arg1)
    self:NarratorOnlyTask(clientData.NarratorFlow3)
end

function Quest21007:OnSubFailed2100702(arg1) end
function Quest21007:OnSubStart2100703(arg1) end
function Quest21007:OnSubFinish2100703(arg1) end
function Quest21007:OnSubFailed2100703(arg1) end
function Quest21007:OnSubStart2100704(arg1) end
function Quest21007:OnSubFinish2100704(arg1) end
function Quest21007:OnSubFailed2100704(arg1) end
function Quest21007:OnSubStart2100705(arg1) end
function Quest21007:OnSubFinish2100705(arg1) end
function Quest21007:OnSubFailed2100705(arg1) end
function Quest21007:OnSubStart2100706(arg1) end
function Quest21007:OnSubFinish2100706(arg1) end
function Quest21007:OnSubFailed2100706(arg1) end
function Quest21007:OnSubStart2100707(arg1) end

function Quest21007:OnSubFinish2100707(arg1)
    self:NarratorOnlyTask(clientData.NarratorFlow4)
end

function Quest21007:OnSubFailed2100707(arg1) end

function Quest21007:OnSubStart2100711(arg1)
    self:CreateQuestNpc(arg1, npc.id, 1)
    self:GetQuestNpcActor(npc.alias):PerformDither(true, 2)
    self:RequestInteraction(npc.alias)
end

function Quest21007:OnSubFinish2100711(arg1)
    print("2100711_finish")
    self:GetQuestNpcActor(npc.alias):PerformDither(false, 2)
    self:CallDelay(1, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActor(npc.alias, 1)
        end)
    end)
end

function Quest21007:OnSubFailed2100711(arg1) end

function Quest21007:OnSubStart2100712(arg1)
    self:CreateQuestNpc(arg1, v.id, 1)
    self:GetQuestNpcActor(v.alias):PerformDither(true, 2)
    self:RequestInteraction(v.alias)
end

function Quest21007:OnSubFinish2100712(arg1)
    self:GetQuestNpcActor(v.alias):PerformDither(false, 2)
    self:CallDelay(1, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActor(v.alias, 1)
        end)
    end)
end

function Quest21007:OnSubFailed2100712(arg1) end

function Quest21007:OnSubStart2100713(arg1)
    self:CreateQuestNpc(arg1, npc2.id, 1)
    self:GetQuestNpcActor(npc2.alias):PerformDither(true, 2)
    self:RequestInteraction(npc2.alias)
end

function Quest21007:OnSubFinish2100713(arg1)
    self:GetQuestNpcActor(npc2.alias):PerformDither(false, 2)
    self:CallDelay(1, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActor(npc2.alias, 1)
        end)
    end)
end

function Quest21007:OnSubFailed2100713(arg1) end

function Quest21007:OnSubStart2100714(arg1)
    self:CreateQuestNpc(arg1, npc3.id, 1)
    self:GetQuestNpcActor(npc3.alias):PerformDither(true, 2)
    self:RequestInteraction(npc3.alias)
end

function Quest21007:OnSubFinish2100714(arg1)
    self:GetQuestNpcActor(npc3.alias):PerformDither(false, 2)
    self:CallDelay(1, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActor(npc3.alias, 1)
        end)
    end)
end

function Quest21007:OnSubFailed2100714(arg1) end

function Quest21007:OnSubStart2100710(arg1)
    self:CreateQuestNpc(arg1, npc4.id, 1)
    self:GetQuestNpcActor(npc4.alias):PerformDither(true, 2)
    self:CreateQuestNpc(arg1, npc5.id, 2)
    self:GetQuestNpcActor(npc5.alias):PerformDither(true, 2)
    self:CreateQuestNpc(arg1, npc6.id, 3)
    self:GetQuestNpcActor(npc6.alias):PerformDither(true, 2)
    self:CreateQuestNpc(arg1, npc7.id, 4)
    self:GetQuestNpcActor(npc7.alias):PerformDither(true, 2)
    self:RequestInteraction(npc5.alias)
end

function Quest21007:OnSubFinish2100710(arg1)
    self.GetQuestNpcActor(self, npc4.alias):PerformDither(false, 2)
    self.GetQuestNpcActor(self, npc5.alias):PerformDither(false, 2)
    self.GetQuestNpcActor(self, npc6.alias):PerformDither(false, 2)
    self.GetQuestNpcActor(self, npc7.alias):PerformDither(false, 2)
    self.CallDelay(self, 1, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActor(npc4.alias, 1)
            arg1:DestroyQuestNpcActor(npc5.alias, 2)
            arg1:DestroyQuestNpcActor(npc6.alias, 3)
            arg1:DestroyQuestNpcActor(npc7.alias, 4)
        end)
    end)

    self.NarratorOnlyTask(self, clientData.NarratorFlow2)
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest21007:OnSubFailed2100710(arg1) end
function Quest21007:Start() end
function Quest21007:OnDestroy() end
return Quest21007

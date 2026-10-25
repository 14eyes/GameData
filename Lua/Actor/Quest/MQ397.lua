require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest397 = class("Quest397", QuestActorProxy)
Quest397.defaultAlias = "Quest397"
local clientData
local playerData
local wendyData
local dilucData
local qinData
local paimonData

function Quest397:OnDataLoaded()
    clientData = self.clientData
    playerData = clientData.PlayerData
    wendyData = clientData.WendyData
    dilucData = clientData.DilucData
    qinData = clientData.QinData
    paimonData = clientData.PaimonData
end

function Quest397:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["39701"] = self.OnSubStart39701
    self.subStartHandlers["39702"] = self.OnSubStart39702
    self.subStartHandlers["39703"] = self.OnSubStart39703
    self.subStartHandlers["39704"] = self.OnSubStart39704
end

function Quest397:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["39701"] = self.OnSubFinish39701
    self.subFinishHandlers["39702"] = self.OnSubFinish39702
    self.subFinishHandlers["39703"] = self.OnSubFinish39703
    self.subFinishHandlers["39704"] = self.OnSubFinish39704
end

function Quest397:DestroyNPC()
    local questNpcActor = self:GetQuestNpcActor(wendyData.Wendy)
    local v = self:GetQuestNpcActor(qinData.Qin)
    local questNpcActor2 = self:GetQuestNpcActor(dilucData.Diluc)
    local questNpcActor3 = self:GetQuestNpcActor(paimonData.Paimon)
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

function Quest397:OnSubStart39701(arg1)
    print("39701 start ")
end

function Quest397:OnSubStart39702(arg1)
    print("39702 start:...")
    self:CreateQuestNpc(arg1, wendyData.WendyID)
    self:CreateQuestNpc(arg1, dilucData.DilucID)
    self:CreateQuestNpc(arg1, qinData.QinID)
end

function Quest397:OnSubStart39703(arg1)
    print("39703 start:...")
end

function Quest397:OnSubStart39704(arg1)
    print("39704 start:...")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {wendyData.Wendy, dilucData.Diluc, qinData.Qin, paimonData.Paimon})
    self.CallDelay(self, 2, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, wendyData.WendyID)
            arg1_2:CreateQuestNpc(arg1, dilucData.DilucID)
            arg1_2:CreateQuestNpc(arg1, qinData.QinID)
            arg1_2:RequestInteraction(wendyData.Wendy)
        end, nil, questNpcCreateTask)
    end)
end

function Quest397:OnSubFinish39701(arg1)
    print("OnFinished 39701")
end

function Quest397:OnSubFinish39702(arg1)
    print("OnFinished 39702")
    self:ActionSafeCall(self.DestroyNPC)
end

function Quest397:OnSubFinish39703(arg1)
    print("OnFinished 39703")
end

function Quest397:OnSubFinish39704(arg1)
    print("OnFinished 39704")
    self:ActionSafeCall(self.DestroyNPC)
end

function Quest397:Start() end
function Quest397:OnDestroy() end
return Quest397

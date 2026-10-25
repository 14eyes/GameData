require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest396 = class("Quest396", QuestActorProxy)
Quest396.defaultAlias = "Quest396"
local clientData
local wendyData
local barbaraData
local qinData

function Quest396:OnDataLoaded()
    clientData = self.clientData
    wendyData = clientData.WendyData
    barbaraData = clientData.BarbaraData
    qinData = clientData.QinData
end

function Quest396:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["39601"] = self.OnSubStart39601
    self.subStartHandlers["39602"] = self.OnSubStart39602
    self.subStartHandlers["39603"] = self.OnSubStart39603
    self.subStartHandlers["39604"] = self.OnSubStart39604
    self.subStartHandlers["39605"] = self.OnSubStart39605
    self.subStartHandlers["39606"] = self.OnSubStart39606
end

function Quest396:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["39601"] = self.OnSubFinish39601
    self.subFinishHandlers["39602"] = self.OnSubFinish39602
    self.subFinishHandlers["39603"] = self.OnSubFinish39603
    self.subFinishHandlers["39604"] = self.OnSubFinish39604
    self.subFinishHandlers["39605"] = self.OnSubFinish39605
    self.subFinishHandlers["39606"] = self.OnSubFinish39606
end

function Quest396:OnSubStart39601(arg1)
    print("39601 start ")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest396:OnSubStart39602(arg1)
    print("39602 start:...")
    self:CreateQuestNpc(arg1, wendyData.WendyID)
    self:CreateQuestNpc(arg1, barbaraData.BarbaraID)
    self:CreateQuestNpc(arg1, qinData.QinID)
end

function Quest396:OnSubStart39604(arg1)
    print("39606 start:...")
    self:CreateQuestNpc(arg1, wendyData.WendyID)
    local questNpcActor = self:GetQuestNpcActor(wendyData.Wendy)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(1130)
    end
end

function Quest396:OnSubFinish39601(arg1)
    print("OnFinished 39601")
end

function Quest396:OnSubFinish39602(arg1)
    print("OnFinished 39602")
    self:ActionSafeCall(function(arg1_2)
        local questNpcActor = arg1_2:GetQuestNpcActor(barbaraData.Barbara)
        if questNpcActor ~= nil then
            questNpcActor:ClearFollowTask()
            questNpcActor:Destroy(false)
        end

        local v = arg1_2:GetQuestNpcActor(qinData.Qin)
        if v ~= nil then
            v:ClearFollowTask()
            v:Destroy(false)
        end

        arg1_2:TransmitPlayerById(arg1, 1)
    end)
end

function Quest396:OnSubFinish39604(arg1)
    print("OnFinished 39604")
    self:SetNavigationByMainId(70681, true)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(wendyData.Wendy)
        local v = arg1:GetQuestNpcActor("Paimon")
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest396:OnSubFinish39605(arg1)
    print("OnFinished 39605")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest396:OnSubFinish39606(arg1)
    print("OnFinished 39606")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2.PlayCutsceneIndex(arg1_2, 3960601, function()
            arg1_2:CreateQuestNpc(arg1, barbaraData.BarbaraID, 1)
            arg1_2:RequestInteraction(barbaraData.Barbara)
        end, nil, nil, true)
    end)
end

function Quest396:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk39606:Finishi Quest 39607")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 39607)
        end
    end
end

function Quest396:Start() end
function Quest396:OnDestroy() end
return Quest396

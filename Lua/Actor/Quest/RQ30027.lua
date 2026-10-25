require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30027 = class("Quest30027", QuestActorProxy)
Quest30027.defaultAlias = "Quest30027"
local subIDs = require("Quest/Client/Q30027ClientConfig").SubIDs

function Quest30027:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3002701"] = self.OnSubStart3002701
    self.subStartHandlers["3002702"] = self.OnSubStart3002702
    self.subStartHandlers["3002703"] = self.OnSubStart3002703
end

function Quest30027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3002701"] = self.OnSubFinish3002701
    self.subFinishHandlers["3002702"] = self.OnSubFinish3002702
    self.subFinishHandlers["3002703"] = self.OnSubFinish3002703
end

function Quest30027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3002701"] = self.OnSubFailed3002701
    self.subFailedHandlers["3002702"] = self.OnSubFailed3002702
    self.subFailedHandlers["3002703"] = self.OnSubFailed3002703
end

function Quest30027:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos1}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 100 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30027***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30027:OnSubStart3002701(arg1)
    print("OnSubStart3002701")
    self:CreateQuestNpc(arg1, 0, 1)
    self:CallDelay(60, self.QuestDestroy)
end

function Quest30027:OnSubFinish3002701(arg1)
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30027:OnSubStart3002702(arg1)
    print("OnSubStart3002702")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor("{QuestNpcID}")
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStyle(1190, true, nil, true, true)
        end
    end)
end

function Quest30027:OnSubFinish3002702(arg1)
    print("OnSubFinish3002702")
    local questNpcActor = self:GetQuestNpcActor("{QuestNpcID}")
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
end

function Quest30027:OnSubFinish3002703(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30027:Start()
    print("Start")
end

function Quest30027:OnDestroy()
    print("OnDestroy")
end

return Quest30027

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30031 = class("Quest30031", QuestActorProxy)
Quest30031.defaultAlias = "Quest30031"
local subIDs = require("Quest/Client/Q30031ClientConfig").SubIDs

function Quest30031:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3003101"] = self.OnSubStart3003101
    self.subStartHandlers["3003102"] = self.OnSubStart3003102
    self.subStartHandlers["3003103"] = self.OnSubStart3003103
end

function Quest30031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3003101"] = self.OnSubFinish3003101
    self.subFinishHandlers["3003102"] = self.OnSubFinish3003102
    self.subFinishHandlers["3003103"] = self.OnSubFinish3003103
end

function Quest30031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3003101"] = self.OnSubFailed3003101
    self.subFailedHandlers["3003102"] = self.OnSubFailed3003102
    self.subFailedHandlers["3003103"] = self.OnSubFailed3003103
end

function Quest30031:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos1}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 100 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30031***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30031:OnSubStart3003101(arg1)
    print("OnSubStart3003101")
    self:CreateQuestNpc(arg1, 0, 1)
    self:CallDelay(60, self.QuestDestroy)
end

function Quest30031:OnSubFinish3003101(arg1)
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30031:OnSubStart3003102(arg1)
    print("OnSubStart3003102")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor("{QuestNpcID}")
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStyle(1190, true, nil, true, true)
        end
    end)
end

function Quest30031:OnSubFinish3003102(arg1)
    print("OnSubFinish3003102")
    local questNpcActor = self:GetQuestNpcActor("{QuestNpcID}")
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
end

function Quest30031:OnSubFinish3003103(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30031:Start()
    print("Start")
end

function Quest30031:OnDestroy()
    print("OnDestroy")
end

return Quest30031

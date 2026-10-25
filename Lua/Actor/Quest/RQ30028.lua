require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30028 = class("Quest30028", QuestActorProxy)
Quest30028.defaultAlias = "Quest30028"
local Q30028ClientConfig = require("Quest/Client/Q30028ClientConfig")

local subIDs = Q30028ClientConfig.SubIDs
local bubbleState = Q30028ClientConfig.BubbleState

function Quest30028:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3002801"] = self.OnSubStart3002801
    self.subStartHandlers["3002802"] = self.OnSubStart3002802
    self.subStartHandlers["3002803"] = self.OnSubStart3002803
    self.subStartHandlers["3002804"] = self.OnSubStart3002804
    self.subStartHandlers["3002805"] = self.OnSubStart3002805
    self.subStartHandlers["3002806"] = self.OnSubStart3002806
    self.subStartHandlers["3002807"] = self.OnSubStart3002807
    self.subStartHandlers["3002808"] = self.OnSubStart3002808
    self.subStartHandlers["3002809"] = self.OnSubStart3002809
    self.subStartHandlers["3002810"] = self.OnSubStart3002810
    self.subStartHandlers["3002811"] = self.OnSubStart3002811
end

function Quest30028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3002801"] = self.OnSubFinish3002801
    self.subFinishHandlers["3002802"] = self.OnSubFinish3002802
    self.subFinishHandlers["3002803"] = self.OnSubFinish3002803
    self.subFinishHandlers["3002804"] = self.OnSubFinish3002804
    self.subFinishHandlers["3002805"] = self.OnSubFinish3002805
    self.subFinishHandlers["3002806"] = self.OnSubFinish3002806
    self.subFinishHandlers["3002807"] = self.OnSubFinish3002807
    self.subFinishHandlers["3002808"] = self.OnSubFinish3002808
    self.subFinishHandlers["3002809"] = self.OnSubFinish3002809
    self.subFinishHandlers["3002810"] = self.OnSubFinish3002810
    self.subFinishHandlers["3002811"] = self.OnSubFinish3002811
end

function Quest30028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3002801"] = self.OnSubFailed3002801
    self.subFailedHandlers["3002802"] = self.OnSubFailed3002802
    self.subFailedHandlers["3002803"] = self.OnSubFailed3002803
    self.subFailedHandlers["3002804"] = self.OnSubFailed3002804
    self.subFailedHandlers["3002805"] = self.OnSubFailed3002805
    self.subFailedHandlers["3002806"] = self.OnSubFailed3002806
    self.subFailedHandlers["3002807"] = self.OnSubFailed3002807
    self.subFailedHandlers["3002808"] = self.OnSubFailed3002808
    self.subFailedHandlers["3002809"] = self.OnSubFailed3002809
    self.subFailedHandlers["3002810"] = self.OnSubFailed3002810
    self.subFailedHandlers["3002811"] = self.OnSubFailed3002811
end

function Quest30028:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 100 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30028***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30028:OnSubStart3002801(arg1)
    print("OnSubStart3002801")
    self:CreateQuestNpc(arg1, 0, 1)
    self:CallDelay(60, self.QuestDestroy)
end

function Quest30028:OnSubFinish3002802(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:UnCallFunc(arg1.QuestDestroy)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30028:OnSubFailed3002802(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:UnCallFunc(arg1.QuestDestroy)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30028:Start()
    print("Start")
end

function Quest30028:OnDestroy()
    print("OnDestroy")
end

return Quest30028

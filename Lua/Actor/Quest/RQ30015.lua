require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30015 = class("Quest30015", QuestActorProxy)
Quest30015.defaultAlias = "Quest30015"
local subIDs = require("Quest/Client/Q30015ClientConfig").SubIDs
Quest30015.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {1160}}}

function Quest30015:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3001501"] = self.OnSubStart3001501
    self.subStartHandlers["3001502"] = self.OnSubStart3001502
    self.subStartHandlers["3001503"] = self.OnSubStart3001503
    self.subStartHandlers["3001504"] = self.OnSubStart3001504
end

function Quest30015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3001501"] = self.OnSubFinish3001501
    self.subFinishHandlers["3001502"] = self.OnSubFinish3001502
    self.subFinishHandlers["3001503"] = self.OnSubFinish3001503
    self.subFinishHandlers["3001504"] = self.OnSubFinish3001504
end

function Quest30015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3001501"] = self.OnSubFailed3001501
    self.subFailedHandlers["3001502"] = self.OnSubFailed3001502
    self.subFailedHandlers["3001503"] = self.OnSubFailed3001503
    self.subFailedHandlers["3001504"] = self.OnSubFailed3001504
end

function Quest30015:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 50 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30015***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30015:OnSubStart3001501(arg1)
    print("3001501 start:CreatNPC")
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30015:OnSubStart3001502(arg1)
    print("3001502 start:......")
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30015:OnSubFinish3001502(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30015:Start()
    print("********Quest30015 Start")
end

function Quest30015:OnDestroy()
    print("********Quest30015 OnDestroy")
end

return Quest30015

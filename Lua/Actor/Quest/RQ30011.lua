require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30011 = class("Quest30011", QuestActorProxy)
Quest30011.defaultAlias = "Quest30011"
local subIDs = require("Quest/Client/Q30011ClientConfig").SubIDs
Quest30011.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {1160}}}

function Quest30011:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3001101"] = self.OnSubStart3001101
    self.subStartHandlers["3001102"] = self.OnSubStart3001102
    self.subStartHandlers["3001103"] = self.OnSubStart3001103
    self.subStartHandlers["3001104"] = self.OnSubStart3001104
end

function Quest30011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3001101"] = self.OnSubFinish3001101
    self.subFinishHandlers["3001102"] = self.OnSubFinish3001102
    self.subFinishHandlers["3001103"] = self.OnSubFinish3001103
    self.subFinishHandlers["3001104"] = self.OnSubFinish3001104
end

function Quest30011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3001101"] = self.OnSubFailed3001101
    self.subFailedHandlers["3001102"] = self.OnSubFailed3001102
    self.subFailedHandlers["3001103"] = self.OnSubFailed3001103
    self.subFailedHandlers["3001104"] = self.OnSubFailed3001104
end

function Quest30011:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 50 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30011***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30011:OnSubStart3001101(arg1)
    print("3001101 start:CreatNPC")
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30011:OnSubStart3001102(arg1)
    print("3001102 start:......")
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30011:OnSubFinish3001102(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30011:Start()
    print("********Quest30011 Start")
end

function Quest30011:OnDestroy()
    print("********Quest30011 OnDestroy")
end

return Quest30011

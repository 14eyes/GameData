require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30012 = class("Quest30012", QuestActorProxy)
Quest30012.defaultAlias = "Quest30012"
local subIDs = require("Quest/Client/Q30012ClientConfig").SubIDs
Quest30012.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {1160}}}

function Quest30012:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3001201"] = self.OnSubStart3001201
    self.subStartHandlers["3001202"] = self.OnSubStart3001202
    self.subStartHandlers["3001203"] = self.OnSubStart3001203
    self.subStartHandlers["3001204"] = self.OnSubStart3001204
end

function Quest30012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3001201"] = self.OnSubFinish3001201
    self.subFinishHandlers["3001202"] = self.OnSubFinish3001202
    self.subFinishHandlers["3001203"] = self.OnSubFinish3001203
    self.subFinishHandlers["3001204"] = self.OnSubFinish3001204
end

function Quest30012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3001201"] = self.OnSubFailed3001201
    self.subFailedHandlers["3001202"] = self.OnSubFailed3001202
    self.subFailedHandlers["3001203"] = self.OnSubFailed3001203
    self.subFailedHandlers["3001204"] = self.OnSubFailed3001204
end

function Quest30012:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 50 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30012***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30012:OnSubStart3001201(arg1)
    print("3001201 start:CreatNPC")
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30012:OnSubStart3001202(arg1)
    print("3001202 start:......")
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30012:OnSubFinish3001202(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30012:Start()
    print("********Quest30012 Start")
end

function Quest30012:OnDestroy()
    print("********Quest30012 OnDestroy")
end

return Quest30012

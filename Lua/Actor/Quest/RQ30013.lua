require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30013 = class("Quest30013", QuestActorProxy)
Quest30013.defaultAlias = "Quest30013"
local subIDs = require("Quest/Client/Q30013ClientConfig").SubIDs
Quest30013.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {1160}}}

function Quest30013:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3001301"] = self.OnSubStart3001301
    self.subStartHandlers["3001302"] = self.OnSubStart3001302
    self.subStartHandlers["3001303"] = self.OnSubStart3001303
    self.subStartHandlers["3001304"] = self.OnSubStart3001304
end

function Quest30013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3001301"] = self.OnSubFinish3001301
    self.subFinishHandlers["3001302"] = self.OnSubFinish3001302
    self.subFinishHandlers["3001303"] = self.OnSubFinish3001303
    self.subFinishHandlers["3001304"] = self.OnSubFinish3001304
end

function Quest30013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3001301"] = self.OnSubFailed3001301
    self.subFailedHandlers["3001302"] = self.OnSubFailed3001302
    self.subFailedHandlers["3001303"] = self.OnSubFailed3001303
    self.subFailedHandlers["3001304"] = self.OnSubFailed3001304
end

function Quest30013:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 50 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30013***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30013:OnSubStart3001301(arg1)
    print("3001301 start:CreatNPC")
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30013:OnSubStart3001302(arg1)
    print("3001302 start:......")
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30013:OnSubFinish3001302(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30013:Start()
    print("********Quest30013 Start")
end

function Quest30013:OnDestroy()
    print("********Quest30013 OnDestroy")
end

return Quest30013

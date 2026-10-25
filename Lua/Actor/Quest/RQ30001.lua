require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30001 = class("Quest30001", QuestActorProxy)
Quest30001.defaultAlias = "Quest30001"
local Q30001ClientConfig = require("Quest/Client/Q30001ClientConfig")

local subIDs = Q30001ClientConfig.SubIDs
local bubbleState = Q30001ClientConfig.BubbleState
Quest30001.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {4190}}}

function Quest30001:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3000101"] = self.OnSubStart3000101
    self.subStartHandlers["3000102"] = self.OnSubStart3000102
    self.subStartHandlers["3000103"] = self.OnSubStart3000103
    self.subStartHandlers["3000104"] = self.OnSubStart3000104
end

function Quest30001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3000101"] = self.OnSubFinish3000101
    self.subFinishHandlers["3000102"] = self.OnSubFinish3000102
    self.subFinishHandlers["3000103"] = self.OnSubFinish3000103
    self.subFinishHandlers["3000104"] = self.OnSubFinish3000104
end

function Quest30001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3000101"] = self.OnSubFailed3000101
    self.subFailedHandlers["3000102"] = self.OnSubFailed3000102
    self.subFailedHandlers["3000103"] = self.OnSubFailed3000103
    self.subFailedHandlers["3000104"] = self.OnSubFailed3000104
end

function Quest30001:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 50 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        self:UnCallFunc(self.NPCShowBubble)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30001***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30001:NPCShowBubble(arg1)
    print("NPC show bubble")
    local num = tonumber(self:GetRandomFactorValue("{QuestNpcID}"))
    local n = math.random(1, 2)
    if n == 1 then
        self:TriggerNpcSpeechBubble(num, 300010106)
    elseif n == 2 then
        self:TriggerNpcSpeechBubble(num, 300010107)
    end

    self:CallDelay(3, function(arg1)
        arg1:ClearNpcSpeechBubble(num)
    end)

    if bubbleState == true then
        self:CallDelay(4, self.NPCShowBubble)
    end
end

function Quest30001:OnSubStart3000101(arg1)
    print("3000101 start:CreatNPC")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30001:OnSubStart3000102(arg1)
    bubbleState = false
    local str = "{QuestNpcID}"
    local num = tonumber(self:GetRandomFactorValue(str))
    local questNpcActor = self:GetQuestNpcActor(str)
    if questNpcActor ~= nil then
        self:ClearNpcSpeechBubble(num)
        questNpcActor:DoFreeStateTrigger()
        questNpcActor:Standby()
    end

    self:UnCallFunc(self.NPCShowBubble)
end

function Quest30001:OnSubFinish3000102(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30001:Start()
    print("********Quest30001 Start")
end

function Quest30001:OnDestroy()
    print("********Quest30001 OnDestroy")
end

return Quest30001

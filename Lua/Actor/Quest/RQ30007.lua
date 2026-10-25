require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30007 = class("Quest30007", QuestActorProxy)
Quest30007.defaultAlias = "Quest30007"
local Q30007ClientConfig = require("Quest/Client/Q30007ClientConfig")

local subIDs = Q30007ClientConfig.SubIDs
local bubbleState = Q30007ClientConfig.BubbleState
Quest30007.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {4190}}}

function Quest30007:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3000701"] = self.OnSubStart3000701
    self.subStartHandlers["3000702"] = self.OnSubStart3000702
    self.subStartHandlers["3000703"] = self.OnSubStart3000703
    self.subStartHandlers["3000704"] = self.OnSubStart3000704
    self.subStartHandlers["3000705"] = self.OnSubStart3000705
end

function Quest30007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3000701"] = self.OnSubFinish3000701
    self.subFinishHandlers["3000702"] = self.OnSubFinish3000702
    self.subFinishHandlers["3000703"] = self.OnSubFinish3000703
    self.subFinishHandlers["3000704"] = self.OnSubFinish3000704
    self.subFinishHandlers["3000705"] = self.OnSubFinish3000705
end

function Quest30007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3000701"] = self.OnSubFailed3000701
    self.subFailedHandlers["3000702"] = self.OnSubFailed3000702
    self.subFailedHandlers["3000703"] = self.OnSubFailed3000703
    self.subFailedHandlers["3000704"] = self.OnSubFailed3000704
    self.subFailedHandlers["3000705"] = self.OnSubFailed3000705
end

function Quest30007:QuestDestroy(arg1)
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
            print("********30007***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30007:NPCShowBubble(arg1)
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

function Quest30007:OnSubStart3000701(arg1)
    print("3000701 start:CreatNPC")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30007:OnSubStart3000702(arg1)
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

function Quest30007:OnSubFinish3000702(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30007:Start()
    print("********Quest30007 Start")
end

function Quest30007:OnDestroy()
    print("********Quest30007 OnDestroy")
end

return Quest30007

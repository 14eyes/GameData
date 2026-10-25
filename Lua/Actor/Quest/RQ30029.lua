require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30029 = class("Quest30029", QuestActorProxy)
Quest30029.defaultAlias = "Quest30029"
local Q30029ClientConfig = require("Quest/Client/Q30029ClientConfig")

local subIDs = Q30029ClientConfig.SubIDs
local bubbleState = Q30029ClientConfig.BubbleState

function Quest30029:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3002901"] = self.OnSubStart3002901
    self.subStartHandlers["3002902"] = self.OnSubStart3002902
end

function Quest30029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3002901"] = self.OnSubFinish3002901
    self.subFinishHandlers["3002902"] = self.OnSubFinish3002902
end

function Quest30029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3002901"] = self.OnSubFailed3002901
    self.subFailedHandlers["3002902"] = self.OnSubFailed3002902
end

function Quest30029:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 100 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        self:UnCallFunc(self.NPCShowBubble)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30029***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30029:NPCShowBubble(arg1)
    local num = tonumber(self:GetRandomFactorValue("{QuestNpcID}"))
    local n = math.random(1, 2)
    if n == 1 then
        self:CreateSpeechBubbleTask(num, 300010106, 3, true, 4, 5)
    elseif n == 2 then
        self:CreateSpeechBubbleTask(num, 300010107, 3, true, 4, 5)
    end

    self:CallDelay(3, function(arg1)
        arg1:ClearSpeechBubbleTask()
    end)

    if bubbleState == true then
        self:CallDelay(4, self.NPCShowBubble)
    end
end

function Quest30029:OnSubStart3002901(arg1)
    print("OnSubStart3002901")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4190)
    end

    self:NPCShowBubble()
    self:NarratorOnlyTask({{dialogID = 300290201, duration = 3}, {dialogID = 300290202, duration = 3}})
    self:CallDelay(60, self.QuestDestroy)
end

function Quest30029:OnSubStart3002902(arg1)
    bubbleState = false
    local num = tonumber(self:GetRandomFactorValue("{QuestNpcID}"))
    local questNpcActor = self:GetQuestNpcActor("{QuestNpcID}")
    if questNpcActor ~= nil then
        self:ClearSpeechBubbleTask()
        questNpcActor:DoFreeStateTrigger()
        questNpcActor:Standby()
    end

    self:UnCallFunc(self.NPCShowBubble)
end

function Quest30029:OnSubFinish3002902(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30029:Start()
    print("Start")
end

function Quest30029:OnDestroy()
    print("OnDestroy")
end

return Quest30029

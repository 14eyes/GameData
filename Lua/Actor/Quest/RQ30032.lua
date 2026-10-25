require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30032 = class("Quest30032", QuestActorProxy)
Quest30032.defaultAlias = "Quest30032"
local Q30032ClientConfig = require("Quest/Client/Q30032ClientConfig")

local subIDs = Q30032ClientConfig.SubIDs
local bubbleState = Q30032ClientConfig.BubbleState

function Quest30032:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3003201"] = self.OnSubStart3003201
    self.subStartHandlers["3003202"] = self.OnSubStart3003202
    self.subStartHandlers["3003203"] = self.OnSubStart3003203
    self.subStartHandlers["3003204"] = self.OnSubStart3003204
    self.subStartHandlers["3003205"] = self.OnSubStart3003205
end

function Quest30032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3003201"] = self.OnSubFinish3003201
    self.subFinishHandlers["3003202"] = self.OnSubFinish3003202
    self.subFinishHandlers["3003203"] = self.OnSubFinish3003203
    self.subFinishHandlers["3003204"] = self.OnSubFinish3003204
    self.subFinishHandlers["3003205"] = self.OnSubFinish3003205
end

function Quest30032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3003201"] = self.OnSubFailed3003201
    self.subFailedHandlers["3003202"] = self.OnSubFailed3003202
    self.subFailedHandlers["3003203"] = self.OnSubFailed3003203
    self.subFailedHandlers["3003204"] = self.OnSubFailed3003204
    self.subFailedHandlers["3003205"] = self.OnSubFailed3003205
end

function Quest30032:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos1}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 100 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        self:UnCallFunc(self.NPCShowBubble)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30032***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30032:NPCShowBubble(arg1)
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

function Quest30032:OnSubStart3003201(arg1)
    print("OnSubStart3003201")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4180)
    end

    self:NPCShowBubble()
    self:NarratorOnlyTaskByData({
        narratorId = 300329901,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {3}
    })

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30032:OnSubStart3003202(arg1)
    print("OnSubStart3003202")
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

function Quest30032:OnSubFinish3003202(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30032:OnSubStart3003203(arg1)
    print("OnSubStart3003203")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4180)
    end

    self:NPCShowBubble()
    self:NarratorOnlyTaskByData({
        narratorId = 300329901,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {3}
    })

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30032:OnSubStart3003204(arg1)
    print("OnSubStart3003204")
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

function Quest30032:OnSubFinish3003204(arg1)
    print("OnSubFinish3003204")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30032:OnSubStart3003205(arg1)
    print("OnSubStart3003205")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(1190)
    end

    self:NPCShowBubble()
    self:NarratorOnlyTaskByData({
        narratorId = 300329902,
        pauseLen = 10,
        resumeLen = 5,
        tag = "Story",
        startCheckPause = false,
        durationList = {3}
    })

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30032:OnSubFinish3003205(arg1)
    print("OnSubFinish3003205")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30032:Start()
    print("Start")
end

function Quest30032:OnDestroy()
    print("OnDestroy")
end

return Quest30032

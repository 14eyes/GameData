require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30030 = class("Quest30030", QuestActorProxy)
Quest30030.defaultAlias = "Quest30030"
local Q30030ClientConfig = require("Quest/Client/Q30030ClientConfig")

local subIDs = Q30030ClientConfig.SubIDs
local bubbleState = Q30030ClientConfig.BubbleState

function Quest30030:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3003001"] = self.OnSubStart3003001
    self.subStartHandlers["3003002"] = self.OnSubStart3003002
end

function Quest30030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3003001"] = self.OnSubFinish3003001
    self.subFinishHandlers["3003002"] = self.OnSubFinish3003002
end

function Quest30030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3003001"] = self.OnSubFailed3003001
    self.subFailedHandlers["3003002"] = self.OnSubFailed3003002
end

function Quest30030:QuestDestroy(arg1)
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
            print("********30030***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30030:NPCShowBubble(arg1)
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

function Quest30030:OnSubStart3003001(arg1)
    print("OnSubStart3003001")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4190)
    end

    self:NPCShowBubble()
    self:NarratorOnlyTask({
        {dialogID = 300300201, duration = 3},
        {dialogID = 300300202, duration = 3},
        {dialogID = 300300203, duration = 3}
    })

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30030:OnSubStart3003002(arg1)
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

function Quest30030:OnSubFinish3003002(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30030:Start()
    print("Start")
end

function Quest30030:OnDestroy()
    print("OnDestroy")
end

return Quest30030

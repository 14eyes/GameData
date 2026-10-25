require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30033 = class("Quest30033", QuestActorProxy)
Quest30033.defaultAlias = "Quest30033"
local Q30033ClientConfig = require("Quest/Client/Q30033ClientConfig")

local subIDs = Q30033ClientConfig.SubIDs
local bubbleState = Q30033ClientConfig.BubbleState

function Quest30033:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3003301"] = self.OnSubStart3003301
    self.subStartHandlers["3003302"] = self.OnSubStart3003302
end

function Quest30033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3003301"] = self.OnSubFinish3003301
    self.subFinishHandlers["3003302"] = self.OnSubFinish3003302
end

function Quest30033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3003301"] = self.OnSubFailed3003301
    self.subFailedHandlers["3003302"] = self.OnSubFailed3003302
end

function Quest30033:QuestDestroy(arg1)
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
            print("********30033***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30033:NPCShowBubble(arg1)
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

function Quest30033:OnSubStart3003301(arg1)
    print("OnSubStart3003301")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4190)
    end

    self:NPCShowBubble()
    local this = self
    local narratorOnlyTaskByData = self.NarratorOnlyTaskByData
    local tbl = {narratorId = 300330901, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
    local durationList = {}
    local n = 3
    durationList[1] = 3
    durationList[2] = n
    tbl.durationList = durationList
    narratorOnlyTaskByData(this, tbl)
    self:CallDelay(60, self.QuestDestroy)
end

function Quest30033:OnSubStart3003302(arg1)
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

function Quest30033:OnSubFinish3003302(arg1)
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        arg1:UnCallFunc(arg1.QuestDestroy)
    end)
end

function Quest30033:Start()
    print("Start")
end

function Quest30033:OnDestroy()
    print("OnDestroy")
end

return Quest30033

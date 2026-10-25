require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30002 = class("Quest30002", QuestActorProxy)
Quest30002.defaultAlias = "Quest30002"
local Q30002ClientConfig = require("Quest/Client/Q30002ClientConfig")

local subIDs = Q30002ClientConfig.SubIDs
local bubbleState = Q30002ClientConfig.BubbleState
Quest30002.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {4190}}}

function Quest30002:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3000201"] = self.OnSubStart3000201
    self.subStartHandlers["3000202"] = self.OnSubStart3000202
    self.subStartHandlers["3000203"] = self.OnSubStart3000203
    self.subStartHandlers["3000204"] = self.OnSubStart3000204
end

function Quest30002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3000201"] = self.OnSubFinish3000201
    self.subFinishHandlers["3000202"] = self.OnSubFinish3000202
    self.subFinishHandlers["3000203"] = self.OnSubFinish3000203
    self.subFinishHandlers["3000204"] = self.OnSubFinish3000204
end

function Quest30002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3000201"] = self.OnSubFailed3000201
    self.subFailedHandlers["3000202"] = self.OnSubFailed3000202
    self.subFailedHandlers["3000203"] = self.OnSubFailed3000203
    self.subFailedHandlers["3000204"] = self.OnSubFailed3000204
end

function Quest30002:QuestDestroy(arg1)
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
            print("********30002***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30002:NPCShowBubble(arg1)
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

function Quest30002:OnSubStart3000201(arg1)
    print("3000201 start:CreatNPC")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30002:OnSubStart3000202(arg1)
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

function Quest30002:OnSubFinish3000202(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30002:Start()
    print("********Quest30002 Start")
end

function Quest30002:OnDestroy()
    print("********Quest30002 OnDestroy")
end

return Quest30002

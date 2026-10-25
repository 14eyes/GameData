require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30003 = class("Quest30003", QuestActorProxy)
Quest30003.defaultAlias = "Quest30003"
local Q30003ClientConfig = require("Quest/Client/Q30003ClientConfig")

local subIDs = Q30003ClientConfig.SubIDs
local bubbleState = Q30003ClientConfig.BubbleState
Quest30003.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {4190}}}

function Quest30003:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3000301"] = self.OnSubStart3000301
    self.subStartHandlers["3000302"] = self.OnSubStart3000302
    self.subStartHandlers["3000303"] = self.OnSubStart3000303
    self.subStartHandlers["3000304"] = self.OnSubStart3000304
    self.subStartHandlers["3000305"] = self.OnSubStart3000305
end

function Quest30003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3000301"] = self.OnSubFinish3000301
    self.subFinishHandlers["3000302"] = self.OnSubFinish3000302
    self.subFinishHandlers["3000303"] = self.OnSubFinish3000303
    self.subFinishHandlers["3000304"] = self.OnSubFinish3000304
    self.subFinishHandlers["3000305"] = self.OnSubFinish3000305
end

function Quest30003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3000301"] = self.OnSubFailed3000301
    self.subFailedHandlers["3000302"] = self.OnSubFailed3000302
    self.subFailedHandlers["3000303"] = self.OnSubFailed3000303
    self.subFailedHandlers["3000304"] = self.OnSubFailed3000304
    self.subFailedHandlers["3000305"] = self.OnSubFailed3000305
end

function Quest30003:QuestDestroy(arg1)
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
            print("********30003***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30003:NPCShowBubble(arg1)
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

function Quest30003:OnSubStart3000301(arg1)
    print("3000301 start:CreatNPC")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30003:OnSubStart3000302(arg1)
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

function Quest30003:OnSubFinish3000302(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30003:Start()
    print("********Quest30003 Start")
end

function Quest30003:OnDestroy()
    print("********Quest30003 OnDestroy")
end

return Quest30003

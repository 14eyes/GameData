require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30004 = class("Quest30004", QuestActorProxy)
Quest30004.defaultAlias = "Quest30004"
local Q30004ClientConfig = require("Quest/Client/Q30004ClientConfig")

local subIDs = Q30004ClientConfig.SubIDs
local bubbleState = Q30004ClientConfig.BubbleState
Quest30004.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {4190}}}

function Quest30004:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3000401"] = self.OnSubStart3000401
    self.subStartHandlers["3000402"] = self.OnSubStart3000402
    self.subStartHandlers["3000403"] = self.OnSubStart3000403
    self.subStartHandlers["3000404"] = self.OnSubStart3000404
    self.subStartHandlers["3000405"] = self.OnSubStart3000405
end

function Quest30004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3000401"] = self.OnSubFinish3000401
    self.subFinishHandlers["3000402"] = self.OnSubFinish3000402
    self.subFinishHandlers["3000403"] = self.OnSubFinish3000403
    self.subFinishHandlers["3000404"] = self.OnSubFinish3000404
    self.subFinishHandlers["3000405"] = self.OnSubFinish3000405
end

function Quest30004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3000401"] = self.OnSubFailed3000401
    self.subFailedHandlers["3000402"] = self.OnSubFailed3000402
    self.subFailedHandlers["3000403"] = self.OnSubFailed3000403
    self.subFailedHandlers["3000404"] = self.OnSubFailed3000404
    self.subFailedHandlers["3000405"] = self.OnSubFailed3000405
end

function Quest30004:QuestDestroy(arg1)
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
            print("********30004***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30004:NPCShowBubble(arg1)
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

function Quest30004:OnSubStart3000401(arg1)
    print("3000401 start:CreatNPC")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30004:OnSubStart3000402(arg1)
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

function Quest30004:OnSubFinish3000402(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30004:Start()
    print("********Quest30004 Start")
end

function Quest30004:OnDestroy()
    print("********Quest30004 OnDestroy")
end

return Quest30004

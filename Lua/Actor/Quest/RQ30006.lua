require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30006 = class("Quest30006", QuestActorProxy)
Quest30006.defaultAlias = "Quest30006"
local Q30006ClientConfig = require("Quest/Client/Q30006ClientConfig")

local subIDs = Q30006ClientConfig.SubIDs
local bubbleState = Q30006ClientConfig.BubbleState
Quest30006.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {4190}}}

function Quest30006:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3000601"] = self.OnSubStart3000601
    self.subStartHandlers["3000602"] = self.OnSubStart3000602
    self.subStartHandlers["3000603"] = self.OnSubStart3000603
    self.subStartHandlers["3000604"] = self.OnSubStart3000604
    self.subStartHandlers["3000605"] = self.OnSubStart3000605
end

function Quest30006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3000601"] = self.OnSubFinish3000601
    self.subFinishHandlers["3000602"] = self.OnSubFinish3000602
    self.subFinishHandlers["3000603"] = self.OnSubFinish3000603
    self.subFinishHandlers["3000604"] = self.OnSubFinish3000604
    self.subFinishHandlers["3000605"] = self.OnSubFinish3000605
end

function Quest30006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3000601"] = self.OnSubFailed3000601
    self.subFailedHandlers["3000602"] = self.OnSubFailed3000602
    self.subFailedHandlers["3000603"] = self.OnSubFailed3000603
    self.subFailedHandlers["3000604"] = self.OnSubFailed3000604
    self.subFailedHandlers["3000605"] = self.OnSubFailed3000605
end

function Quest30006:QuestDestroy(arg1)
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
            print("********30006***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30006:NPCShowBubble(arg1)
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

function Quest30006:OnSubStart3000601(arg1)
    print("3000601 start:CreatNPC")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30006:OnSubStart3000602(arg1)
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

function Quest30006:OnSubFinish3000602(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30006:Start()
    print("********Quest30006 Start")
end

function Quest30006:OnDestroy()
    print("********Quest30006 OnDestroy")
end

return Quest30006

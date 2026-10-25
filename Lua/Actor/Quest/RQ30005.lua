require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30005 = class("Quest30005", QuestActorProxy)
Quest30005.defaultAlias = "Quest30005"
local Q30005ClientConfig = require("Quest/Client/Q30005ClientConfig")

local subIDs = Q30005ClientConfig.SubIDs
local bubbleState = Q30005ClientConfig.BubbleState
Quest30005.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {4190}}}

function Quest30005:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3000501"] = self.OnSubStart3000501
    self.subStartHandlers["3000502"] = self.OnSubStart3000502
    self.subStartHandlers["3000503"] = self.OnSubStart3000503
    self.subStartHandlers["3000504"] = self.OnSubStart3000504
    self.subStartHandlers["3000505"] = self.OnSubStart3000505
end

function Quest30005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3000501"] = self.OnSubFinish3000501
    self.subFinishHandlers["3000502"] = self.OnSubFinish3000502
    self.subFinishHandlers["3000503"] = self.OnSubFinish3000503
    self.subFinishHandlers["3000504"] = self.OnSubFinish3000504
    self.subFinishHandlers["3000505"] = self.OnSubFinish3000505
end

function Quest30005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3000501"] = self.OnSubFailed3000501
    self.subFailedHandlers["3000502"] = self.OnSubFailed3000502
    self.subFailedHandlers["3000503"] = self.OnSubFailed3000503
    self.subFailedHandlers["3000504"] = self.OnSubFailed3000504
    self.subFailedHandlers["3000505"] = self.OnSubFailed3000505
end

function Quest30005:QuestDestroy(arg1)
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
            print("********30005***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30005:NPCShowBubble(arg1)
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

function Quest30005:OnSubStart3000501(arg1)
    print("3000501 start:CreatNPC")
    bubbleState = true
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30005:OnSubStart3000502(arg1)
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

function Quest30005:OnSubFinish3000502(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30005:Start()
    print("********Quest30005 Start")
end

function Quest30005:OnDestroy()
    print("********Quest30005 OnDestroy")
end

return Quest30005

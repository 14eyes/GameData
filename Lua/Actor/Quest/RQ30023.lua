require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30023 = class("Quest30023", QuestActorProxy)
Quest30023.defaultAlias = "Quest30023"
local subIDs = require("Quest/Client/Q30023ClientConfig").SubIDs
local NPCUtil = require("Actor/Npc/NPCUtil")

Quest30023.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {1160}}}

function Quest30023:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3002301"] = self.OnSubStart3002301
    self.subStartHandlers["3002302"] = self.OnSubStart3002302
end

function Quest30023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3002301"] = self.OnSubFinish3002301
    self.subFinishHandlers["3002302"] = self.OnSubFinish3002302
end

function Quest30023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3002301"] = self.OnSubFailed3002301
    self.subFailedHandlers["3002302"] = self.OnSubFailed3002302
end

function Quest30023:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 50 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30023***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30023:OnSubStart3002301(arg1)
    print("3002301 start:CreatNPC")
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30023:OnSubStart3002302(arg1)
    print("3002302 start:......")
    self:UnCallFunc(self.QuestDestroy)
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    local str = "Npc" .. self:GetRandomFactorValue("{QuestNpcID3}")
    print("NPC3 alias is " .. str)
    self:NotifyTo(str, NPCUtil.NpcEventType.HIDESELF, true)
end

function Quest30023:OnSubFinish3002301(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30023:OnSubFinish3002302(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID2}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
            local str = "Npc" .. arg1:GetRandomFactorValue("{QuestNpcID3}")
            print("NPC3 alias is " .. str)
            arg1:NotifyTo(str, NPCUtil.NpcEventType.STARTDAILY, true)
        end)
    end)
end

function Quest30023:Start()
    print("********Quest30023 Start")
end

function Quest30023:OnDestroy()
    print("********Quest30023 OnDestroy")
end

return Quest30023

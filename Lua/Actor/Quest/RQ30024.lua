require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30024 = class("Quest30024", QuestActorProxy)
Quest30024.defaultAlias = "Quest30024"
local subIDs = require("Quest/Client/Q30024ClientConfig").SubIDs
local NPCUtil = require("Actor/Npc/NPCUtil")

Quest30024.customFreeStyle = {{npcId = "{QuestNpcID}", freeStyleList = {1160}}}

function Quest30024:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3002401"] = self.OnSubStart3002401
    self.subStartHandlers["3002402"] = self.OnSubStart3002402
end

function Quest30024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3002401"] = self.OnSubFinish3002401
    self.subFinishHandlers["3002402"] = self.OnSubFinish3002402
end

function Quest30024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3002401"] = self.OnSubFailed3002401
    self.subFailedHandlers["3002402"] = self.OnSubFailed3002402
end

function Quest30024:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 50 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30024***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30024:OnSubStart3002401(arg1)
    print("3002401 start:CreatNPC")
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    if questNpc ~= nil then
        questNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30024:OnSubStart3002402(arg1)
    print("3002402 start:......")
    self:UnCallFunc(self.QuestDestroy)
    local questNpc = self:CreateQuestNpc(arg1, 0, 1)
    local str = "Npc" .. self:GetRandomFactorValue("{QuestNpcID3}")
    print("NPC3 alias is " .. str)
    self:NotifyTo(str, NPCUtil.NpcEventType.HIDESELF, true)
end

function Quest30024:OnSubFinish3002401(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
            arg1:UnCallFunc(arg1.QuestDestroy)
        end)
    end)
end

function Quest30024:OnSubFinish3002402(arg1)
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

function Quest30024:Start()
    print("********Quest30024 Start")
end

function Quest30024:OnDestroy()
    print("********Quest30024 OnDestroy")
end

return Quest30024

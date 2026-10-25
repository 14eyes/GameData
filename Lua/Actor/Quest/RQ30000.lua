require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest30000 = class("Quest30000", QuestActorProxy)
Quest30000.defaultAlias = "Quest30000"
local subIDs = require("Quest/Client/Q30000ClientConfig").SubIDs

function Quest30000:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["3000001"] = self.OnSubStart3000001
    self.subStartHandlers["3000002"] = self.OnSubStart3000002
    self.subStartHandlers["3000003"] = self.OnSubStart3000003
    self.subStartHandlers["3000004"] = self.OnSubStart3000004
    self.subStartHandlers["3000005"] = self.OnSubStart3000005
end

function Quest30000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["3000001"] = self.OnSubFinish3000001
    self.subFinishHandlers["3000002"] = self.OnSubFinish3000002
    self.subFinishHandlers["3000003"] = self.OnSubFinish3000003
    self.subFinishHandlers["3000004"] = self.OnSubFinish3000004
    self.subFinishHandlers["3000005"] = self.OnSubFinish3000005
end

function Quest30000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["3000001"] = self.OnSubFailed3000001
    self.subFailedHandlers["3000002"] = self.OnSubFailed3000002
    self.subFailedHandlers["3000003"] = self.OnSubFailed3000003
    self.subFailedHandlers["3000004"] = self.OnSubFailed3000004
    self.subFailedHandlers["3000005"] = self.OnSubFailed3000005
end

function Quest30000:QuestDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local n = avatarPos.x - pos.x
    local v = avatarPos.y - pos.y
    local n2 = avatarPos.z - pos.z
    if 50 < math.sqrt(n * n + v * v + n2 * n2) then
        self:DestroyQuestNpcActor("{QuestNpcID}", 3)
        if self ~= nil then
            self:FinishQuest(true)
            print("********30000***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30000:OnSubStart3000001(arg1)
    local num = tonumber(self:GetRandomFactorValue("{QuestNpcID}"))
    print(num)
    local randomNpcAlias = self:GetRandomNpcAlias(self:GetRandomFactorValue("{QuestNpcID}"))
    local randomFactorValue = self:GetRandomFactorValue("{QuestRescuePos}")
    local v = tonumber(self:GetRandomFactorValue("{QuestMonsterID}"))
    local num2 = tonumber(self:GetRandomFactorValue("{QuestMonsterNum}"))
    local pos = sceneData:GetDummyPoint(3, randomFactorValue).pos
    local str = "RandomMonster" .. tostring(self.mainQuestID)
    local dummyPoint = sceneData:GetDummyPoint(3, randomFactorValue)
    local questNpcWithPos = self:CreateQuestNpcWithPos(arg1, num, 0, dummyPoint.pos, dummyPoint.rot)
    print("********3000001 start: Spawn " .. randomNpcAlias .. "******" .. randomFactorValue)
    if questNpcWithPos ~= nil then
        questNpcWithPos:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30000:OnSubStart3000002(arg1)
    local randomNpcAlias = self:GetRandomNpcAlias(self:GetRandomFactorValue("{QuestNpcID}"))
    local questNpcActor = self:GetQuestNpcActor(randomNpcAlias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStateTrigger()
        questNpcActor:Standby()
        print("********3000002Start:****NpcStandUp*****" .. randomNpcAlias)
    end

    self:UnCallFunc(self.QuestDestroy)
    print("********30000***DestroyUncalled****")
end

function Quest30000:OnSubFinish3000004(arg1)
    print("********30000***DestroyNPC****")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30000:OnSubFailed3000004(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor("{QuestNpcID}", 3)
        end)
    end)
end

function Quest30000:Start()
    print("********Quest30000 Start")
end

function Quest30000:OnDestroy()
    print("********Quest30000 OnDestroy")
end

return Quest30000

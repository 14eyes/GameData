require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest991 = class("Quest991", QuestActorProxy)
Quest991.defaultAlias = "Quest991"
local Q991ClientConfig = require("Quest/Client/Q991ClientConfig")

util.do_require("Quest/Share/Q991ShareConfig")
local v = AmborData
local subIDs = Q991ClientConfig.SubIDs

function Quest991:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["99101"] = self.OnSubStart99101
    self.subStartHandlers["99102"] = self.OnSubStart99102
    self.subStartHandlers["99103"] = self.OnSubStart99103
end

function Quest991:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["99101"] = self.OnSubFinish99101
    self.subFinishHandlers["99102"] = self.OnSubFinish99102
    self.subFinishHandlers["99103"] = self.OnSubFinish99103
end

function Quest991:OnSubStart99101(arg1)
    print("99101 start:...")
    self:CreateQuestNpc(arg1, v.AmborID)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 2)
    self:SetQuestVar(arg1.QuestConfigId, 2, 100)
    self:SetQuestVarWithInterval(arg1.QuestConfigId, 1, 5, 15)
end

function Quest991:OnSubStart99102(arg1)
    print("99102 start:...")
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 2)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, v.AmborID)
    end)
end

function Quest991:OnSubStart99103(arg1)
    print("99103 start:...")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, v.AmborID)
    end)
end

function Quest991:OnSubFinish99103(arg1)
    print("OnFinished 99103")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(v.Ambor)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest991:Start() end
function Quest991:OnDestroy() end
return Quest991

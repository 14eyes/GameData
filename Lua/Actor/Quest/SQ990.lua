require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest990 = class("Quest990", QuestActorProxy)
Quest990.defaultAlias = "Quest990"
local clientData
local shareData

function Quest990:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
end

function Quest990:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["99001"] = self.OnSubStart99001
    self.subStartHandlers["99002"] = self.OnSubStart99002
    self.subStartHandlers["99003"] = self.OnSubStart99003
    self.subStartHandlers["99004"] = self.OnSubStart99004
    self.subStartHandlers["99005"] = self.OnSubStart99005
    self.subStartHandlers["99006"] = self.OnSubStart99006
    self.subStartHandlers["99007"] = self.OnSubStart99007
end

function Quest990:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["99001"] = self.OnSubFinish99001
    self.subFinishHandlers["99002"] = self.OnSubFinish99002
    self.subFinishHandlers["99003"] = self.OnSubFinish99003
    self.subFinishHandlers["99004"] = self.OnSubFinish99004
    self.subFinishHandlers["99005"] = self.OnSubFinish99005
    self.subFinishHandlers["99006"] = self.OnSubFinish99006
    self.subFinishHandlers["99007"] = self.OnSubFinish99007
end

function Quest990:OnSubStart99001(arg1)
    print("99001 start:...")
    self:CreateQuestNpc(arg1, 1005)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 2)
    self:SetQuestVar(arg1.QuestConfigId, 2, 100)
    self:SetQuestVarWithInterval(arg1.QuestConfigId, 1, 5, 15)
end

function Quest990:OnSubStart99002(arg1)
    print("99001 start:...")
    self:CreateQuestNpc(arg1, 1001)
end

function Quest990:OnSubStart99004(arg1)
    print("99001 start:...")
    self:CreateQuestNpc(arg1, 1001)
end

function Quest990:OnSubStart99005(arg1)
    print("99001 start:...")
    self:CreateQuestNpc_MaleCond(arg1, 1026, 1025)
end

function Quest990:OnSubFinish99001(arg1)
    print("OnFinished 99001")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest990:OnSubStart99007(arg1)
    print("99001 start:...")
    self:CreateQuestNpc(arg1, 1008)
end

function Quest990:Start() end
function Quest990:OnDestroy() end
return Quest990

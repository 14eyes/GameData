require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1007 = class("Quest1007", QuestActorProxy)
Quest1007.defaultAlias = "Quest1007"
local Q1007ClientConfig = require("Quest/Client/Q1007ClientConfig")

local subIDs = Q1007ClientConfig.SubIDs
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1007:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["100701"] = self.OnSubStart100701
    self.subStartHandlers["100702"] = self.OnSubStart100702
    self.subStartHandlers["100703"] = self.OnSubStart100703
end

function Quest1007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["100701"] = self.OnSubFinish100701
    self.subFinishHandlers["100702"] = self.OnSubFinish100702
    self.subFinishHandlers["100703"] = self.OnSubFinish100703
end

function Quest1007:OnSubStart100701(arg1)
    print("100701 start:...")
    self:CreateQuestNpc(arg1, 2003013)
    self:CreateQuestNpc(arg1, 2003014)
end

function Quest1007:OnSubStart100702(arg1)
    print("100702 start:...")
    self:TransmitPlayerById(arg1, 1, function(arg1)
        local actor = actorMgr:GetActor(Q1007ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 100702)
        end
    end)
end

function Quest1007:OnSubStart100703(arg1)
    print("100703 start:...")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Npc2003013")
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Npc2003014")
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)

    local actor = actorMgr:GetActor(Q1007ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100703)
    end
end

function Quest1007:OnSubFinish100701(arg1)
    print("OnFinished 100701")
end

function Quest1007:OnSubFinish100702(arg1)
    print("OnFinished 100702")
end

function Quest1007:OnSubFinish100703(arg1)
    print("OnFinished 100703")
end

function Quest1007:Start() end
function Quest1007:OnDestroy() end
return Quest1007

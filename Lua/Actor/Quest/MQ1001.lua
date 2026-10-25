require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1001 = class("Quest1001", QuestActorProxy)
Quest1001.defaultAlias = "Quest1001"
local Q1001ClientConfig = require("Quest/Client/Q1001ClientConfig")

local subIDs = Q1001ClientConfig.SubIDs
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1001:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["100101"] = self.OnSubStart100101
    self.subStartHandlers["100102"] = self.OnSubStart100102
    self.subStartHandlers["100103"] = self.OnSubStart100103
end

function Quest1001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["100101"] = self.OnSubFinish100101
    self.subFinishHandlers["100102"] = self.OnSubFinish100102
    self.subFinishHandlers["100103"] = self.OnSubFinish100103
end

function Quest1001:OnSubStart100101(arg1)
    print("100101 start:...")
end

function Quest1001:OnSubStart100102(arg1)
    print("100102 start:...")
    self:TransmitPlayerById(arg1, 1, function(arg1)
        local actor = actorMgr:GetActor(Q1001ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 100102)
        end
    end)
end

function Quest1001:OnSubStart100103(arg1)
    print("100103 start:...")
    local actor = actorMgr:GetActor(Q1001ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100103)
    end
end

function Quest1001:OnSubFinish100101(arg1)
    print("OnFinished 100101")
end

function Quest1001:OnSubFinish100102(arg1)
    print("OnFinished 100102")
end

function Quest1001:OnSubFinish100103(arg1)
    print("OnFinished 100103")
end

function Quest1001:Start() end
function Quest1001:OnDestroy() end
return Quest1001

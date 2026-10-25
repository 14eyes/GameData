require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20032 = class("Quest20032", QuestActorProxy)
Quest20032.defaultAlias = "Quest20032"
local Q20032ClientConfig = require("Quest/Client/Q20032ClientConfig")

function Quest20032:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2003201"] = self.OnSubStart2003201
    self.subStartHandlers["2003202"] = self.OnSubStart2003202
end

function Quest20032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2003201"] = self.OnSubFinish2003201
    self.subFinishHandlers["2003202"] = self.OnSubFinish2003202
end

function Quest20032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2003201"] = self.OnSubFailed2003201
    self.subFailedHandlers["2003202"] = self.OnSubFailed2003202
end

function Quest20032:OnSubStart2003201(arg1)
    local actor = actorMgr:GetActor(Q20032ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest20032:OnSubFailed2003201(arg1)
    print("2003201 failed")
end

function Quest20032:OnSubStart2003202(arg1)
    local actor = actorMgr:GetActor(Q20032ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest20032:Start() end
function Quest20032:OnDestroy() end
return Quest20032

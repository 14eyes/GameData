require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20064 = class("Quest20064", QuestActorProxy)
Quest20064.defaultAlias = "Quest20064"
local clientData
local n

function Quest20064:OnDataLoaded()
    clientData = self.clientData
    n = 20064
end

function Quest20064:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2006401"] = self.OnSubStart2006401
end

function Quest20064:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2006401"] = self.OnSubFinish2006401
end

function Quest20064:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2006401"] = self.OnSubFailed2006401
end

function Quest20064:OnSubStart2006401(arg1) end

function Quest20064:OnSubFinish2006401(arg1)
    self:CallDelay(1, function(arg1)
        arg1.uActor:RequestInteraction("Npc1605")
    end)
end

function Quest20064:OnSubFailed2006401(arg1) end
function Quest20064:Start() end
function Quest20064:OnDestroy() end
return Quest20064

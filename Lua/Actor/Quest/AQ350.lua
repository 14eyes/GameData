require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest350 = class("Quest350", QuestActorProxy)
Quest350.defaultAlias = "Quest350"
local Q350ClientConfig = require("Quest/Client/Q350ClientConfig")

function Quest350:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35001"] = self.OnSubStart35001
end

function Quest350:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35001"] = self.OnSubFinish35001
end

function Quest350:OnSubStart35001(arg1)
    print("35001 Start : Creat Limit Region")
    actorMgr:GetActor("LimitRegionGlobal"):UseFreshmeatRegion()
end

function Quest350:OnSubFinish35001(arg1)
    print("35001 Finish : Destroy Limit Region")
    self:ActionSafeCall(function(arg1)
        local actorInternal = actorMgr:GetActorInternal("LimitRegionGlobal")
        if actorInternal == nil then
            return
        end

        actorInternal:FinishLimitRegion()
        actorMgr:UnregisteSubGlobal("LimitRegionGlobal")
    end)
end

function Quest350:Start() end
function Quest350:OnDestroy() end
return Quest350
